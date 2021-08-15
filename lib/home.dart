import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:tabsontabs/addmedicine.dart';
import 'devicesizeconfig.dart';
import 'medicineTile.dart';
import 'medicinedata.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatelessWidget {
  final ImagePicker imagePicker = ImagePicker();
  Future<void> _takePicture() async {
    final imageFile = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = Provider.of<Medicines>(context).getMedicines();
    DeviceSizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF43ABC9),
        title: Text(
          'TabsOnTabs',
          style: TextStyle(
            fontSize: DeviceSizeConfig.screenHeight! * 0.045,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 30),
            width: double.infinity,
            height: 70,
            child: Text(
              'Welcome, Aedh!!',
              style: TextStyle(
                fontSize: DeviceSizeConfig.screenHeight! * 0.041,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  //margin: EdgeInsets.only(left:10),
                  //padding: EdgeInsets.all(10),
                  height: DeviceSizeConfig.screenHeight! * 0.018,
                  width: DeviceSizeConfig.screenWidth! * 0.213,
                  color: Color(0xFFFFA3A3),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Your Medicines',
                  style: TextStyle(
                    fontSize: DeviceSizeConfig.screenHeight! * 0.034,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: DeviceSizeConfig.screenHeight! * 0.018,
                  width: DeviceSizeConfig.screenWidth! * 0.213,
                  color: Color(0xFFFFA3A3),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (ctx, medicineIndex) {
                return MedicineTile(
                  items[medicineIndex],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        backgroundColor: Color(0xFF43ABC9),
        children: [
          SpeedDialChild(
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            onTap: _takePicture,
            backgroundColor: Color(0xFF43ABC9),
          ),
          SpeedDialChild(
            child: Icon(
              Icons.edit,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) => AddMedicine()),
              );
            },
            backgroundColor: Color(0xFF43ABC9),
          ),
        ],
      ),
    );
  }
}
