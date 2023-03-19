import 'package:flutter/material.dart';
import 'coustom_text.dart';
import 'method_clippath.dart';

class CoustomStack extends StatelessWidget {
  CoustomStack({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipPath(
          clipper: DrawClip(),
          child: Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff46ddbf), Color(0xff3088e2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft)),
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child:Text("Welcome"),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 200,
          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 105),
              child: Card(
                  color: Colors.white54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  elevation: 5,
                  child: Column(
                    children: [
                      CoustomTextField(
                        controller: emailController,
                          hintText: "Email",
                          labelText: "Enter your email",
                          obscureText: false
                      ),
                      const SizedBox(height: 20,),
                      CoustomTextField(
                        controller: passwordController,
                        hintText: "password",
                        labelText: "Enter your password",
                        obscureText: true,
                      ),
                    ],
                  )
              ),
            ),
          ),
        ),
      ],
    );
  }
}
