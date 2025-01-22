import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/%20theming/colors.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';

class TextEditingwidget extends StatefulWidget {
  final String initialText;
 // final String text;
  const TextEditingwidget({super.key, required this.initialText,     });

  @override
  State<TextEditingwidget> createState() => _TextEditingwidgetState();
}

class _TextEditingwidgetState extends State<TextEditingwidget> {
    final TextEditingController _controller = TextEditingController();
   bool _isEditing = false;
   String initialText = "Initial Text";

  @override
  Widget build(BuildContext context) {
    return 
    /*
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isEditing = true; // Enable editing when tapped
                    });
                  },
                  child: _isEditing
                      ? TextField(
                          controller: _controller,
                          autofocus:
                              true, // Automatically focus on the TextField
                          onSubmitted: (value) {
                            setState(() {
                              _isEditing = false; // Exit edit mode on submit
                            });
                          },
                          onEditingComplete: () {
                            setState(() {
                              _isEditing =
                                  false; // Exit edit mode on editing complete
                            });
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Enter text",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        )
                     
                        : InkWell(
    onTap: () {
      setState(() {
        _isEditing = true;
      });
    },
    child: Text(
  initialText,
  style: TextStyle(
    color: Colors.black,
    fontSize: 18.0,
  ),
 )
                )
                );
*/
               
  GestureDetector(
      onTap: () {
        setState(() {
          _isEditing = true;
        });
      },
      child: _isEditing
          ? TextField(
            
              controller: _controller,
              decoration: InputDecoration(
                fillColor: Colors.grey,
                hintText: 'Enter text here',
                border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20),
      
      
                )
              ),
              onSubmitted: (_) {
                setState(() {
                  initialText = _controller.text;
                  _isEditing = false;
                });
              },
            )
          : Container(
            width: double.infinity,
            height: 60,
              margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
           border: Border.all(color: ColorsManager.lightGray)
               ),
            child: Text(
                widget.initialText,
                style: TextStyles.font16DarkBlueMedium,
              ),
          )
  );             
  }
}