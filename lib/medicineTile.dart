import 'package:flutter/material.dart';
import 'devicesizeconfig.dart';
import 'medicinedata.dart';

class MedicineTile extends StatefulWidget {
  final Medicine medicine;
  MedicineTile(this.medicine);

  @override
  _MedicineTileState createState() => _MedicineTileState();
}

class _MedicineTileState extends State<MedicineTile> {
  bool displayDetails = false;
  final List<TimeOfDay> times = [
    TimeOfDay(hour: 0, minute: 0),
    TimeOfDay(hour: 9, minute: 0),
    TimeOfDay(hour: 12, minute: 0),
    TimeOfDay(hour: 20, minute: 0),
    TimeOfDay(hour: 24, minute: 0),
  ];
  void toggle() {
    setState(() {
      displayDetails = !displayDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    var time = TimeOfDay.now().hour;
    var timeToDisplay;
    if (time >= times[0].hour && time < times[1].hour) {
      timeToDisplay = times[1].hour;
    }
    if (time >= times[1].hour && time < times[2].hour) {
      timeToDisplay = times[2].hour;
    }
    if (time >= times[2].hour && time < times[3].hour) {
      timeToDisplay = times[3].hour;
    }
    if (time >= times[3].hour && time < times[4].hour) {
      timeToDisplay = times[1].hour;
    }
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            bottom: displayDetails ? 0 : 5,
            left: 10,
            right: 10,
          ),
          color: displayDetails ? Color(0xFFFFBFBF) : Color(0xFFFCDADA),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                widget.medicine.url,
              ),
            ),
            title: Text(
              widget.medicine.name,
              style: TextStyle(
                fontSize: DeviceSizeConfig.screenHeight! * 0.03,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                toggle();
              },
              icon: displayDetails
                  ? Icon(
                      Icons.keyboard_arrow_up,
                    )
                  : Icon(
                      Icons.keyboard_arrow_down,
                    ),
            ),
          ),
        ),
        if (displayDetails)
          Container(
            margin: EdgeInsets.only(
              bottom: 5,
              left: 10,
              right: 10,
            ),
            width: double.infinity,
            color: Color(0xFFFCDADA),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 5,
                right: 20,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'Next tablet at',
                        style: TextStyle(
                          fontSize: DeviceSizeConfig.screenHeight! * 0.026,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        '$timeToDisplay:00',
                        style: TextStyle(
                          fontSize: DeviceSizeConfig.screenHeight! * 0.026,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'tablets remaining: ${widget.medicine.medicineDetails.numberOfTablets.toString()}',
                    style: TextStyle(
                      fontSize: DeviceSizeConfig.screenHeight! * 0.026,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '${widget.medicine.medicineDetails.medicineSchedule.morning ? 1 : 0}-${widget.medicine.medicineDetails.medicineSchedule.noon ? 1 : 0}-${widget.medicine.medicineDetails.medicineSchedule.night ? 1 : 0}',
                        style: TextStyle(
                          fontSize: DeviceSizeConfig.screenHeight! * 0.026,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Expanded(child: Container()),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: DeviceSizeConfig.screenHeight! * 0.026,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ], 
    );
  }
}
