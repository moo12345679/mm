import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gar_proj/constans.dart';

class EditFormWidget extends StatefulWidget {
  const EditFormWidget({super.key});

  @override
  _EditFormWidgetState createState() => _EditFormWidgetState();
}

class _EditFormWidgetState extends State<EditFormWidget> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  bool _isEditing = false;

  String phone = '01012345678';
  String telephone = '0221234567';
  String city = 'Cairo';
  String address = '123 Main St, Cairo';
  String location = 'Nile Street';
  String facebook = 'https://facebook.com/user';
  String mail = 'user@example.com';

  void _toggleEdit() {
    setState(() {
      _isEditing = !_isEditing;

      if (_isEditing) {
        _fbKey.currentState?.patchValue({
          'phone': phone,
          'telephone': telephone,
          'city': city,
          'address': address,
          'location': location,
          'facebook': facebook,
          'mail': mail,
          'des': des,
        });
      } else {
        if (_fbKey.currentState?.saveAndValidate() ?? false) {
          setState(() {
            phone = _fbKey.currentState?.value['phone'];
            telephone = _fbKey.currentState?.value['telephone'];
            city = _fbKey.currentState?.value['city'];
            address = _fbKey.currentState?.value['address'];
            location = _fbKey.currentState?.value['location'];
            facebook = _fbKey.currentState?.value['facebook'];
            mail = _fbKey.currentState?.value['mail'];
            des = _fbKey.currentState?.value['des'];
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _fbKey,
      child: Column(
        children: <Widget>[
          _buildTextField('phone', 'Phone Number'),
          _buildTextField('telephone', 'Telephone Number'),
          _buildTextField('city', 'City'),
          _buildTextField('address', 'Address'),
          _buildTextField('location', 'Location'),
          _buildTextField('facebook', 'Facebook Profile'),
          _buildTextField('mail', 'Email Address'),
          _buildTextField('des', 'describtion'),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: sprimarycolor),
            onPressed: _toggleEdit,
            child: Text(
              _isEditing ? 'Save Changes' : 'Edit',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String name, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: FormBuilderTextField(
        name: name,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
        enabled: _isEditing,
      ),
    );
  }
}

String des =
    ' أحب التطوع لأنه يمكنني من تقديم العون للآخرين وإحداث تأثير إيجابي في المجتمع.';
