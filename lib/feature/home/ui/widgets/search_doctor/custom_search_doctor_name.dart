import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recommandtion_doctor/feature/home/controller/cubit/getdoctors_cubit.dart';

import '../../../../../core/ theming/colors.dart';
 
class CustomSearchTextField extends StatelessWidget {
   //Function fun= void(String val)  ;
    final Function(String) onSubmit;
  const CustomSearchTextField({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          SizedBox(
            width: 310.w,
            child: TextField(
              onChanged:onSubmit ,
            // onSubmitted:onSubmit,//(){fun;},
               decoration: InputDecoration(
                 focusedBorder: buildOutlineInputBorder(),
                 enabledBorder: buildOutlineInputBorder(),
                hoverColor: Colors.grey,
                fillColor: ColorsManager.lightGray   ,
                filled: true,
                
                hintText: 'Search',
                prefixIcon: IconButton(
                  onPressed: () {},
                  
                  icon: const Opacity(
                    opacity: .8,
                    child: Icon(
                      Icons.search,
                      //FontAwesomeIcons.magnifyingGlass,
                      size: 22,
                    ),
                  ),
                ),
              ),
            ),
          ),
        
        IconButton(onPressed: (){} , icon: Icon(Icons.filter_list_outlined ))
        ],
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: ColorsManager.lightGray,
      ),
      borderRadius: BorderRadius.circular(
        20,
      ),
    );
  }
}