import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:waveo_frontend/router/router.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    const duration = 250;

    return AutoTabsRouter(
      duration: const Duration(
        microseconds: duration,
      ),
      routes: [
        MainInformationRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: Container(
            margin: const EdgeInsets.only(bottom: 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              boxShadow: [
                BoxShadow(
                  color: theme.dialogBackgroundColor,
                  blurRadius: 0,
                  offset: const Offset(0, 30),
                ),
              ],
            ),
            child: ClipRRect(
              //borderRadius: BorderRadius.circular(16),
              child: BottomNavigationBar(
                onTap: (index) => _openPage(index, tabsRouter),
                unselectedItemColor: theme.dialogBackgroundColor,
                currentIndex: tabsRouter.activeIndex,
                backgroundColor: theme.dialogBackgroundColor,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                enableFeedback: false,
                type: BottomNavigationBarType.fixed,
                items: [
                  _buildNavBarItem(
                      theme, './assets/icons/main.svg', 0, tabsRouter),
                  _buildNavBarItem(
                      theme, './assets/icons/profile.svg', 1, tabsRouter),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _buildNavBarItem(
    ThemeData theme,
    String path,
    int index,
    TabsRouter tabsRouter,
  ) {
    return BottomNavigationBarItem(
        icon: GestureDetector(
          onTap: () => _openPage(index, tabsRouter),
          child: SvgPicture.asset(
            path,
            width: 22,
            height: 22,
            colorFilter: ColorFilter.mode(
                theme.scaffoldBackgroundColor, BlendMode.srcIn),
          ),
        ),
        activeIcon: SvgPicture.asset(
          path,
          width: 26,
          height: 26,
          colorFilter: ColorFilter.mode(theme.primaryColor, BlendMode.srcIn),
        ),
        label: '');
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
