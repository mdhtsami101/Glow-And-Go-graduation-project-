import 'package:flutter/material.dart';



import 'package:glow/layout/glow_app/glow_home_layout.dart';
import 'package:glow/modules/glow_app/register/glow_register_screen.dart';

import 'package:glow/shared/components/components.dart';
import 'package:glow/shared/styles/colors.dart';

class GlowLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Container(
      decoration: const BoxDecoration(
          gradient: defaultGradient),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        backgroundColor: Colors.transparent,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white60.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image(
                              image: AssetImage('assets/images/logo.png'),
                              width: 130,
                              height: 130,

                            ),
                          ),
                          Center(
                            child: Text(
                              'تسجيل الدخول',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                          Center(
                            child: Text(
                              'سجل دخول الان وانطلق نحو التواهج',
                              style:
                                  Theme.of(context).textTheme.bodyText1?.copyWith(
                                        color: Colors.white.withBlue(250),
                                      ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.mail_outline,
                                  size: 35.0,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.facebook_sharp,
                                  size: 35.0,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.g_mobiledata_rounded,
                                    size: 50.0,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.all(2.0)),
                            ],
                          ),

                          defaultFormField(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            validat: (String? value) {
                              if (value!.isEmpty) {
                                return 'الرجاء إدخال عنوان البريد الإلكتروني الخاص بك';
                              }
                            },
                            lable: 'البريد الاكتروني',
                            prefix: Icons.email_outlined,
                          ),
                          defaultFormField(
                            controller: passwordController,
                            type: TextInputType.visiblePassword,
                            // suffix: SocialRegisterCubit.get(context).suffix,
                            onSubmit: (value) {},
                            // isPassword: SocialRegisterCubit.get(context).isPassword,
                            suffixPressed: () {
                              // SocialRegisterCubit.get(context)
                              //     .changePasswordVisibility();
                            },
                            validat: (String? value) {
                              if (value!.isEmpty) {
                                return 'كلمة المرور قصيرة جدا';
                              }
                            },
                            lable: 'كلمة المرور',
                            prefix: Icons.lock_outline,
                            isPassword: true,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          defaultTextButton(
                            Function: () {},
                            text: 'هل نسيت كلمة المرور؟',
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Center(
                            child: defaultButton(
                              Function: () {
                                if (formKey.currentState!.validate()) {
                                  navigateTo(context, GlowHomeLayoutScreen());
                                }
                              },
                              text: ' تسجيل دخول',
                              background: Colors.white,
                              radius: 30.0,
                              width: 150.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'هل لديك حساب؟',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                defaultTextButton(
                                  Function: () {
                                    navigateTo(context, GlowRegisterScreen());
                                  },
                                  text: 'انشئ حسابك',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
