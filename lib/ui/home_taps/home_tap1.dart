import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../utility/all_text_style.dart';
import '../../widgets/widget_drawer.dart';
import '../../widgets/customBut.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: WidgetDrawer(),
      appBar: AppBar(elevation: 0, backgroundColor: Colors.blue[700]),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi,Nedra !",
                      style: BigTextStyle(),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/206/206881.png"),
                      backgroundColor: Colors.deepPurple,
                      maxRadius: 25,
                    ),
                  ],
                ),
              ),
              Center(
                  child: Text(
                "APPROVED SEIZURE",
                style: BigTextStyle(),
              )),
              SizedBox(
                height: 8,
              ),
              Expanded(
                  child: Container(
                child: Stack(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back_ios_new,
                          size: 30, color: Colors.grey),
                      Expanded(
                          child: Container(
                        child: Stack(alignment: Alignment.center, children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepPurpleAccent),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: CircularPercentIndicator(
                              radius: 50.0,
                              lineWidth: 8,
                              backgroundColor:
                                  Colors.blueAccent.withOpacity(.3),
                              percent: 2 / 4,
                              animation: true,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Text("2 \n Seizur".toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold)),
                              progressColor: Colors.deepOrange,
                            ),
                          ),
                        ]),
                      )),
                      Icon(Icons.arrow_forward_ios,
                          size: 30, color: Colors.grey)
                    ],
                  )
                ]),
              )),

              //  SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 20, right: 40, left: 40),
                child: CustomButton(
                  text: 'Log an undetected Seizure Alert',
                  onClick: () {},
                  hight: 40,
                  color: Colors.deepOrangeAccent,
                  width: double.infinity,
                ),
              )
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.separated(
            itemCount: 50,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Convulsve senzure",
                            style: mediumTextStyle(),
                          ),
                          Text(
                            "15 sec",
                            style: infoTextStyle(),
                          ),
                          Text(
                            "I whatching tv .............",
                            style: sTextStyle(),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "3:20",
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
          ))
        ],
      ),
    );
    ;
  }
}
