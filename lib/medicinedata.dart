import 'package:flutter/cupertino.dart';

class Medicines with ChangeNotifier {
  List<Medicine> items = [
    Medicine(
      'med1',
      "https://thumbs-prod.si-cdn.com/dZLWPBY33l84qZcZ_LIZKU1CfrM=/800x600/filters:no_upscale():focal(594x274:595x275)/https://public-media.si-cdn.com/filer/95/db/95db799b-fddf-4fde-91f3-77024442b92d/egypt_kitty_social.jpg",
      MedicineDetails(
        25,
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineSchedule(true, true, true),
      ),
    ),
    Medicine(
      'med1',
      "https://thumbs-prod.si-cdn.com/dZLWPBY33l84qZcZ_LIZKU1CfrM=/800x600/filters:no_upscale():focal(594x274:595x275)/https://public-media.si-cdn.com/filer/95/db/95db799b-fddf-4fde-91f3-77024442b92d/egypt_kitty_social.jpg",
      MedicineDetails(
        25,
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineSchedule(true, true, true),
      ),
    ),
    Medicine(
      'med1',
      "https://thumbs-prod.si-cdn.com/dZLWPBY33l84qZcZ_LIZKU1CfrM=/800x600/filters:no_upscale():focal(594x274:595x275)/https://public-media.si-cdn.com/filer/95/db/95db799b-fddf-4fde-91f3-77024442b92d/egypt_kitty_social.jpg",
      MedicineDetails(
        25,
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineSchedule(true, true, true),
      ),
    ),
    Medicine(
      'med1',
      "https://thumbs-prod.si-cdn.com/dZLWPBY33l84qZcZ_LIZKU1CfrM=/800x600/filters:no_upscale():focal(594x274:595x275)/https://public-media.si-cdn.com/filer/95/db/95db799b-fddf-4fde-91f3-77024442b92d/egypt_kitty_social.jpg",
      MedicineDetails(
        25,
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineSchedule(true, true, true),
      ),
    ),
    Medicine(
      'med1',
      "https://thumbs-prod.si-cdn.com/dZLWPBY33l84qZcZ_LIZKU1CfrM=/800x600/filters:no_upscale():focal(594x274:595x275)/https://public-media.si-cdn.com/filer/95/db/95db799b-fddf-4fde-91f3-77024442b92d/egypt_kitty_social.jpg",
      MedicineDetails(
        25,
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineSchedule(true, true, true),
      ),
    ),
    Medicine(
      'med1',
      "https://thumbs-prod.si-cdn.com/dZLWPBY33l84qZcZ_LIZKU1CfrM=/800x600/filters:no_upscale():focal(594x274:595x275)/https://public-media.si-cdn.com/filer/95/db/95db799b-fddf-4fde-91f3-77024442b92d/egypt_kitty_social.jpg",
      MedicineDetails(
        25,
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineSchedule(true, true, true),
      ),
    ),
    Medicine(
      'med1',
      "https://thumbs-prod.si-cdn.com/dZLWPBY33l84qZcZ_LIZKU1CfrM=/800x600/filters:no_upscale():focal(594x274:595x275)/https://public-media.si-cdn.com/filer/95/db/95db799b-fddf-4fde-91f3-77024442b92d/egypt_kitty_social.jpg",
      MedicineDetails(
        25,
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineBA(true, false),
        MedicineSchedule(true, true, true),
      ),
    ),
  ];

  void addMedicine(Medicine medicine) {
    items.add(medicine);
    notifyListeners();
  }

  List<Medicine> getMedicines() {
    return [...items];
  }
}

class Medicine {
  String name;
  String url;
  MedicineDetails medicineDetails;
  Medicine(this.name, this.url, this.medicineDetails);
}

class MedicineDetails {
  int numberOfTablets;
  MedicineBA morningBA;
  MedicineBA noonBA;
  MedicineBA nightBA;
  MedicineSchedule medicineSchedule;
  MedicineDetails(this.numberOfTablets, this.morningBA, this.noonBA,
      this.nightBA, this.medicineSchedule);
}

class MedicineBA {
  bool before;
  bool after;
  MedicineBA(this.before, this.after);
}

class MedicineSchedule {
  bool morning;
  bool noon;
  bool night;
  MedicineSchedule(this.morning, this.noon, this.night);
}
