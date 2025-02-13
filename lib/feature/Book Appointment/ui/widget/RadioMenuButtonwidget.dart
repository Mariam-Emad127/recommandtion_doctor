import 'package:flutter/material.dart';

import '../../../../core/ theming/styles.dart';

class Radiomenubuttonwidget extends StatefulWidget {
  final String title;
  final String imagePath;
  final int val;
  final int groupValue;
  final ValueChanged<int> onChanged;
  const Radiomenubuttonwidget({
    super.key,
    required this.title,
    required this.imagePath,
    required this.val,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  State<Radiomenubuttonwidget> createState() => _RadiomenubuttonwidgetState();
}

class _RadiomenubuttonwidgetState extends State<Radiomenubuttonwidget> {
   @override
  Widget build(BuildContext context) {
    return RadioMenuButton<int>(
      value: widget.val,
      groupValue: widget.groupValue,
      onChanged: (int? value) {
        widget.onChanged(value!);
 
      },
      child: Row(children: [
        Text(
          widget.title,
          style: TextStyles.font14DarkBlueBold,
        ),
        SizedBox(
          width: 10,
        ),
        Image.asset(
          widget.imagePath,
          height: 45,
        ),
      ]),
    );
  }
}

class RadioButtonWidget extends StatefulWidget {
  final String title;
  final int val;
  final int groupValue;
  final ValueChanged<int> onChanged;
  const RadioButtonWidget(
      {super.key,
      required this.title,
      required this.val,
      required this.groupValue,
      required this.onChanged});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title:Text( widget.title),
      value: widget.val,
      groupValue: widget.groupValue,
      onChanged: (int? value) {
        widget.onChanged(value!);
      },
    );
  }
}
