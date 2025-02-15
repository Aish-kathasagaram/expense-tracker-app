import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mad_my_app/app.dart';
import 'package:flutter/material.dart';
import 'package:mad_my_app/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}
