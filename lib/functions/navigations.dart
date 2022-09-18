

import 'package:flutter/material.dart';

navigate(context,var screen){
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => screen));
}