import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class Logoflutter extends StatelessWidget {
  const Logoflutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('images/flutterio-icon.svg'),
        const Text('Flutter Devolper',style: TextStyle(
            fontFamily:'Roboto',

            color: Colors.black,
          fontSize: 20
        ),).shimmer(primaryColor: Colors.black),
      ],
    );
  }
}
