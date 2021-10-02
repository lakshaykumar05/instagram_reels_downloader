import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:get/get.dart';
// import 'package:reelsdownloader/Controller/DownloadController.dart';


class startScreen extends StatefulWidget {
  // const startScreen({Key? key}) : super(key: key);

  @override
  _startScreenState createState() => _startScreenState();
}

class _startScreenState extends State<startScreen> {

  // DownloadController downloadController=Get.put(DownloadController());
  TextEditingController url=Get.put(TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reels Downloader'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Icon(Icons.download_done_outlined),
            ),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: GetBuilder(
                  // init: downloadController,
                  builder: (_)=>
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 150,
                            // child: downloadController.path!=null ?
                            // Container():
                            // Center(child: Text('No recent download'),),
                          ),
                        ],
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: url,
                  autocorrect: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                    ),
                    hintText: 'Paste Instagram Link here',
                    filled: true,
                    hintStyle: TextStyle(
                        color: Colors.black38,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
