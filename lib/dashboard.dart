import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class CoalitionDashboard extends StatefulWidget {
  const CoalitionDashboard({super.key});

  @override
  State<CoalitionDashboard> createState() => _CoalitionDashboardState();
}

class _CoalitionDashboardState extends State<CoalitionDashboard> {
  List<String> images = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Leopard_2_Prototyp_PT15_T02_105mm.jpg/260px-Leopard_2_Prototyp_PT15_T02_105mm.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Leopard2_a5_front.jpg/260px-Leopard2_a5_front.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Leo2A5.JPG/260px-Leo2A5.JPG"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/cropped-coalitionsmall-1.png",
            height: 500,
          ),
          const Text(
            "ACCESSIBLE MILSIM AND GAMING",
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
          Row(children: [
            Expanded(flex: 1, child: Container()),
            const Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "Coalition is a North American open gaming community centered around the many forms of the ArmA series. Founded in October 2016, Coalition consists of members of various backgrounds from all across the world who value accessible military simulation elements without the bullshit that plagues so many other groups. We strive to provide a structured and enjoyable experience for fresh and experienced players both in ArmA and other games.",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(flex: 1, child: Container())
          ]),
          Row(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 1,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 200.0,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      viewportFraction: 0.33,
                      initialPage: 1,
                    ),
                    items: images.map<Widget>((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  image:
                                      DecorationImage(image: NetworkImage(i))));
                        },
                      );
                    }).toList(),
                  )),
              Expanded(flex: 1, child: Container())
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
              height: 400,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "WHO WE ARE",
                              style:
                                  TextStyle(fontSize: 50, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey),
                                  children: [
                                    TextSpan(
                                      text:
                                          "We are an adult gaming community which hosts ArmA3 sessions twice a week as well as large, multi-community, historical battles called “CCOs” or “Coalition Community Operations” once a month.\n\n",
                                    ),
                                    TextSpan(
                                      text:
                                          "Outside of that, we are also an open gaming community which participates and plays in a plethora of other titles throughout the week.\n\n",
                                    ),
                                    TextSpan(
                                      text:
                                          "Tarkov on Monday? We have that. DCS sorties on Tuesday? No problem. Wednesday though? That’s ArmA day. You never skip ArmA day.\n\n",
                                    ),
                                    TextSpan(
                                      text:
                                          "As such, we offer both an open community of players and a private membership system of players who have different responsibilities in-game and out.\n\n",
                                    ),
                                    TextSpan(
                                      text:
                                          "If you want to show up and play ArmA – or other games – you can do that with no strings attached, but if you want to lead, make your own missions, or otherwise contribute, you have to apply to become a member.",
                                    ),
                                  ],
                                )),
                          ])),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/cropped-beav-2.jpg",
                          fit: BoxFit.fill,
                        ),
                      ))
                ],
              )),
          const SizedBox(height: 50),
          const Text("WHEN WE PLAY",
              style: TextStyle(fontSize: 50, color: Colors.white),
              textAlign: TextAlign.center),
          const SizedBox(height: 10),
          const Text("Coalition has ArmA3 sessions twice a week.",
              style: TextStyle(fontSize: 20, color: Colors.grey),
              textAlign: TextAlign.center),
          const SizedBox(
            height: 20,
          ),
          const Text("SATURDAY at 1700 CDT",
              style: TextStyle(fontSize: 20, color: Colors.grey)),
          const Text(
            "WEDNESDAY at 1900 CDT",
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Other games are dynamically played throughout the week.",
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
