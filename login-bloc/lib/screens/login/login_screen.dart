import 'package:flutter/material.dart';
import 'login_form.dart';
import '../../widgets/curved_widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.white.withOpacity(0.4),
          ],
        )),
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              CurvedWidget(
                child: Container(
                  padding: const EdgeInsets.only(top: 100, left: 50),
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.red, Colors.red.withOpacity(0.4)],
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 40, color: Color(0xff6a515e)),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 240),
                child: LoginForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
