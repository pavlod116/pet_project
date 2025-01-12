import 'package:flutter/material.dart';
import 'package:pet_project/ui/style/colors.dart';

const _textStyleAppBar = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
  color: ProjectColors.white,
);

class CustomAppBarWithPolicyAndTeams extends StatelessWidget {
  final Function() onTap;
  final String text;

  const CustomAppBarWithPolicyAndTeams({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: () => onTap(),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Icon(Icons.arrow_back_ios_new, color: ProjectColors.white, size: 20),
          ),
        ),
        Center(
          child: Text(text, style: _textStyleAppBar),
        ),
      ],
    );
  }
}
