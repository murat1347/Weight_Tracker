import 'package:get/get.dart';
import 'package:weight_tracker/models/record.dart';

class Controller extends GetxController{

  var records=<Record>[
    Record(weight: 80, dateTime: DateTime.now(),note:'aa'),
    Record(weight: 80, dateTime: DateTime.now(),note:'bb'),
    Record(weight: 80, dateTime: DateTime.now(),note:'cc'),
    Record(weight: 80, dateTime: DateTime.now(),note:'dd'),
  ].obs;


  void addRecord(){
    records.add(Record(weight: 80, dateTime: DateTime.now(),note:'xx'),);
  }
  void deleteRecord(Record record){
    records.remove(record);
  }
}