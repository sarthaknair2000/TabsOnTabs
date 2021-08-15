import 'package:flutter/material.dart';

import 'devicesizeconfig.dart';
import 'medicinedata.dart';

class AddMedicine extends StatefulWidget {
  const AddMedicine({Key? key}) : super(key: key);

  @override
  _AddMedicineState createState() => _AddMedicineState();
}

class _AddMedicineState extends State<AddMedicine> {
  var keys = [GlobalKey<FormState>(),];
 // var medicines = [Medicine(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF43ABC9),
        title: Text(
          'TabsOnTabs',
          style: TextStyle(
            fontSize: DeviceSizeConfig.screenHeight! * 0.045,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 30),
        child: Column(
          children:[

          ],
        ),
      ),
    );
  }
}
