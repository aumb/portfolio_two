import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/resources/colors/colors.dart';

const _defaultSize = 150.0;

class CircularImage extends StatelessWidget {
  const CircularImage._({
    super.key,
    this.size = _defaultSize,
    this.image,
    this.initials,
  });

  factory CircularImage.text(
    String initials, {
    Key? key,
    double size = _defaultSize,
  }) {
    return CircularImage._(
      key: key,
      initials: initials,
      size: size,
    );
  }

  factory CircularImage.image(
    ImageProvider image, {
    Key? key,
    double size = _defaultSize,
  }) {
    return CircularImage._(
      key: key,
      image: image,
      size: size,
    );
  }

  final double size;
  final String? initials;
  final ImageProvider? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: context.colors.card,
        border: Border.all(
          color: image != null ? context.colors.accent : Colors.white30,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
          ),
        ],
        shape: BoxShape.circle,
        image: image != null
            ? DecorationImage(
                image: image!,
              )
            : null,
      ),
      child: initials != null
          ? Align(
              child: AppText.body2(
                initials!,
                fontSize: size * .20,
                letterSpacing: 1,
              ),
            )
          : null,
    );
  }
}
