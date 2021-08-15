import 'package:flutter/material.dart';

class AddMedicineForm extends StatefulWidget {
  const AddMedicineForm({Key? key}) : super(key: key);

  @override
  _AddMedicineFormState createState() => _AddMedicineFormState();
}

class _AddMedicineFormState extends State<AddMedicineForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Medicine Name'),
        onFieldSubmitted: (_) {
          
        },
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please provide a Medicine Name.';
          }
          return null;
        },
        onSaved: (value) {
        
        },
      ),
    );
  }
}
