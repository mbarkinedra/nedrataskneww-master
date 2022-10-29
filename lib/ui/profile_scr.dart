import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/all_text_style.dart';
import '../widgets/customBut.dart';
import '../widgets/custom_input.dart';

class ProfileSCR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(.1),
      appBar: AppBar(elevation: 0, backgroundColor: Colors.blueAccent),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Personel informaton", style: BigTextStyle()),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Stack(
                children: [

                    CircleAvatar(backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/512/206/206881.png"),
                      backgroundColor: Colors.deepPurple,
                      maxRadius: 35,
                    ),
                  Positioned(
                    top: -2,
                    right: -2,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Icon(Icons.edit)),
                    ),
                  ),
                ],
              ),
            ),
            CustomInput(
              lep: "Name :",
            ),
            SizedBox(
              height: 8,
            ),
            CustomInput(
              lep: "Family Name :",
            ),
            SizedBox(
              height: 8,
            ),
            CustomInput(
              lep: "Email :",
            ),
            SizedBox(
              height: 8,
            ),
            CustomInput(
              lep: "Phone :",
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: CustomButton(
                  text: 'confirm',
                  color: Colors.deepOrangeAccent,
                  width: double.infinity,
                  // MediaQuery.of(context).size.width*.8,
                  hight: 40,
                  onClick: () {
                    Get.defaultDialog(
                        title: "Take photo",
                        //  middleText: "Take a new phhoto or import one from your library",
                        contentPadding: EdgeInsets.all(8),
                        titlePadding: EdgeInsets.all(16),
                        titleStyle: TextStyle(color: Colors.black),
                        middleTextStyle: TextStyle(color: Colors.black),
                        textConfirm: "GALLERY",
                        textCancel: "CAMERA",
                        cancelTextColor: Colors.blue,
                        confirmTextColor: Colors.blue,
                        buttonColor: Colors.white,
                        backgroundColor: Colors.white,
                        radius: 10,
                        content: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Take a new photo or import one from your library"),
                            )
                          ],
                        ));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
