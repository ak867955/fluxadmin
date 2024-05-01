import 'dart:developer';
import 'package:adminfluxapp/cdetails.dart';
import 'package:adminfluxapp/chats.dart';
import 'package:adminfluxapp/chatuser.dart';
import 'package:adminfluxapp/ctabbar.dart';
import 'package:adminfluxapp/cusers.dart';
import 'package:adminfluxapp/drawer.dart';
import 'package:adminfluxapp/dtabbar.dart';
import 'package:adminfluxapp/login.dart';
import 'package:adminfluxapp/overview.dart';
import 'package:adminfluxapp/profile.dart';
import 'package:adminfluxapp/stabbar.dart';
import 'package:adminfluxapp/users.dart';
import 'package:adminfluxapp/wtabbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flux',
      home: chats(),
    );
  }
}
