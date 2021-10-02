import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:get_storage/get_storage.dart';

class DownloadedList extends StatefulWidget {
  // const DownloadedList({Key? key}) : super(key: key);

  _DownloadedListState createState() => _DownloadedListState();
}

class _DownloadedListState extends State<DownloadedList> {
  bool loading=true;
  var box=GetStorage();
  List allVideos=[];

  @override
  void initState() {
    loading=false;
    allVideos=box.read("allvideo");
    loading=false;

    setState(() {

    });
    
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Downloaded Reels'),
        centerTitle: true,
      ),
      body: loading? Center(child: CupertinoActivityIndicator(),):
          GridView.count(
            childAspectRatio: 1/1.3,
            crossAxisCount: 2,
            children:
            List<Widget>.generate(allVideos.length, (index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              // child: GenerateVideos(allVideos[index]),
            ),
            ),
          ),
    );
  }
}
