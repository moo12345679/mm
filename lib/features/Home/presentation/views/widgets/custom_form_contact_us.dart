import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';

class CustomFormContactUs extends StatefulWidget {
  const CustomFormContactUs({super.key});

  @override
  State<CustomFormContactUs> createState() => _CustomFormContactUsState();
}

class _CustomFormContactUsState extends State<CustomFormContactUs> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: ListView(
            children: [
              Text(
                'Contact Us',
                style: TextStyle(color: sprimarycolor, fontSize: 24),
              ),
              SizedBox(height: 16),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please Enter your name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter Your Name ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please Enter your Email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter Your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please Enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(16, 50, 16, 50),
                  hintText: 'Enter question or feedback',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 36),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: kprimarycolor),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: kprimarycolor,
                        content: Text('submitted'),
                      ),
                    );
                  }
                },
                child: Text('Submit', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
