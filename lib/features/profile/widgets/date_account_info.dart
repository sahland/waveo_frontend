import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateAccountInfo extends StatelessWidget {
  final String accountRegDate;
  final double width;
  final double height;
  final double dateFontSize;
  final double padding;

  const DateAccountInfo({
    required this.accountRegDate,
    this.width = 345,
    this.height = 80,
    this.dateFontSize = 16,
    this.padding = 12,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const title = 'В числе участников с';
    const titleFontSize = 12.0;
    const sizedBoxHeight = 5.0;

    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(padding),
      ),
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: sizedBoxHeight,
          ),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: titleFontSize,
              color: theme.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: sizedBoxHeight,
          ),
          Text(
            accountRegDate,
            style: GoogleFonts.inter(
              fontSize: dateFontSize,
              color: theme.primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
