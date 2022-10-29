import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/all_text_style.dart';
import '../widgets/customBut.dart';
import '../widgets/custom_input.dart';

class ChangePassword extends StatelessWidget {
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
                    child: Text("Pr", style: BigTextStyle()),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            CustomInput(
              hint: "***************",
              lep: "your old password",
            ),
            CustomInput(
              hint: "***************",
              lep: "New password",
            ),
            CustomInput(
              hint: "***************",
              lep: "Confirme your passwword",
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: CustomButton(
                  text: 'Change',
                  color: Colors.deepOrangeAccent,
                  width: double.infinity,
                  // MediaQuery.of(context).size.width*.8,
                  hight: 40,
                  onClick: () {
                    Get.defaultDialog(
                        title: "Confirmation",
                        //  middleText: "Take a new phhoto or import one from your library",
                        contentPadding: EdgeInsets.all(8),
                        titlePadding: EdgeInsets.all(16),
                        titleStyle: TextStyle(color: Colors.black),
                        middleTextStyle: TextStyle(color: Colors.black),
                        textConfirm: "OPEN MY MAILBOX",
                        //textCancel: "CAMERA",
                        //  cancelTextColor: Colors.blue,
                        confirmTextColor: Colors.blue,
                        buttonColor: Colors.white,
                        backgroundColor: Colors.white,
                        radius: 10,
                        content: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "open your mailbox and click on the activation link"),
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
