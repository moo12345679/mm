import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';

class CustomDropdownmenuButton extends StatefulWidget {
  const CustomDropdownmenuButton({super.key});

  @override
  State<CustomDropdownmenuButton> createState() =>
      _CustomDropdownmenuButtonState();
}

class _CustomDropdownmenuButtonState extends State<CustomDropdownmenuButton> {
  @override
  void initState() {
    super.initState();
    dropdownvalue = null; // Dynamically set initial value
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffE0E5EA),
        ),
        child: DropdownButton<String>(
          iconSize: 24,
          iconEnabledColor: kprimarycolor,
          isExpanded: true,
          hint: Center(
            child: Text(
              'Select Your Role:',
              style: TextStyle(color: Color.fromARGB(255, 141, 144, 147)),
            ),
          ),
          value: dropdownvalue,
          items: [
            DropdownMenuItem<String>(
              value: 'donor',
              child: Center(child: Text('donor')),
            ),
            DropdownMenuItem<String>(
              value: 'resturant',
              child: Center(child: Text('resturant')),
            ),
            DropdownMenuItem<String>(
              value: 'charity',
              child: Center(child: Text('charity')),
            ),
          ],
          onChanged: (String? newvalue) {
            setState(() {
              dropdownvalue = newvalue!;
            });
          },
        ),
      ),
    );
  }
}

String? dropdownvalue;
