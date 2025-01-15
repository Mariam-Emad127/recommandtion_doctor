import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
 
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/ theming/colors.dart';
import '../../../../core/ theming/styles.dart';

class HomeTopBar extends StatefulWidget {
  HomeTopBar({super.key});

  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> {
    String userName = "Loading...";

  @override
  void initState() {
    super.initState();
    _loadUserName();
  }


  Future<void> _loadUserName() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString("username") ?? "Unknown User";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
Text( "Hi,  $userName",  style: TextStyles.font18DarkBlueBold,),

            /*
            BlocBuilder<LoginCubit, LoginState>(
              //  buildWhen: (previous, current) =>
                //    current is LoginSuccess || current is LoginError,
                builder:  (context,state){
                  //return state.maybeWhen(
 
                  //  loginSuccess: ( name) {
                      /*
                      var name = BlocProvider<LoginCubit>(
                          create: (BuildContext context) => getIt<LoginCubit>()
                            ..loginResponse?.loginUserData?.userName)??"5555555555555";
*/
if(state is LoginSuccess){
  print(state.name);
                      return Text(
                      state.name.toString(),
                        style: TextStyles.font12GrayRegular,
                      );
}
else if(state is LoginError){ return  Text(state.apiErrorModel.message ?? ""); }
                   else{return  Text( "lllllllllllllll");}
                    },


                    /*
                    loginError: (apiErrors) {
                      return SizedBox(
                        child: Text(apiErrors.message ?? ""),
                      );
                    },
                  
                
                orElse: () { return  Text( "lllllllllllllll"); },

                 
            );
            }
            */
            ),
            Text(
              'How Are you Today?',
              style: TextStyles.font12GrayRegular,
            ),
            */
            
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsManager.moreLighterGray,
          child: SvgPicture.asset(
            'assets/svgs/notifications.svg',
          ),
        )
      ],
    );
  }
}
