// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:portfolio_two/bootstrap.dart';
import 'package:portfolio_two/presentation/app/app.dart';

void main() {
  bootstrap(
    (router) => App(
      router: router,
    ),
  );
}
