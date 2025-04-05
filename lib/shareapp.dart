import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sharing_intent/flutter_sharing_intent.dart';
import 'package:flutter_sharing_intent/model/sharing_file.dart';

class Shareappsc extends StatefulWidget {
  const Shareappsc({super.key});

  @override
  State<Shareappsc> createState() => _ShareappscState();
}

class _ShareappscState extends State<Shareappsc> {
  String receivedtext = "";
  late StreamSubscription _intentDataStreamSubscription;
  //  List<SharedMediaType>? sharedFiles;
  List<SharedFile>? sharedFiles = [];
  // String? sharedText;

  initSharingListener() {
    // For sharing images coming from outside the app while the app is in the memory
    _intentDataStreamSubscription = FlutterSharingIntent.instance
        .getMediaStream()
        .listen((List<SharedFile> value) {
      setState(() {
        sharedFiles = value;
      });
      // if (kDebugMode) {
      //   print(" Shared: getMediaStream ${value.map((f) => f.value).join(",")}");
      // }
    }, onError: (err) {
      // if (kDebugMode) {
      print("Shared: getIntentDataStream error: $err");
      // }
    });
    //share to app
    FlutterSharingIntent.instance
        .getInitialSharing()
        .then((List<SharedFile> value) {
      // if (kDebugMode) {
      //   print(
      //       "Shared: getInitialMedia => ${value.map((f) => f.value).join(",")}");
      // }
      setState(() {
        sharedFiles = value;
      });
    }).catchError((err) {
      print("Error getting initial shared media: $err");
    });
  }

  @override
  void initState() {
    initSharingListener();
  }

  @override
  void dispose() {
    _intentDataStreamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Receiving text and videos"),
      ),
      body: Center(
        child: (sharedFiles != null && sharedFiles!.isNotEmpty)
            // sharedFiles != null && sharedFiles!.isNotEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: sharedFiles!.map((file) {
                  print("the file is ${file.type}");
                  if (file.type == SharedMediaType.IMAGE) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.file(File(file.value!),
                          width: 300, height: 300),
                    );
                  } else {
                    print("the url is ${file.value!}");
                    return Text("Received a non-image file: ${file.value!}");
                  }
                }).toList(),
              )
            : const Text("No shared content received"),
      ),
    );
  }
}
