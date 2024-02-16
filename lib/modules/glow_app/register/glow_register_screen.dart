import 'package:flutter/material.dart';
import 'package:glow/layout/glow_app/glow_home_layout.dart';



import 'package:glow/shared/components/components.dart';

class GlowRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.cyanAccent, Colors.indigoAccent]),
      ),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        backgroundColor: Colors.transparent,
        body: Center(
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
                      textDirection: TextDirection.rtl,
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
                            'انشاء حساب جديد',
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
                            'انشئ حساب الان وانطلق نحو التواهج',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      color: Colors.white.withBlue(250),
                                    ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        defaultFormField(
                          controller: nameController,
                          type: TextInputType.name,
                          validat: (String? value) {
                            if (value!.isEmpty) {
                              return 'من فضلك أدخل إسمك';
                            }
                          },
                          lable: ' اسم المستخدم',
                          prefix: Icons.person,
                        ),
                        SizedBox(
                          height: 10.0,
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
                        SizedBox(
                          height: 10.0,
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
                          height: 10.0,
                        ),
                        defaultFormField(
                          controller: phoneController,
                          type: TextInputType.phone,
                          validat: (String? value) {
                            if (value!.isEmpty) {
                              return 'يرجى إدخال رقم الهاتف الخاص بك';
                            }
                          },
                          lable: 'رقم الهاتف',
                          prefix: Icons.phone,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: defaultButton(
                            Function: () {
                              if (formKey.currentState!.validate()) {
                                navigateTo(context, GlowHomeLayoutScreen());
                              }
                            },
                            text: ' انشاء',
                            background: Colors.white,
                            radius: 30.0,
                            width: 150.0,
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
    );
  }
}
