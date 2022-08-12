import 'package:flutter/material.dart';
import 'package:newsappdebugged/pages/core/wrapper.dart';
import 'package:newsappdebugged/components/styles/color_constant.dart';

import '../../components/widgets/button.dart';
import '../../components/widgets/textfield.dart';

class Loginn extends StatefulWidget {
  const Loginn({Key? key}) : super(key: key);

  @override
  State<Loginn> createState() => _LoginnState();
}

class _LoginnState extends State<Loginn> {
  bool _isVisible = true;

  void _togglePasswordView() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  static final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _email = TextEditingController();


  @override
  Widget build(BuildContext context) {
    //

    // (utils)
    // provider bool value for theme preference

    // bottom padding
    var bottom = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 70, bottom: bottom, left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome to LiveNews🗞 📰',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: primaryorange,
                    fontSize: 24),
              ),
              const SizedBox(height: 10),
              const Text(
                'Already have an account?...Signin!',
                style: TextStyle(
                    height: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
              const SizedBox(height: 30),
              Myfield(hinttext: "Username", controller: _username),
              const SizedBox(
                height: 15,
              ),
              Myfield(hinttext: "Password", controller: _email),
              MaterialButton(
                onPressed: () {
                  print(_username);
                },
                color: Colors.red,
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(height: 30),
              const Center(child: Text("OR")),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign in with Google",
                    style: TextStyle(
                        color: primaryorange,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ReusableButton(
                    text: "Sign in",
                    color: primaryorange,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wrapper()),
                      );
                    },
                    textcolor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SignUp()),
                      // );
                    },
                    child: Text(
                      "Don't have an accout?",
                      style: TextStyle(
                          color: primaryorange,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
