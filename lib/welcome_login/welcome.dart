import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/welcome_login/sign_up.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = '/welcome_login';
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 420,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                  right: 15, left: 15, top: 150, bottom: 50),
              padding: const EdgeInsets.only(
                  bottom: 15, right: 15, left: 15, top: 30),
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Welcome,',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context)
                                .pushNamed(SignUpPage.routeName),
                            child: const Text('Sign',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff00C569),
                                )),
                          ),
                        ],
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Sign in to Continue',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
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
                  const SizedBox(height: 20),
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
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: null,
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('SIGN IN'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff00C569)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text('-OR-'),
            const SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.grey.withOpacity(0.5)),
              ),
              child: Row(
                children: const [
                  SizedBox(width: 25),
                  Icon(Icons.facebook_rounded, color: Colors.blue, size: 40),
                  SizedBox(width: 55),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'Sign In With Facebook',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.grey.withOpacity(0.5)),
              ),
              child: Row(
                children: const [
                  SizedBox(width: 25),
                  Image(
                    image: AssetImage('assets/images/gmail.png'),
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 55),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'Sign In With Google',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
