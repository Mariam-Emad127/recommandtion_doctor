import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/%20theming/colors.dart';
import 'package:recommandtion_doctor/core/helper/extensions.dart';
import 'package:recommandtion_doctor/feature/Book%20Appointment/ui/widget/list_step_circle.dart';
import '../../../core/ theming/styles.dart';
import '../../../core/routing/routes.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../home/ui/widgets/recommendd_appbar.dart';

class PamentOptionScreen extends StatefulWidget {
  const PamentOptionScreen({super.key});

  @override
  State<PamentOptionScreen> createState() => _PamentOptionScreenState();
}

class _PamentOptionScreenState extends State<PamentOptionScreen> {
   String selectedPayment = "Credit Card";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        
        padding: const EdgeInsets.all(10),
        child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
              RecommenddAppbar(title: "Bookappointment"),
              ListStepCircle(
                backgroundColorDate_Time: ColorsManager.green,
                backgroundColorPayment: Colors.blue,
                backgroundColorSummary: Colors.grey[300],
              ),
              
              
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Payment Option",
                      style: TextStyles.font18DarkBlueBold,
                    ),
                  ),
              
              SizedBox(
                height: 550,
                child: ListView(
                  children: [
                    // Credit Card with sub-options
                    ExpansionTile(
                      title: Row(
                        children: [
                          Radio(
                            value: "Credit Card",
                            groupValue: selectedPayment,
                            onChanged: (value) {
                              setState(() {
                                selectedPayment = value.toString();
                              });
                            },
                          ),
                          Text(
                            "Credit Card",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      children: [
                        buildPaymentOption(
                            "Master Card", "assets/images/mastercard.png"),
                        buildPaymentOption("American Express",
                            "assets/images/Group 1000004778.png"),
                        buildPaymentOption(
                            "Capital One", "assets/images/Group 1000004780.png"),
                        buildPaymentOption(
                            "Barclays", "assets/images/Group 1000004781.png"),
                      ],
                    ),
                      
                    // Bank Transfer
                    buildRadioTile("Bank Transfer"),
                      
                    // PayPal
                    buildRadioTile("Paypal"),
                  ],
                ),
              ),
              
                    AppTextButton(
                      buttonText: 'Continue',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {context.pushNamed(Routes.paymentSummaryScreen  );},
                    )
                        ],
                      ),
            )),
      ),
    );
  }

  Widget buildRadioTile(String title) {
    return RadioListTile(
      title: Text(title),
      value: title,
      groupValue: selectedPayment,
      onChanged: (value) {
        setState(() {
          selectedPayment = value.toString();
        });
      },
    );
  }

  Widget buildPaymentOption(String title, String imagePath) {
    return ListTile(
      leading: Image.asset(imagePath, width: 40, height: 40),
      title: Text(title),
      onTap: () {
        setState(() {
          selectedPayment = title;
        });
      },
    );
  }
}
