import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportsapp/elements.dart';
import 'package:sportsapp/sizeconfig.dart';
import 'package:sportsapp/style.dart';

class SportsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Style.backgroundColor,
        appBar: AppBar(
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
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: SizeConfig.width,
                height: SizeConfig.width * 0.25,
                margin: EdgeInsets.only(bottom: 30),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemExtent: SizeConfig.width * 0.25,
                    itemBuilder: (ctx, i) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Style.backgroundColor2,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              games[i].path,
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(games[i].game,
                                style: TextStyle(
                                  color: Style.appWhite,
                                ))
                          ],
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Upcoming Markets",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Style.appWhite, fontWeight: FontWeight.w700)),
              ),
              Container(
                width: SizeConfig.width,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color(0xff2F323C).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Positioned(
                      left: -100,
                      top: 0,
                      child: SvgPicture.asset(
                        "assets/arsenal.svg",
                        color: Colors.white.withOpacity(0.02),
                        width: 250,
                      ),
                    ),
                    Positioned(
                      right: -100,
                      top: 0,
                      child: SvgPicture.asset(
                        "assets/manchester-united.svg",
                        color: Colors.white.withOpacity(0.02),
                        width: 250,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Style.appGreen, width: 2),
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xff282B35),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                    radius: 5, backgroundColor: Style.appGreen),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "LIVE",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(
                                        color: Style.appWhite,
                                        letterSpacing: 2,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/arsenal.svg",
                                    height: 80,
                                    width: 80,
                                    color: Style.appWhite,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Arsenal",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              color: Style.appWhite
                                                  .withOpacity(0.7)))
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "2",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2
                                            .copyWith(
                                                color: Style.appWhite,
                                                fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        ":",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3
                                            .copyWith(
                                                color: Style.appWhite
                                                    .withOpacity(0.5)),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "1",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2
                                            .copyWith(
                                                color: Style.appWhite,
                                                fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "72'",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: Style.appGreen),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/manchester-united.svg",
                                    height: 80,
                                    width: 80,
                                    color: Style.appWhite,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Man United",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              color: Style.appWhite
                                                  .withOpacity(0.7)))
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Scorecard(
                                first: "1",
                                second: "  2.34",
                              ),
                              Scorecard(
                                first: "X",
                                second: "  5.40",
                              ),
                              Scorecard(
                                first: "2",
                                second: "  3.14",
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              News(
                title: "Barcelona VS Real Madrid",
                subtitle: "Saturday, 28 Aug 2021. 2:30 AM",
              ),
              News(
                title: "Arsenal VS Aston Villa",
                subtitle: "Thursday, 2 Sep 2021. 5:00 AM",
              ),
              News(
                title: "Barcelona VS Real Madrid",
                subtitle: "Saturday, 28 Aug 2021. 2:30 AM",
              ),
              News(
                title: "Arsenal VS Aston Villa",
                subtitle: "Thursday, 2 Sep 2021. 5:00 AM",
              ),
              News(
                title: "Barcelona VS Real Madrid",
                subtitle: "Saturday, 28 Aug 2021. 2:30 AM",
              ),
              News(
                title: "Arsenal VS Aston Villa",
                subtitle: "Thursday, 2 Sep 2021. 5:00 AM",
              ),
              News(
                title: "Barcelona VS Real Madrid",
                subtitle: "Saturday, 28 Aug 2021. 2:30 AM",
              ),
              News(
                title: "Arsenal VS Aston Villa",
                subtitle: "Thursday, 2 Sep 2021. 5:00 AM",
              ),
              News(
                title: "Barcelona VS Real Madrid",
                subtitle: "Saturday, 28 Aug 2021. 2:30 AM",
              ),
              News(
                title: "Arsenal VS Aston Villa",
                subtitle: "Thursday, 2 Sep 2021. 5:00 AM",
              ),
            ],
          ),
        ));
  }
}

class News extends StatelessWidget {
  final String title, subtitle;

  News({this.subtitle, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(color: Style.appWhite.withOpacity(0.7)),
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context)
            .textTheme
            .bodyText1
            .copyWith(color: Style.appWhite.withOpacity(0.5)),
      ),
      trailing: Icon(
        Icons.clear,
        color: Style.appWhite.withOpacity(0.7),
      ),
    );
  }
}

class Scorecard extends StatelessWidget {
  final String first, second;
  Scorecard({this.first, this.second});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xff1C1F2C),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text.rich(TextSpan(
            text: first,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.white),
            children: [
              TextSpan(
                text: second,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.white.withOpacity(0.5)),
              )
            ])),
      ),
    );
  }
}
