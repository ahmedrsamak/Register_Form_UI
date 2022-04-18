import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF242a3a),
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
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(100),
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
              const SizedBox(height: 15),
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
              const SizedBox(height: 15),
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
              const SizedBox(height: 15),
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
            ],
          ),
        ),
      ),
    );
  }
}
