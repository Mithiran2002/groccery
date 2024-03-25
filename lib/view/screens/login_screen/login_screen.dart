import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';
import '../../../model/auth_login_model.dart';
import 'package:groccery_app/utils/constants.dart';
import 'package:groccery_app/service/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:groccery_app/view/widget/custom_button.dart';
import 'package:groccery_app/view/widget/inputform_field.dart';
import 'package:groccery_app/view/screens/dashboard/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userCtr = TextEditingController(text: 'kminchelle');
  TextEditingController passCtr = TextEditingController(text: '0lelplR');
  Login? result;
  Future<Login?> authLogin(String userName, String password) async {
    try {
      Map<String, dynamic> _response =
          await ApiService.post(slug: ApiConstants.AUTH_ENDPOINT, data: {
        "username": userName,
        "password": password,
      });
      setState(() {
        result = Login.fromJson(_response);
      });
      return result;
    } catch (e) {}
    return result;
  }

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Login",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 35.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(
                Icons.login,
                size: 70.sp,
                color: Colors.black,
              ),
              Gap(10.h),
              InputFormField(
                onValidate: (value) {
                  if (value!.isNotEmpty) {
                    logger.e(userCtr.value.text);
                  } else {
                    return "username is requied";
                  }
                },
                controller: userCtr,
                title: "UserName",
              ),
              Gap(3.h),
              InputFormField(
                onValidate: (value) {
                  if (value!.isNotEmpty) {
                    logger.e(passCtr.value.text);
                  } else {
                    return "password is required";
                  }
                },
                controller: passCtr,
                title: "password",
              ),
              Gap(5.h),
              isLoading == true
                  ?   CircularProgressIndicator(
                      color: Colors.red,
                    )
                  : CustomButton(
                      text: "Login",
                      onTab: () async {
                        try {
                          final SharedPreferences prefs =
                              await SharedPreferences.getInstance();

                          if (userCtr.text.isNotEmpty &&
                              passCtr.text.isNotEmpty) {
                            Login? _result =
                                await authLogin(userCtr.text, passCtr.text);
                            if (_result != null) {
                              logger.e(_result.toJson());
                              await prefs.setInt('userId', _result.id);
                              await prefs.setString(
                                  'userName', _result.username);
                              await prefs.setString('userEmail', _result.email);
                              await prefs.setString('userImage', _result.image);
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const DashBoardScreen(0);
                              }));
                              await prefs.setBool('isLoggedin', true);

                              BotToast.showText(
                                text: "Successfully Loggedin",
                                contentColor: Colors.green,
                                textStyle: TextStyle(color: Colors.white),
                              );
                            }
                          } else {
                            BotToast.showText(
                                contentColor: Colors.red,
                                text: "Password & Email is Required");
                            TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w400);
                          }
                        } catch (e) {
                          logger.e(e);
                        }
                      }),
            ],
          ),
        ),
      ),
    );
  }
}
