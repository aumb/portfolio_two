import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/custom_dialog.dart';
import 'package:portfolio_two/presentation/widgets/custom_rich_text.dart';
import 'package:portfolio_two/resources/colors/colors.dart';
import 'package:portfolio_two/resources/text_theme/custom_text_styles.dart';

class WorkDescriptionDialog extends StatelessWidget {
  const WorkDescriptionDialog({
    super.key,
  });

  static Future<void> show(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (context) => const WorkDescriptionDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      content: [
        CustomRichText(
          texts: [
            RichTextNonLink(
              'Monstarlab EMEA',
              textStyle: CustomTextStyles.headline4.copyWith(
                color: context.colors.labelPrimary,
              ),
            ),
            RichTextNonLink(
              ' | ',
              textStyle: CustomTextStyles.headline4.copyWith(
                color: context.colors.accent,
              ),
            ),
            RichTextNonLink(
              'Senior Flutter Engineer I',
              textStyle: CustomTextStyles.headline4.copyWith(
                color: context.colors.labelPrimary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        AppText.body2(
          'August 2019 - Present',
          weight: FontWeight.bold,
          color: context.colors.accent,
        ),
        const SizedBox(height: 4),
        AppText.body2(
          'Remote • Prague, Czech Republic - Houston, Texas',
          color: context.colors.labelPrimary,
        ),
        const Markdown(
          shrinkWrap: true,
          data: '''
Markdown is the **best**!

* It has lists.
* It has [links](https://dart.dev).
* It has _so much more_...
* 

# heading
''',
        ),
      ],
    );
  }
}
