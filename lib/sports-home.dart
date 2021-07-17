import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportsapp/elements.dart';
import 'package:sportsapp/sizeconfig.dart';
import 'package:sportsapp/sports-details.dart';
import 'package:sportsapp/style.dart';

class SportsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Style.backgroundColor,
      appBar: appBar(context),
    );
  }
}
