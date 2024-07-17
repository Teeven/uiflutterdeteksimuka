import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_app/state_util.dart';
import 'package:flutter_app/core.dart';
import 'package:flutter_app/pages/check_your_email.dart';
import 'package:flutter_app/pages/deteksi.dart';
import 'package:flutter_app/pages/forgot_password.dart';
import 'package:flutter_app/pages/frame.dart';
import 'package:flutter_app/pages/login.dart';
import 'package:flutter_app/pages/sign_up.dart';
import 'package:flutter_app/pages/successfully.dart';
import 'package:flutter_app/pages/tampilan_diagram_kepuasan.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  const MyApp({super.key, required this.camera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      navigatorKey: Get.navigatorKey,
      home: HomePage(camera: camera),
    );
  }
}

class HomePage extends StatelessWidget {
  final CameraDescription camera;

  const HomePage({super.key, required this.camera});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Check Your Email'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckYourEmail()),
              );
            },
          ),
          ListTile(
            title: const Text('Deteksi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetectionScreen(camera: camera),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Forgot Password'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPassword()),
              );
            },
          ),
          ListTile(
            title: const Text('Frame'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Frame()),
              );
            },
          ),
          ListTile(
            title: const Text('Login'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
          ListTile(
            title: const Text('Sign Up'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
          ),
          ListTile(
            title: const Text('Successfully'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Successfully()),
              );
            },
          ),
          ListTile(
            title: const Text('Tampilan Diagram Kepuasan'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TampilanDiagramKepuasan(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
