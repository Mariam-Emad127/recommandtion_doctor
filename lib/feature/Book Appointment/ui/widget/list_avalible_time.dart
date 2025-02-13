import 'package:flutter/material.dart';

import '../../../../core/ theming/styles.dart';

class ListAvalibleTime extends StatelessWidget {
    ListAvalibleTime({super.key});
  
 final List<String>times=["8:00 AM","8:30 AM","9:00 AM","9:30 AM","10:00 AM","10:30 AM"];

  @override
  Widget build(BuildContext context) {
    return      
            SizedBox(
              height: 210,
              child: GridView.builder(
             
                itemCount: times.length,
                itemBuilder: (BuildContext context, int index) {
                  return  
                  Container(
                    alignment: Alignment.center,
                    // ColorsManager.lightGray
                    decoration: BoxDecoration(color:Colors.grey[300] ,borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text(times[index],style: TextStyles.font14DarkBlueBold ),
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
}