import 'package:flutter/material.dart';

class Mtouchlabssc extends StatefulWidget {
  const Mtouchlabssc({super.key});

  @override
  State<Mtouchlabssc> createState() => _MtouchlabsscState();
}

class _MtouchlabsscState extends State<Mtouchlabssc> {
  List hillnames = [
    " Ride to Nandi Hills",
    " Ride to cochi Hills",
    " Ride to vayanad Hills",
    " Ride to kerala Hills",
  ];
  List titlelist = ["Title 1", "Title 2", "Title 3"];
  List marketlist = [
    "Market 0",
    "Market 1",
    "Market 2",
    "Market 3",
    "Market 4"
  ];
  List garbagelist = ["garbage 1", "garbage 2", "garbage 3"];

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        leading: Icon(Icons.list),
        backgroundColor: Colors.red,
        title: Row(
          children: [
            Text(
              "Vasu",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: screenwidth * 0.25,
            ),
            Container(
              height: screenheight * 0.05,
              width: screenwidth * 0.40,
              decoration: BoxDecoration(
                  //  border: Border.all()
                  ),
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: screenheight * 0.04,
                      width: screenwidth * 0.10,
                      child: Image.asset(
                        "assets/images/hppay.png",
                        fit: BoxFit.contain,
                      )),
                  SizedBox(
                    width: screenwidth * 0.04,
                  ),
                  Icon(Icons.notifications_none),
                  SizedBox(
                    width: screenwidth * 0.04,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    color:
                        // const Color.fromARGB(0, 193, 165, 165),
                        const Color.fromARGB(255, 165, 165, 165),
                    child: Container(
                      height: screenheight * 0.045,
                      width: screenwidth * 0.14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          //  border: Border.all(),
                          color: const Color.fromARGB(0, 15, 0, 6)),
                      child: Center(
                          child: Text(
                        "SOS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: screenheight * 0.25,
                    width: screenwidth,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "assets/images/1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    right: 40,
                    child: Column(
                      children: [
                        Text(
                          "10 days Trip To Araku",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 10,
                    child: Container(
                      height: screenheight * 0.05,
                      width: screenwidth * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow),
                      child: Center(
                          child: Text(
                        "Register Now",
                        style: TextStyle(
                            color: Colors.black,
                            // fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: screenheight * 0.02,
              ),
              Text(
                "EVENTS FOR YOU",
                style: TextStyle(
                    // color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Stack(
                children: [
                  Container(
                    height: screenheight * 0.25,
                    width: screenwidth,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "assets/images/2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 30,
                    child: Column(
                      children: [
                        Container(
                          height: screenheight * 0.04,
                          width: screenwidth * 0.22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.yellow),
                          child: Center(
                              child: Text(
                            "Invited",
                            style: TextStyle(
                                color: Colors.black,
                                // fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "HAYABUSA",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "2019 HYDERABAD RIDERS MEETUP",
                          style: TextStyle(
                              color: Colors.white70,
                              // fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: screenheight * 0.01,
                        ),
                        Container(
                          height: screenheight * 0.05,
                          width: screenwidth * 0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.yellow),
                          child: Center(
                              child: Text(
                            "2000-8000 INR",
                            style: TextStyle(
                                color: Colors.black,
                                // fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      Container(
                        height: screenheight * 0.03,
                        child: const TabBar(
                            unselectedLabelStyle: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            labelStyle: TextStyle(
                                fontSize: 15.5, fontWeight: FontWeight.bold),
                            //  tabAlignment: TabAlignment.start,
                            indicatorColor: Colors.green,
                            labelColor: Colors.green,
                            isScrollable: true,
                            //  labelPadding: EdgeInsets.only(left: 5, right: 5),
                            tabs: [
                              Tab(text: "RIDES"),
                              Tab(text: "STORIES"),
                              Tab(text: "MARKET"),
                              Tab(text: "GARAGE"),
                            ]),
                      ),
                      Container(
                        height: 2000,
                        width: screenwidth,
                        child: TabBarView(children: [
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: hillnames.length,
                            itemBuilder: (context, index) {
                              return Card(
                                child: Container(
                                  // height: screenheight * 0.40,
                                  // width: screenwidth,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: screenheight * 0.20,
                                        width: screenwidth,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/3.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenheight * 0.02,
                                      ),
                                      Text(
                                        "${hillnames[index]}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      ListTile(
                                        leading: CircleAvatar(
                                          child: Icon(Icons.person),
                                        ),
                                        title: Text("Shiva"),
                                        subtitle: Text("Ducati"),
                                        trailing: Text("Co Riders 12"),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: screenheight * 0.03,
                                              width: screenwidth * 0.20,
                                              decoration: BoxDecoration(
                                                  // border: Border.all()
                                                  ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons.gesture,
                                                    color: Colors.orange,
                                                  ),
                                                  Text("900 Km")
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: screenwidth * 0.025,
                                            ),
                                            Container(
                                              height: screenheight * 0.03,
                                              width: screenwidth * 0.28,
                                              decoration: BoxDecoration(
                                                  // border: Border.all()
                                                  ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons.calendar_month,
                                                    color: Colors.orange,
                                                  ),
                                                  Text("Feb 13 2025")
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: screenwidth * 0.025,
                                            ),
                                            Container(
                                              height: screenheight * 0.03,
                                              width: screenwidth * 0.25,
                                              decoration: BoxDecoration(
                                                  // border: Border.all()
                                                  ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons.location_on,
                                                    color: Colors.orange,
                                                  ),
                                                  Text("Hyderabad")
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenheight * 0.02,
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          //  Text("hello"),
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Card(
                                color: const Color.fromARGB(255, 244, 176, 199),
                                child: Container(
                                  height: screenheight * 0.20,
                                  width: screenwidth,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${titlelist[index]}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: screenheight * 0.01,
                                        ),
                                        Text(
                                            "A long time ago, a wealthy king had three beautiful daughters. They had everything they wanted offered to them on a platter of gold. However, only one thing was lacking in their life, none of them had a husband, nor did they have a suitor.")
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: marketlist.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: screenheight * 0.10,
                                  width: screenwidth,
                                  decoration: BoxDecoration(color: Colors.red),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${marketlist[index]}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: garbagelist.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: screenheight * 0.10,
                                  width: screenwidth,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 70, 54, 244)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${garbagelist[index]}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                        ]),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
