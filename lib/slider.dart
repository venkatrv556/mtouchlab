import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Slidersc extends StatefulWidget {
  const Slidersc({super.key});

  @override
  State<Slidersc> createState() => _SliderscState();
}

int currentpage = 0;

class _SliderscState extends State<Slidersc> {
  List<String> imagelist = [
    'assets/images/slide1.jpg',
    'assets/images/slide2.jpg',
    'assets/images/slide3.jpg',
    'assets/images/slide4.jpg',

    //  https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiEcZ8l3wYpLkM33yMjdrE-FXjrbFV3-pg-w&s
  ];

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("AppstoreGPT"),
          backgroundColor: Colors.green,
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   type: BottomNavigationBarType.fixed,
        //   items: const [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.collections_bookmark,
        //       ),
        //       label: "bookings",
        //     ),
        //     BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.account_circle), label: "Profile"),
        //   ],
        //   selectedItemColor: const Color.fromARGB(255, 91, 53, 229),
        //   unselectedItemColor: const Color.fromARGB(255, 113, 182, 105),
        // ),
        body: SingleChildScrollView(
            child: Column(children: [
          CarouselSlider(
            items: imagelist
                .map(
                  (e) => Image.asset(e),
                )
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              autoPlay: true,
              height: 230,
              autoPlayInterval: const Duration(seconds: 2),
              enlargeCenterPage: true,
              enlargeFactor: 0.2,
              scrollDirection: Axis.horizontal,
              onPageChanged: (value, reason) {
                setState(() {
                  currentpage = value;
                });
              },
            ),
          ),
          sliderchangemethod(),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 90,
                  width: 70,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Center(child: Text("App $index")),
                      Align(
                          alignment: Alignment.center, child: Text("Download"))
                    ],
                  ),
                  color: const Color.fromARGB(255, 159, 228, 161),
                );
              },
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    height: 90,
                    width: 70,
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Center(child: Text("App $index")),
                        Align(
                            alignment: Alignment.center,
                            child: Text("Download"))
                      ],
                    ),
                    color: const Color.fromARGB(255, 239, 165, 223),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 90,
                  width: 70,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Center(child: Text("App $index")),
                      Align(
                          alignment: Alignment.center, child: Text("Download"))
                    ],
                  ),
                  color: const Color.fromARGB(255, 144, 235, 229),
                );
              },
            ),
          ),
        ])));
  }

  sliderchangemethod() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < imagelist.length; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: i == currentpage ? 8 : 5,
              width: i == currentpage ? 8 : 5,
              decoration: BoxDecoration(
                color: i == currentpage ? Colors.black : Colors.grey,
                shape: BoxShape.circle,
              ),
            )
        ],
      ),
    );
  }
}
