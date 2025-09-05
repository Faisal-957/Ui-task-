import 'package:flutter/material.dart';
import 'package:prectice_task/core/model/beauty_service.dart';
import 'package:prectice_task/grid_continer.dart';
import 'package:prectice_task/core/constant/text_style.dart';

class Home2 extends StatefulWidget {
  Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int? selectedIndex;

  final List<BeautyService> list11 = [
    BeautyService(
      title: "Eyes",
      img: "assets/img/haircut.png",
      colorss: Color(0xffFCE9E9),
      avatarcolor: Color(0xffFAC7C7),
    ),
    BeautyService(
      title: "face",
      img: "assets/img/Part.png",
      colorss: Color(0xffFCF1EA),
      avatarcolor: Color(0xffFEDAC2),
    ),
    BeautyService(
      title: "Treatments",
      img: "assets/img/bottle.png",
      colorss: Color(0xfffE8F7FC),
      avatarcolor: Color(0xffCBF0FB),
    ),
    BeautyService(
      title: "Brushes",
      img: "assets/img/haircut.png",
      colorss: Color(0xffFCE9E9),
      avatarcolor: Color(0xffFAC7C7),
    ),
    BeautyService(
      title: "Kits",
      img: "assets/img/Part.png",
      colorss: Color(0xffFCF1EA),
      avatarcolor: Color(0xffFEDAC2),
    ),
    BeautyService(
      title: "Lips",
      img: "assets/img/bottle.png",
      colorss: Color(0xfffE8F7FC),
      avatarcolor: Color(0xffCBF0FB),
    ),
    BeautyService(
      title: "Nails",
      img: "assets/img/haircut.png",
      colorss: Color(0xffFCE9E9),
      avatarcolor: Color(0xffFAC7C7),
    ),
    BeautyService(
      title: "Fragrance",
      img: "assets/img/Part.png",
      colorss: Color(0xffFCF1EA),
      avatarcolor: Color(0xffFEDAC2),
    ),
    BeautyService(
      title: "Wellness",
      img: "assets/img/bottle.png",
      colorss: Color(0xfffE8F7FC),
      avatarcolor: Color(0xffCBF0FB),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back)),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Beauty Services,", style: style2),
            SizedBox(height: 30),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: list11.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;
                  return InkWell(
                    borderRadius: BorderRadius.circular(13),
                    onTap: () {
                      setState(() {
                        selectedIndex = index; // update selection
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          color: isSelected ? Colors.pink : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: GridContiner(beautyService: list11[index]),
                    ),
                  );

                  // GridContiner(beautyService: list11[index]);
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffEA337E),
                  foregroundColor: Colors.white,
                  minimumSize: Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Contineus",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
