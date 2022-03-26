import 'package:flutter/material.dart';
import 'package:livetranslator/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String password = "";
  String errormsg = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.network("assets/images/login.png", fit: BoxFit.cover),
            const SizedBox(height: 20.0),
            Text(
              "Welcome $name",
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Please Enter username",
                      labelText: "username",
                    ),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "password",
                    ),
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  InkWell(
                    onTap: () async {
                      if (name.isNotEmpty &&
                          password.isNotEmpty &&
                          name == "malik" &&
                          password == "malik123") {
                        setState(() {
                          changeButton = true;
                          name = "";
                          password = "";
                          errormsg = "";
                        });
                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                        await Future.delayed(const Duration(seconds: 1));
                        setState(() {
                          changeButton = false;
                        });
                      } else {
                        errormsg = "* Inavlid username and password";
                        setState(() {});
                      }
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              "login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8)),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     if (name.isNotEmpty &&
                  //         password.isNotEmpty &&
                  //         name == "malik" &&
                  //         password == "malik123") {
                  //       setState(() {
                  //         name = "";
                  //         password = "";
                  //         errormsg = "";
                  //       });
                  //       //Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     } else {
                  //       errormsg = "* Inavlid username and password";
                  //       setState(() {});
                  //     }
                  //   },
                  //   child: const Text("Login"),
                  //   style: TextButton.styleFrom(
                  //     minimumSize: const Size(150, 40),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(errormsg),
                ],
              ),
            )
          ]),
        ));
  }
}
