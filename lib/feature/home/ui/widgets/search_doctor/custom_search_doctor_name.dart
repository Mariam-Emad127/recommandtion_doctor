import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recommandtion_doctor/feature/home/ui/widgets/search_doctor/FilterBottomSheet.dart';
import '../../../../../core/ theming/colors.dart';
 
class CustomSearchTextField extends StatelessWidget {
     final Function(String) onChanged;
  const CustomSearchTextField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          SizedBox(
            width: 310.w,
            child: TextField(
              onChanged:onChanged ,
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
        
        IconButton(onPressed: (){

//showFilterBottomSheet(context);

        } , icon: Icon(Icons.filter_list_outlined ))
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


 void showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Make it full height if needed
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: FilterBottomSheet(),
        );
      },
    );
  }


}
