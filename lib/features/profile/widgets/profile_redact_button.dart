import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileRedactButton extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final VoidCallback? onPressed;

  const ProfileRedactButton({
    this.height = 20,
    this.width = 340,
    this.borderRadius = 6,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const fontSize = 12.0;
    const buttonTitle = 'Редактировать профиль';

    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme.primaryColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        fixedSize: WidgetStateProperty.all(Size(width, height)),
      ),
      child: Text(
        buttonTitle,
        style: GoogleFonts.inter(
          color: theme.scaffoldBackgroundColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
