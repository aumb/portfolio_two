import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.texts,
    this.textAlign = TextAlign.start,
  });

  ///Input the texts in order use [RichTextLink] for a hyperlink text
  ///use [RichTextNonLink] for normal texts
  final List<RichTextStrings> texts;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        children: _generateTexts(context),
      ),
    );
  }

  List<InlineSpan> _generateTexts(BuildContext context) {
    final spans = <InlineSpan>[];

    for (final text in texts) {
      if (text is RichTextLink) {
        spans.add(
          TextSpan(
            text: text.text,
            style: text.textStyle,
            recognizer: TapGestureRecognizer()..onTap = text.onPressed,
          ),
        );
      } else {
        spans.add(
          TextSpan(text: text.text, style: text.textStyle),
        );
      }
    }

    return spans;
  }
}

abstract class RichTextStrings {
  RichTextStrings(
    this.text, {
    this.textStyle,
  });

  final String text;
  final TextStyle? textStyle;
}

class RichTextLink extends RichTextStrings {
  RichTextLink(
    super.text, {
    super.textStyle,
    required this.onPressed,
  });

  final VoidCallback onPressed;
}

class RichTextNonLink extends RichTextStrings {
  RichTextNonLink(
    super.text, {
    super.textStyle,
  });
}
