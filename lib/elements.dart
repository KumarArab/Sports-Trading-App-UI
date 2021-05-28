import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sportsapp/style.dart';

class Games {
  final String game;
  final String path;

  Games({this.game, this.path});
}

class Match {
  final bool isSelected;
  final String text;

  Match({this.isSelected, this.text});
}

List matches = [
  Match(isSelected: true, text: "All"),
  Match(isSelected: false, text: "150"),
  Match(isSelected: false, text: "Pre-Match"),
  Match(isSelected: false, text: "In-Match"),
  Match(isSelected: false, text: "750"),
];
List<Games> games = [
  Games(game: "Soccer", path: "assets/football.svg"),
  Games(game: "Basketball", path: "assets/basketball.svg"),
  Games(game: "BaseBall", path: "assets/baseball.svg"),
  Games(game: "Football", path: "assets/rugby.svg"),
];

List<BezierLine> lines = [
  BezierLine(
      label: "\$",
      data: [
        DataPoint<DateTime>(value: 15000, xAxis: DateTime(2021, 1, 1, 2, 0)),
        DataPoint<DateTime>(value: 10000, xAxis: DateTime(2021, 1, 1, 2, 30)),
        DataPoint<DateTime>(value: 25000, xAxis: DateTime(2021, 1, 1, 3, 0)),
        DataPoint<DateTime>(value: 8000, xAxis: DateTime(2021, 1, 1, 3, 30)),
        DataPoint<DateTime>(value: 15000, xAxis: DateTime(2021, 1, 1, 4, 0)),
        DataPoint<DateTime>(value: 30000, xAxis: DateTime(2021, 1, 1, 4, 30)),
        DataPoint<DateTime>(value: 15000, xAxis: DateTime(2021, 1, 1, 5, 0)),
        DataPoint<DateTime>(value: 12000, xAxis: DateTime(2021, 1, 1, 5, 30)),
        DataPoint<DateTime>(value: 18000, xAxis: DateTime(2021, 1, 1, 6, 0)),
        DataPoint<DateTime>(value: 12000, xAxis: DateTime(2021, 1, 1, 6, 30)),
        DataPoint<DateTime>(value: 18000, xAxis: DateTime(2021, 1, 1, 7, 0)),
      ],
      lineColor: Style.appOrange,
      lineStrokeWidth: 2),
  BezierLine(
      label: "\$",
      data: [
        DataPoint<DateTime>(value: 5000, xAxis: DateTime(2021, 1, 1, 2, 0)),
        DataPoint<DateTime>(value: 1000, xAxis: DateTime(2021, 1, 1, 2, 30)),
        DataPoint<DateTime>(value: 2000, xAxis: DateTime(2021, 1, 1, 3, 0)),
        DataPoint<DateTime>(value: 18000, xAxis: DateTime(2021, 1, 1, 3, 30)),
        DataPoint<DateTime>(value: 10000, xAxis: DateTime(2021, 1, 1, 4, 0)),
        DataPoint<DateTime>(value: 3000, xAxis: DateTime(2021, 1, 1, 4, 30)),
        DataPoint<DateTime>(value: 5000, xAxis: DateTime(2021, 1, 1, 5, 0)),
        DataPoint<DateTime>(value: 13000, xAxis: DateTime(2021, 1, 1, 5, 30)),
        DataPoint<DateTime>(value: 10000, xAxis: DateTime(2021, 1, 1, 6, 0)),
        DataPoint<DateTime>(value: 15000, xAxis: DateTime(2021, 1, 1, 6, 30)),
        DataPoint<DateTime>(value: 6000, xAxis: DateTime(2021, 1, 1, 7, 0)),
      ],
      lineColor: Color(0xff76FC9D),
      lineStrokeWidth: 2),
  BezierLine(
      label: "\$",
      data: [
        DataPoint<DateTime>(value: 6000, xAxis: DateTime(2021, 1, 1, 2, 0)),
        DataPoint<DateTime>(value: 4000, xAxis: DateTime(2021, 1, 1, 2, 30)),
        DataPoint<DateTime>(value: 2000, xAxis: DateTime(2021, 1, 1, 3, 0)),
        DataPoint<DateTime>(value: 8000, xAxis: DateTime(2021, 1, 1, 3, 30)),
        DataPoint<DateTime>(value: 3000, xAxis: DateTime(2021, 1, 1, 4, 0)),
        DataPoint<DateTime>(value: 1000, xAxis: DateTime(2021, 1, 1, 4, 30)),
        DataPoint<DateTime>(value: 3000, xAxis: DateTime(2021, 1, 1, 5, 0)),
        DataPoint<DateTime>(value: 10000, xAxis: DateTime(2021, 1, 1, 5, 30)),
        DataPoint<DateTime>(value: 4000, xAxis: DateTime(2021, 1, 1, 6, 0)),
        DataPoint<DateTime>(value: 10000, xAxis: DateTime(2021, 1, 1, 6, 30)),
        DataPoint<DateTime>(value: 12000, xAxis: DateTime(2021, 1, 1, 7, 0)),
      ],
      lineColor: Color(0xff70FFE7),
      lineStrokeWidth: 2),
];

AppBar appBar(context) => AppBar(
      backgroundColor: Style.backgroundColor,
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.all(15.0),
        child: SvgPicture.asset(
          "assets/menu.svg",
        ),
      ),
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Markets",
              style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Style.appWhite,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.5)),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Style.appGreen,
            radius: 3,
          )
        ],
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Style.backgroundColor2,
          child: SvgPicture.asset(
            "assets/user.svg",
            color: Style.appWhite,
          ),
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
