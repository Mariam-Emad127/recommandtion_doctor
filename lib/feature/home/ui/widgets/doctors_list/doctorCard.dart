import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';

class Doctorcard extends StatelessWidget {
  final String name;
  final String specialization;
   final String degree;
  const Doctorcard({super.key, required this.name, required this.specialization, required this.degree});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20), // Image border
          child: SizedBox.fromSize(
            size: Size.fromRadius(48), // Image radius
            child: Image.network(
                "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        SizedBox(
          height: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyles.font16DarkBlueMedium,
              ),
              //SizedBox(height: 5,),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: specialization,
                      style: TextStyles.font12GrayMedium,
                    ),
                    TextSpan(
                      text: '  |',
                      style: TextStyles.font12GrayMedium,
                    ),
                    TextSpan(
                      text: degree,
                      style: TextStyles.font12GrayMedium,
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 5,),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: ' (',
                          style: TextStyles.font12GrayMedium,
                        ),
                        TextSpan(
                          text: '  4,279 reviews ',
                          style: TextStyles.font12GrayMedium,
                        ),
                        TextSpan(
                          text: '  )',
                          style: TextStyles.font12GrayMedium,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
