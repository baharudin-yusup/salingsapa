import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

import '../../core/utils/logger.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  loadModel() async {
    Tflite.loadModel(
      model: 'assets/sign_language_recognition/model.tflite',
      labels: 'assets/sign_language_recognition/labels.txt',
    );
  }

  @override
  void initState() {
    super.initState();

    loadModel();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Center(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Container(
            margin: EdgeInsets.all(20),
            height: 50,
            width: w,
            child: MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeX(),
                  ),
                );
              },
              child: Text(
                'Start Detecting',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeX extends StatefulWidget {
  const HomeX({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeX> {
  String answer = '';
  CameraController? cameraController;
  CameraImage? cameraImage;

//  change the model name in main file at line number 35,36
//   loadmodel() async {
//     Tflite.loadModel(
//       model: "assets/detect.tflite",
//       labels: "assets/american_sign_language_labels.txt",
//     );
//   }

  initCamera() {
    // cameraController = CameraController(cameras![0], ResolutionPreset.medium);

    // OR
    cameraController = CameraController(
        CameraDescription(
          name: '0', // 0 for back camera and 1 for front camera
          lensDirection: CameraLensDirection.back,
          sensorOrientation: 0,
        ),
        ResolutionPreset.medium);

    cameraController!.initialize().then(
      (value) {
        if (!mounted) {
          return;
        }
        setState(
          () {
            cameraController!.startImageStream(
              (image) => {
                if (true)
                  {
                    // setState(
                    //   () {
                    //     cameraImage = image;
                    //   },
                    // ),
                    cameraImage = image,

                    applymodelonimages(),
                  }
              },
            );
          },
        );
      },
    );
  }

  applymodelonimages() async {
    if (cameraImage != null) {
      if (!canRun) return;
      canRun = false;
      try {
        var predictions = await Tflite.runModelOnFrame(
            bytesList: cameraImage!.planes.map(
              (plane) {
                return plane.bytes;
              },
            ).toList(),
            imageHeight: cameraImage!.height,
            imageWidth: cameraImage!.width,
            imageMean: 127.5,
            imageStd: 127.5,
            rotation: 90,
            numResults: 3,
            threshold: 0.4,
            asynch: true);

        answer = '';

        for (var prediction in predictions!) {
          answer +=
              prediction['label'].toString().substring(0, 1).toUpperCase() +
                  prediction['label'].toString().substring(1) +
                  ' ' +
                  (prediction['confidence'] as double).toStringAsFixed(3) +
                  '\n';
        }

        setState(
          () {
            answer = answer;
          },
        );
      } catch (error) {
        Logger.error(error, event: 'testing tf');
      }
    }
  }

  bool canRun = false;
  @override
  void initState() {
    super.initState();
    initCamera();

    Timer.periodic(Duration(seconds: 2), (timer) {
      canRun = true;
    });
    // loadmodel();
  }

  @override
  void dispose() async {
    super.dispose();

    await Tflite.close();
    cameraController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: cameraImage != null
              ? Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: AspectRatio(
                              aspectRatio: cameraController!.value.aspectRatio,
                              child: CameraPreview(
                                cameraController!,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.black87,
                            child: Center(
                              child: Text(
                                answer,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : Container(),
        ),
      ),
    );
  }
}
