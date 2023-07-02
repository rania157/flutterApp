import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_uploader/core/themes/colors.dart';
import 'package:video_uploader/presentation/cubit/app_cubit.dart';
import 'package:video_uploader/presentation/cubit/app_states.dart';
import 'package:video_uploader/presentation/pages/home_page.dart';
import 'package:video_uploader/presentation/widgets/custom_text_form_field,dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
                    child: Column(children: [
          Container(
              width: width,
              height: height,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 14, vertical: height / 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/login.jpg"))),
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                          color: MyColors.lightPurple,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                        label: "Email",
                        hintText: "Enter you email address",
                        controller: emailController,
                        textInputType: TextInputType.emailAddress),
                    CustomTextFormField(
                        label: "password",
                        hintText: "Enter you password",
                        controller: passwordController,
                        textInputType: TextInputType.visiblePassword),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "forget password?",
                            style: TextStyle(
                                fontSize: 15, color: MyColors.lightPurple),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an Account?",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text("Create Account",
                              style: TextStyle(
                                  fontSize: 14, color: MyColors.lightPurple)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: MyColors.lightPurple,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          "Enter as a guest",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    )
                  ],
                ),
              ))
        ]))));
      },
    );
  }
}
