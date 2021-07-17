import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:sportsapp/elements.dart';
import 'package:sportsapp/sizeconfig.dart';
import 'package:sportsapp/style.dart';

class SportsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: Style.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: CircleAvatar(
                    backgroundColor: Style.backgroundColor2,
                    child: Container(
                        margin: EdgeInsets.only(left: 7),
                        child: Icon(Icons.arrow_back_ios, color: Colors.white)),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Premier League",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Style.appWhite,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 50,
              width: SizeConfig.width,
              child: ListView.builder(
                  itemCount: matches.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) {
                    return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      decoration: BoxDecoration(
                        color: matches[i].isSelected
                            ? Style.appGreen
                            : Style.backgroundColor3,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        matches[i].text,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Style.appWhite),
                      ),
                    );
                  }),
            ),
            Container(
              height: SizeConfig.height * 0.36,
              width: SizeConfig.width,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: BezierChart(
                bezierChartScale: BezierChartScale.HOURLY,
                fromDate: DateTime(2021, 1, 1, 0, 0),
                toDate: DateTime(2021, 1, 1, 7, 30),
                series: lines,
                config: BezierChartConfig(
                    startYAxisFromNonZeroValue: false,
                    bubbleIndicatorColor: Colors.white.withOpacity(0.9),
                    footerHeight: 40,
                    xAxisTextStyle: TextStyle(
                        color: Style.backgroundColor2,
                        fontWeight: FontWeight.w600),
                    yAxisTextStyle: TextStyle(
                        color: Style.backgroundColor2,
                        fontWeight: FontWeight.w600),
                    verticalIndicatorStrokeWidth: 3.0,
                    verticalIndicatorColor: Style.primaryColor,
                    showVerticalIndicator: true,
                    verticalIndicatorFixedPosition: false,
                    displayYAxis: true,
                    stepsYAxis: 5000,
                    backgroundGradient: LinearGradient(
                      colors: [
                        Style.backgroundColor,
                        Style.backgroundColor.withOpacity(0.8),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    snap: true),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: SizeConfig.width,
              child: Row(
                children: [
                  MapMark(
                      color: Color(0xffFFB664),
                      score: "57.47%",
                      team: "Arsenal"),
                  MapMark(
                      color: Color(0xff76FC9D), score: "25.00%", team: "Draw"),
                  MapMark(
                      color: Color(0xff70FFE7),
                      score: "16.67%",
                      team: "Man Utd"),
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        color: Style.backgroundColor,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Style.appWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          width: SizeConfig.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Full Time Result",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.w700, height: 2),
              ),
              SizedBox(
                height: 5,
              ),
              Text.rich(
                TextSpan(
                    text: "Traded: ",
                    style: Theme.of(context).textTheme.bodyText1,
                    children: [
                      TextSpan(
                        text: "\$480 150",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Style.appGreen, fontWeight: FontWeight.w700),
                      ),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Color(0xffE5E5E7),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Contract",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "100.37%",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "98.56%",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Text("Arsenal",
                          style: Theme.of(context).textTheme.headline5)),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Style.appGreen,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "1.72",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Style.appWhite, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Style.appOrange,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "1.84",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Style.appWhite, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MapMark extends StatelessWidget {
  final Color color;
  final String team, score;
  MapMark({this.color, this.score, this.team});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: color,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                team,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Style.appWhite),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Style.backgroundColor2,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              score,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
