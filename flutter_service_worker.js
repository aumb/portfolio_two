'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "favicon.png": "2eb55612b739692ded28b12366b5b9be",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"index.html": "a57f1431c34650d7241fc119fb3ba4ba",
"/": "a57f1431c34650d7241fc119fb3ba4ba",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"icons/favicon.png": "2eb55612b739692ded28b12366b5b9be",
"icons/Icon-512.png": "433c8f14f738e49e1871cb9395bdf2ca",
"icons/Icon-192.png": "8d45619aed99fefbb3a52d25b758caec",
"manifest.json": "935aa0a8a2a6fb97c1dcca475e69c7b6",
"version.json": "ac8284250500389f224345fcf4a2700d",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/AssetManifest.json": "10f6c898278a50fb19efcb2dadb87e8b",
"assets/assets/images/me.jpeg": "4f8cd7cb3606a2de326fa783df3b72a7",
"assets/assets/images/rick-and-morty.jpg": "e189c458636857f9fcc93a59576361cc",
"assets/assets/images/layer.webp": "8042059af22f30ce57acbb7ba908efe2",
"assets/assets/images/mason-templates.png": "7e10e9a6177c4c2045e0490d3785eb95",
"assets/assets/images/monstarlab.png": "05c1952f19af576c51750a619f95b616",
"assets/assets/images/marine-watch.jpg": "2037a0958bc981fa2e4af40aaec08eb2",
"assets/assets/images/illustration.png": "4fce4d861e4344e95ece534ddf3bfd4a",
"assets/assets/images/cocoon-creations.png": "0aff9f01339c8ba3d632a805c6860b0f",
"assets/assets/images/inbound-horizons.png": "d320d61677f32df1f2850fb94ad7d947",
"assets/assets/images/top-stories.jpg": "c10868dd1072bb7748ac7a11774d1c7e",
"assets/assets/icons/mail.svg": "cf1e77d1c90854150ea39afd3107f97c",
"assets/assets/icons/linkedin.svg": "781d1a07975d41923fb8ff843999e99e",
"assets/assets/icons/tools.svg": "85007c89b53facb5c7b6e592cfd8f28d",
"assets/assets/icons/frameworks.svg": "01d5d2037b8990acfc079e0e1b039edf",
"assets/assets/icons/facebook.svg": "ffc3b71698aedacb87eb2159b74524be",
"assets/assets/icons/github.svg": "0fa3d1ea345ed0781f6eec443a96f3e4",
"assets/assets/icons/languages.svg": "c9694b54d5c28c409b04371b5e0a3151",
"assets/assets/icons/instagram.svg": "926df2d9f8d3d4bcc0966c642e846029",
"assets/NOTICES": "8344bd8f423e1688a4461c4a8545041d",
"main.dart.js": "ec74560b8ed47ff9f5321533b51ff445"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
