import 'package:flutter/material.dart';
import 'package:prectice_task/core/model/compability.dart';
import 'package:prectice_task/core/model/schedule.dart';
import 'package:prectice_task/custom_continer1.dart';
import 'package:prectice_task/custom_continer2.dart';
import 'package:prectice_task/core/constant/text_style.dart';
import 'core/constant/textfomafield.dart';
import 'custom_continer3.dart';

class HomeScreen extends StatelessWidget {
  final List<CompabilityModel> mylist = [
    CompabilityModel(
      img: "assets/img/women.png",
      title: "Alexis Ray",
      subtitle: "San Francisco",
    ),

    CompabilityModel(
      img: "assets/img/man.png",
      title: "Jordan Lee",
      subtitle: "New York",
    ),
    CompabilityModel(
      img: "assets/img/women.png",
      title: "Taylor Kim",
      subtitle: "Chicago",
    ),
    CompabilityModel(
      img: "assets/img/man.png",
      title: "Jordan Lee",
      subtitle: "New York",
    ),
    CompabilityModel(
      img: "assets/img/cooking.png",
      title: "Jordan Lee",
      subtitle: "New York",
    ),
  ];
  final List<Schedule> list2 = [
    Schedule(
      imgh: "assets/img/vallyboll.png",
      title1: "Beach Volleyball",
      subtitle1: "Monday, 5:00 PM",
    ),
    Schedule(
      imgh: "assets/img/vallyboll.png",
      title1: "Beach Volleyball",
      subtitle1: "Monday, 5:00 PM",
    ),
    Schedule(
      imgh: "assets/img/vallyboll.png",
      title1: "Beach Volleyball",
      subtitle1: "Monday, 5:00 PM",
    ),
    Schedule(
      imgh: "assets/img/vallyboll.png",
      title1: "Beach Volleyball",
      subtitle1: "Monday, 5:00 PM",
    ),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TextFormField(decoration: authdecoration)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Dashboard", style: style2),
                SizedBox(height: 30),
                Text("Compatibility Scores", style: style1),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mylist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomContiner1(compabilityModel: mylist[index]),
                      );
                    },
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nearby Matches", style: style1),
                    Text(
                      "See Details",
                      style: style1.copyWith(color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 310,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomContiner2(
                          img: "assets/img/group.png",
                          title: "Hiking Group",
                          date: "Saturday",
                          time: "10:00 AM",
                          text: "Join us for a local hike!",
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Activities", style: style1),
                    Text(
                      "See All",
                      style: style1.copyWith(color: Colors.blueAccent),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Scheduled Meetups", style: style1),
                    Text(
                      "See All",
                      style: style1.copyWith(color: Colors.blueAccent),
                    ),
                  ],
                ),

                SizedBox(
                  height: 250,

                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list2.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomContiner3(schedule: list2[index]),
                      );
                    },
                  ),
                ),
                Center(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(300, 60), // width, height
                    ),
                    child: Text(
                      "Interact with AI Assistant,",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 6, 6, 6),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "group"),
        ],
      ),
    );
  }
}
