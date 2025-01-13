import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:waveo_frontend/features/profile/widgets/widgets.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    const toolbarHeight = 70.0;
    const elevation = 80.0;

    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            centerTitle: false,
            floating: true,
            snap: true,
            toolbarHeight: toolbarHeight,
            elevation: elevation,
            backgroundColor: theme.scaffoldBackgroundColor,
            surfaceTintColor: theme.scaffoldBackgroundColor,
            title: Row(
              children: [
                SettingsButton(),
                ThemeButton(),
              ],
            )
          ),
          SliverToBoxAdapter(
            child: UserInfo(username: 'SaHland', userID: "#sahland",),
          )
        ],
      ),
    );
  }
}
