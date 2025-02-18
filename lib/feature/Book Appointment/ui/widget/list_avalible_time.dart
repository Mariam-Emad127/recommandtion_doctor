import 'package:flutter/material.dart';
import 'package:recommandtion_doctor/core/helper/shared_pref_helper.dart';

import '../../../../core/ theming/styles.dart';

class ListAvalibleTime extends StatefulWidget {
    ListAvalibleTime({super.key});

  @override
  State<ListAvalibleTime> createState() => _ListAvalibleTimeState();
}

class _ListAvalibleTimeState extends State<ListAvalibleTime> {
 final List<String>times=["8:00","8:30","9:00","9:30","10:00","10:30"];

int selecteditem=0;

  @override
  Widget build(BuildContext context) {
    return      
            SizedBox(
              height: 210,
              child: GridView.builder(
             
                itemCount: times.length,
                itemBuilder: (BuildContext context, int index) {
                  bool s=selecteditem==index;
                  return  
                  InkWell(
                    onTap: (){
 setState(() {
                         selecteditem = index;

   saveDate("${times[index]}") ;
 });

                   
               

                    },
                    child: Container(
                      alignment: Alignment.center,
                      // ColorsManager.lightGray
                      decoration: BoxDecoration(color:s?Colors.blue :  Colors.grey[300] ,borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text(times[index],style: TextStyles.font14DarkBlueBold ),
                    ),
                  );
               
                  }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 items per row
              childAspectRatio: 3, // Adjust height
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
              
              ),
            );
  }

  Future<void> saveDate(String time) async {
    await SharedPrefHelper.setData( "time", time);
   }
}