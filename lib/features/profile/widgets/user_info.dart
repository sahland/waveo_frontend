import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waveo_frontend/features/profile/widgets/widgets.dart';

class UserInfo extends StatefulWidget {
  final String username;
  final String userID;
  final String userDateReg;

  final double width;
  final double height;
  final double borderRadius;
  final VoidCallback? onLeavePressed;

  const UserInfo(
      {required this.username,
      required this.userID,
      required this.userDateReg,
      this.width = 400,
      this.height = 400,
      this.borderRadius = 10,
      this.onLeavePressed,
      super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    const usernameFontSize = 22.0;
    const userIdFontSize = 16.0;
    const topSizedBoxHeight = 60.0;
    const middleSizedBoxHeight = 55.0;
    const lowSizedBoxHeight = 25.0;
    const sizedBoxHeight = 20.0;

    final theme = Theme.of(context);

    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(
              height: topSizedBoxHeight,
            ),
            Center(
              child: Container(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(widget.borderRadius),
                  ),
                  color: theme.cardColor,
                ),
                child: Column(
                  children: [
                    _userMainInfo(
                      middleSizedBoxHeight,
                      theme,
                      usernameFontSize,
                      userIdFontSize,
                    ),
                    ProfileRedactButton(),
                    const SizedBox(
                      height: sizedBoxHeight,
                    ),
                    DateAccountInfo(
                      accountRegDate: widget.userDateReg,
                    ),
                    const SizedBox(
                      height: lowSizedBoxHeight,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        _userAvatar(theme, '')
      ],
    );
  }

  Align _userMainInfo(
    double middleSizedBoxHeight,
    ThemeData theme,
    double usernameFontSize,
    double userIdFontSize, [
    double xAlign = 0.83,
    double yAlign = 0,
  ]) {
    return Align(
      alignment: Alignment(xAlign, yAlign),
      child: Column(
        children: [
          SizedBox(
            height: middleSizedBoxHeight,
          ),
          _infoText(
            theme,
            widget.username,
            usernameFontSize,
          ),
          _infoText(
            theme,
            widget.userID,
            userIdFontSize,
          ),
        ],
      ),
    );
  }

  Column _userAvatar(
    ThemeData theme,
    String imagePath, [
    double avatarRadius = 45,
    double outlineBorder = 8,
    double xAlign = 0.8,
    double yAlign = 0,
  ]) {
    const sizedBoxHeight = 10.0;

    return Column(
      children: [
        const SizedBox(height: sizedBoxHeight),
        Align(
          alignment: Alignment(xAlign, yAlign),
          child: Container(
            padding: EdgeInsets.all(outlineBorder),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.cardColor,
            ),
            child: CircleAvatar(
              radius: avatarRadius,
              backgroundImage: AssetImage(
                imagePath,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Text _infoText(ThemeData theme, String text, double fontSize) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.inter(
        color: theme.primaryColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
