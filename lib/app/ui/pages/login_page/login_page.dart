import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation_cards/app/controllers/login_controller.dart';

class LoginPage extends GetResponsiveView<LoginController> {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => Scaffold(
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.black,
                width: .5,
                style: BorderStyle.solid,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: loginForm(),
            ),
          ),
        ),
      ),
    );
  }

  Column loginForm() {
    return Column(
      children: [
        showImage(r'assets/home.jpg', 250, 300),
        loginTextField('Ingresa tu correo electrónico', 'Correo electrónico',
            false, TextInputType.emailAddress),
        loginTextField(
            'Ingresa tu contraseña', 'Contraseña', true, TextInputType.text),
        TextButton(onPressed: () {}, child: const Text("Iniciar  sesión")),
        TextButton(
            onPressed: () {}, child: const Text("¿Olvidaste tu contraseña?")),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            registerButton(() {}, const Icon(Icons.mail_outline_rounded)),
            registerButton(() {},
                const Image(image: AssetImage(r"assets/icons/facebook.png"))),
            registerButton(() {},
                const Image(image: AssetImage(r"assets/icons/google.png"))),
          ],
        )
      ],
    );
  }

  ElevatedButton registerButton(VoidCallback? onPressed, Widget icon) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
        ),
        onPressed: onPressed,
        child: Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: icon,
          ),
        ));
  }

  Expanded loginTextField(
      String hint, String label, bool typePassword, TextInputType type) {
    return Expanded(
      child: TextField(
        keyboardType: type,
        obscureText: typePassword,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  SizedBox showImage(String uri, double width, double height) {
    return SizedBox(
      width: width,
      height: height,
      child: Image(image: AssetImage(uri)),
    );
  }
}
