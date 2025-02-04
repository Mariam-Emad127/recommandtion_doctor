import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart';

class RecommenddAppbar extends StatelessWidget {
  final String title;
  const RecommenddAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return     Padding(
          padding: EdgeInsets.all(10),
       
           child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon( Icons.arrow_back_ios_new_sharp),
                    color: Colors.black,
                    onPressed: (){
                      context.pop();
                    },
                  ),
                  Text(
                   title,
                    style: TextStyles.font18DarkBlueBold,
                  ),
                  Icon(Icons.more_horiz, color: Colors.black),
                ],
              ),
       
        












         );
  }
}