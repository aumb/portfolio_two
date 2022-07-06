import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:portfolio_two/domain/models/work/work.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/custom_dialog.dart';
import 'package:portfolio_two/presentation/widgets/custom_rich_text.dart';
import 'package:portfolio_two/resources/colors/colors.dart';
import 'package:portfolio_two/resources/extensions/date_time_extensions.dart';
import 'package:portfolio_two/resources/text_theme/custom_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkDescriptionDialog extends StatelessWidget {
  const WorkDescriptionDialog({
    super.key,
    required this.work,
  });

  final Work work;

  static Future<void> show(
    BuildContext context,
    Work work,
  ) {
    return showDialog<void>(
      context: context,
      builder: (context) => WorkDescriptionDialog(
        work: work,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      content: [
        CustomRichText(
          texts: [
            RichTextNonLink(
              work.companyName,
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
              work.title,
              textStyle: CustomTextStyles.headline4.copyWith(
                color: context.colors.labelPrimary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        AppText.body2(
          '${work.startDate.monthYearFormat} - '
          '${work.endDate?.monthYearFormat ?? 'Present'}',
          weight: FontWeight.bold,
          color: context.colors.accent,
        ),
        const SizedBox(height: 4),
        AppText.body2(
          work.location,
          color: context.colors.labelPrimary,
        ),
        const SizedBox(height: 16),
        MarkdownBody(
          data: work.description,
          onTapLink: (_, href, __) => launchUrl(Uri.parse(href ?? '')),
        ),
      ],
    );
  }
}
