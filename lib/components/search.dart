import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  State<MyCustomForm> createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFF711E1E),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: 'アニメを検索',
          contentPadding: const EdgeInsets.all(10),
          hintStyle: const TextStyle(fontSize: 15),
          fillColor: Colors.white,
          filled: true,
          isDense: true,
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
