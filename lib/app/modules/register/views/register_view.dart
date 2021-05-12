import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horadedoar/app/modules/register/controllers/register_controller.dart';
import 'package:horadedoar/app/shared/widgets/hd_textbutton.dart';
import 'package:horadedoar/app/shared/widgets/hd_textfield.dart';
import 'package:horadedoar/app/theme/app_theme.dart';

class RegisterView extends GetView<RegisterController> {
  final nameTextEditingController = TextEditingController();
  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: new DecorationImage(
            image: new AssetImage('assets/images/background_final.jpg'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(
                    top: 120.0,
                    left: 45,
                    right: 45,
                  ),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/logo_full.png'),
                          width: Get.width * .60,
                          height: Get.height * .20,
                        ),
                        SizedBox(height: 40.0),
                        HdTextField(
                          hintText: 'Seu nome',
                          controller: nameTextEditingController,
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),
                        HdTextField(
                          hintText: 'Seu e-mail',
                          controller: emailTextEditingController,
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),
                        HdTextField(
                          hintText: 'Senha',
                          controller: passwordTextEditingController,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 30.0),
                        HdTextButton(
                          label: 'Cadastrar',
                          backgroundColor: appThemeData.primaryColor,
                          onPressed: () {
                            controller.signUp(
                                nameTextEditingController.text,
                                emailTextEditingController.text,
                                passwordTextEditingController.text);
                          },
                        ),
                        SizedBox(height: 15.0),
                        HdTextButton(
                          label: 'Entrar',
                          backgroundColor: Color(0XFFB5505C),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
