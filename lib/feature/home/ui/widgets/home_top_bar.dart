import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart';
import 'package:recommandtion_doctor/core/routing/routes.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/ theming/colors.dart';
import '../../../../core/ theming/styles.dart';

class HomeTopBar extends StatefulWidget {
  HomeTopBar({super.key});

  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> {
  String userName = "Loading...";

  @override
  void initState() {
    super.initState();
    _loadUserName();
  }

  Future<void> _loadUserName() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString("username") ?? "Unknown User";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){   context.pushNamed(Routes.profileScreen);},
              child: Text(
                "Hi,  $userName",
                style: TextStyles.font18DarkBlueBold,
              ),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsManager.moreLighterGray,
          child: SvgPicture.asset(
            'assets/svgs/notifications.svg',
          ),
        )
      ],
    );
  }
}
