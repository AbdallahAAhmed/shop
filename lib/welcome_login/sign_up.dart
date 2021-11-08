import 'package:flutter/material.dart';
import 'package:shop_app/welcome_login/verification.dart';

class SignUpPage extends StatelessWidget {
  static const String routeName = '/sign_up';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 480,
          alignment: Alignment.center,
          margin:
              const EdgeInsets.only(right: 15, left: 15, top: 120, bottom: 50),
          padding:
              const EdgeInsets.only(bottom: 15, right: 15, left: 15, top: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: const [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                  label: Text('Name'),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff00C569)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text('Email'),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff00C569)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text('Password'),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff00C569)),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context)
                      .pushNamed(VerificationPage.routeName),
                  child: const Text('SIGN UP'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff00C569)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
