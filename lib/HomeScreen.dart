import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'PermanentMarker',
          ),
        ),
        centerTitle: true,
        shadowColor: Colors.white,
        backgroundColor: const Color(0xFF242a3a),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Colors.blueGrey,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/flash.jpg"),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    // ToDo add controller var
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    // ToDo add controller var
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_rounded),
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    // ToDo add controller var
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.security),
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    // ToDo add controller var
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.security),
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueGrey),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: 'Already have account? ',
                        style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                      ),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
