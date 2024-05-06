// ignore_for_file: file_names, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Center(
          child: Text("تم انشاء الحساب بنجاح"),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('log', (Route) => false);
          },
          color: Colors.red,
          child: const Text('تسجيل الدخول'),
        )
      ]),
    );
  }
}
