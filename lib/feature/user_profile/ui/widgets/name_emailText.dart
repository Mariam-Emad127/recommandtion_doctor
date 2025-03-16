import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recommandtion_doctor/core/%20theming/styles.dart';
import 'package:recommandtion_doctor/feature/user_profile/controller/cubit/get_userprofile_data_cubit.dart';
  
class NameEmailtext extends StatefulWidget {
  //final String userName;
  //final String email;
  const NameEmailtext({super.key,
   //required this.userName, required this.email
   });

  @override
  State<NameEmailtext> createState() => _NameEmailtextState();
}

class _NameEmailtextState extends State<NameEmailtext> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 133, top: 60),
      child: BlocBuilder<GetUserprofileDataCubit, GetUserprofileDataState>(

        buildWhen: (previous, current) =>
                 current is Loading || current is Success || current is Error,
      
        builder: (context, state) {
          return state.maybeWhen(
            loading: (){
              return CircularProgressIndicator();
            },
            
            error: () {
              return Text( "ERROR");
            },
            
         success: (profileREsponse){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${profileREsponse.userData?.first.name}",
                //widget.userName,
                // "UserName",
                style: TextStyles.font14DarkBlueBold,
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
               "${profileREsponse.userData?.first.email}",
              //  widget.email,
                // "UserName@gmail.com",
                style: TextStyles.font12GrayMedium,
              ),
            ],
          );
    },

            orElse:()=>  Text( "555555555555")  );
 
        },
      ),
    );
  }
}
