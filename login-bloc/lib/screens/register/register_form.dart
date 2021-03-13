import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/login_button.dart';
import '../../widgets/register_button.dart';
import '../../widgets/social_button.dart';

class RegisterForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<RegisterForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: <Widget>[
            // Campo do Field do Email
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                labelText: 'Email',
                hintText: 'Informe o Email',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  gapPadding: 3,
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,

              // autovalidateMode: AutovalidateMode.always,
            ),

            SizedBox(height: 20),

            // Campo do Field da Senha
            TextFormField(
              controller: _passController,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Senha',
                hintText: 'Entre com a senha',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  gapPadding: 3,
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              // autovalidateMode: AutovalidateMode.always,
            ),
            SizedBox(height: 10),

            LoginButton(
              width: 170,
              height: 45,
              onPressed: () {},
              text: Text(
                'Registar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              icon: Icon(
                Icons.check,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
