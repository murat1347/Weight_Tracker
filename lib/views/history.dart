import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:weight_tracker/models/record.dart';
import 'package:weight_tracker/view-models/controller.dart';
import 'package:weight_tracker/widgets/record_list_tile.dart';
import 'package:get/get.dart';
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    List<Record> records = _controller.records;
    return Obx(()=> Scaffold(
        appBar:AppBar(
          actions: [IconButton(onPressed: _controller.addRecord, icon: Icon(Icons.add))],
          centerTitle: true,
          title: Text("History"),
        ),
        body:records.isEmpty?
            Center(
              child: Container(
              child: Text("Please add Some Records"),),)
            :ListView(
                physics: BouncingScrollPhysics(),
            children:
            records.map((record) =>
                RecordListTile(record: record)).toList()
            )

        ),);

  }
}
