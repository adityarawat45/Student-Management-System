// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:velocity_x/velocity_x.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return const SpinKitFadingCircle(
      color: Colors.white,
      size: 65,
    );
  }
}

class RedLoading extends StatefulWidget {
  const RedLoading({super.key});

  @override
  State<RedLoading> createState() => _RedLoadingState();
}

class _RedLoadingState extends State<RedLoading> {
  @override
  Widget build(BuildContext context) {
    return const SpinKitFadingCircle(
      color: Vx.red400,
      size: 65,
    );
  }
}
