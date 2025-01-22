import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';

class NameEmailtext extends StatefulWidget {
  final String userName;
  final String email;
  const NameEmailtext({super.key, required this.userName, required this.email});

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
                       widget.userName,
                       // "UserName",
                        style: TextStyles.font14DarkBlueBold,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                       widget.email,
                       // "UserName@gmail.com",
                        style: TextStyles.font12GrayMedium,
                      ),
                    ],
                  ),
                );
             
  }
}