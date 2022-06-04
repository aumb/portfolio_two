import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/widgets/circular_image.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return CircularImage.text('MA');
  }
}
