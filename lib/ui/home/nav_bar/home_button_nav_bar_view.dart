import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:pet_project/ui/style/colors.dart';
import 'package:provider/provider.dart';

import '../home_view.dart';
import 'home_nav_bar_view_model.dart';

@RoutePage()
class HomeButtonNavBarViewPage extends StatelessWidget {
  const HomeButtonNavBarViewPage({super.key});

  final List<Widget> _pages = const [
    HomeViewPage(),
    Center(child: Text("Privacy Policy", style: TextStyle(fontSize: 24))),
    Center(child: Text("Terms & Conditions", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeNavBarViewModel>();

    return Scaffold(
      backgroundColor: ProjectColors.background,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: viewModel.pageController,
        onPageChanged: viewModel.onPageChanged,
        children: _pages,
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 1,
            color: ProjectColors.activeYellowButton,
          ),
          BottomNavigationBar(
            currentIndex: viewModel.currentIndex,
            onTap: viewModel.setPage,
            selectedItemColor: ProjectColors.activeYellowButton,
            unselectedItemColor: ProjectColors.unselectedItemColor,
            backgroundColor: ProjectColors.background,
            selectedFontSize: 18,
            unselectedFontSize: 16,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.privacy_tip),
                label: "Privacy Policy",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.warning),
                label: "Terms",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
