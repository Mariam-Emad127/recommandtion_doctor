import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';

class NameEmailtext extends StatefulWidget {
  const NameEmailtext({super.key});

  @override
  State<NameEmailtext> createState() => _NameEmailtextState();
}

class _NameEmailtextState extends State<NameEmailtext> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.only(left: 133, top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "UserName",
                        style: TextStyles.font14DarkBlueBold,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "UserName@gmail.com",
                        style: TextStyles.font12GrayMedium,
                      ),
                    ],
                  ),
                );
             
  }
}