import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timelines/timelines.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> numbers = [
    '6\n OCT',
    '7\n OCT',
    '8\n OCT',
    '9\n OCT',
    '10\n OCT',
    '11\n OCT',
    '12\n OCT',
    '13\n OCT'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 237,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/backgrounds/background.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    height: 237,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color.fromARGB(63, 244, 245, 249),
                        Color(0xffF3F5F9),
                        Color(0xffF3F5F9),
                        Color(0xffF3F5F9),

                        // Color.fromARGB(255, 255, 255, 255),
                        // Color.fromARGB(255, 255, 255, 255),
                        // Color.fromARGB(255, 255, 255, 255),
                      ],
                    )),
                  ),
                  const Positioned(child: BackButton(), top: 52, left: 18),
                  const Positioned(
                    child: Text(
                      'Add \nActivities 🗺',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    top: 115,
                    left: 22,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 24, 0, 0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 1, 8, 1),
                        child: const Text(
                          'Activities',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0)),
                        backgroundColor: Color(0xff008F8F),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    TextButton(
                      onPressed: null,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
                        child: Text(
                          'Addons',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            side:
                                BorderSide(color: Color(0xff008F8F), width: 2)),
                        backgroundColor: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 18, top: 24),
                height: 105,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return TextButton(
                        onPressed: null,
                        child: Text(
                          numbers[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: numbers[index] == '6\n OCT'
                                  ? Colors.white
                                  : Color(0xff008F8F),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(
                                  color: numbers[index] == '6\n OCT'
                                      ? Color(0xff008F8F)
                                      : Color(0xffDADADA))),
                          backgroundColor: numbers[index] == '6\n OCT'
                              ? Color(0xff008F8F)
                              : Colors.white,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    itemCount: numbers.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: Timeline.tileBuilder(
                  builder: TimelineTileBuilder.connectedFromStyle(
                    connectorStyleBuilder: (context, index) {
                      return ConnectorStyle.dashedLine;
                    },
                    indicatorStyleBuilder: (context, index) {
                      return IndicatorStyle.dot;
                    },
                    contentsAlign: ContentsAlign.basic,
                    contentsBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: index == 0 || index == 3
                          ? Container(
                              height: 86.0,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14)),
                                color: const Color(0xffDDF4ED).withOpacity(0.9),
                                child: ListTile(
                                  leading: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Image.asset(
                                      "assets/icons/apartment.png",
                                    ),
                                  ),
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Crowne Plaza Jeddah,\n an IHG Hotle",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                        ),
                                      ),
                                      const Divider(
                                        thickness: 2.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Hotel",
                                            style: TextStyle(
                                              color: Color(0xff2B715C),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10,
                                            ),
                                          ),
                                          Text(
                                            "Edit",
                                            style: TextStyle(
                                              color: Color(0xffDF5F4C),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(
                              height: 101,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    index == 1
                                        ? Image.asset(
                                            "assets/backgrounds/person2.png",
                                            width: 115,
                                            height: 101,
                                            fit: BoxFit.cover,
                                          )
                                        : Image.asset(
                                            "assets/backgrounds/person1.png",
                                            width: 115,
                                            height: 101,
                                            fit: BoxFit.cover,
                                          ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.0, top: 7.0),
                                            child: Text(
                                              "Hiking",
                                              style: TextStyle(
                                                color: Color(0xff342F2F),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, right: 10.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: const [
                                                  Text(
                                                    "From 8 AM to 12 PM",
                                                    style: TextStyle(
                                                      color: Color(0xff747474),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Edit",
                                                    style: TextStyle(
                                                      color: Color(0xffDF5F4C),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ),
                    itemCount: 10,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  theme: TimelineThemeData(
                      nodePosition: 0.1,
                      color: Colors.black,
                      connectorTheme:
                          const ConnectorThemeData(color: Color(0xffCBCBCB))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: null,
        style: TextButton.styleFrom(
            elevation: 0.5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            backgroundColor: Colors.white,
            fixedSize: const Size(75, 0)),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/ArrowLeft.svg',
                color: Colors.black, fit: BoxFit.cover),
            const Text(
              'Back',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            )
          ],
        ));
  }
}
