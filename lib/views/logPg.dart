import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class logpg extends StatelessWidget {
  const logpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Center(
              child: Text(
                "Log in to your account",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, bottom: 9),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Email",
                style: TextStyle(color: Colors.grey, fontSize: 21),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 28),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  filled: true,
                  hintText: "ex: jon.smith@email.com",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                  fillColor: Colors.pink.shade50,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, bottom: 9, top: 9),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password",
                style: TextStyle(color: Colors.grey, fontSize: 21),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 28, ),
            child: TextFormField(obscureText: true,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  filled: true,
                  hintText: "********",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                  fillColor: Colors.pink.shade50,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),

        ],
      ),
    );
  }
}
