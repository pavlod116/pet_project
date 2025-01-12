import 'package:flutter/material.dart';
import 'package:pet_project/ui/home/nav_bar/home_nav_bar_view_model.dart';
import 'package:pet_project/ui/style/theme.dart';
import 'package:provider/provider.dart';

import '../widgets/custom_app_bar_with_policy_and_teams/custom_app_bar_with_policy_and_teams.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final homeViewModel = context.watch<HomeNavBarViewModel>();
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: mediaQuery.viewPadding.top),
      child: Column(
        children: [
          CustomAppBarWithPolicyAndTeams(
            onTap: () => homeViewModel.setPage(0),
            text: 'Privacy Policy',
          ),
          gap24,
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What personal information is collected from you, and how we use it.',
                    style: textStyleTextWithPolicy,
                    textAlign: TextAlign.start,
                  ),
                  gap10,
                  Text(
                    '''In general, credit.org uses the information collected on our web site to help us understand who uses our web site and how it is used, to perform statistical analysis of user behavior or to evaluate and improve our online services, and to personalize your online experience.  If you enter your email address, name and phone number, and ask for more information or send us an email with questions or comments, we may use your information to send you a welcoming email, electronic newsletters, contact you about services, ''',
                    style: textStyleDescriptionWithPolicy,
                    textAlign: TextAlign.start,
                  ),
                  gap24,
                  Text(
                    'What personal information is collected from you, and how we use it.',
                    style: textStyleTextWithPolicy,
                    textAlign: TextAlign.start,
                  ),
                  gap10,
                  Text(
                    '''In general, credit.org uses the information collected on our web site to help us understand who uses our web site and how it is used, to perform statistical analysis of user behavior or to evaluate and improve our online services, and to personalize your online experience.  If you enter your email address, name and phone number, and ask for more information or send us an email with questions or comments, we may use your information to send you a welcoming email, electronic newsletters, contact you about services, ''',
                    style: textStyleDescriptionWithPolicy,
                    textAlign: TextAlign.start,
                  ),
                  gap24,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
