import 'package:flutter/material.dart';

import '../../utility/all_text_style.dart';
import '../../utility/my_custom_navigator.dart';
import '../../widgets/widget_drawer.dart';
import '../change_password.dart';
import '../profile_scr.dart';

class SettingTap3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: WidgetDrawer(),
      appBar: AppBar(elevation: 0, backgroundColor: Colors.blueAccent),
      body: Column(
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
                  child: Text("Setting", style: BigTextStyle()),
                )),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileSCR()),
                );
              },
              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 16,
                  ),
                  Text("Personal information"),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16),
            child: Divider(
              height: 1,
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePassword()),
                );
              },
              child: Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(
                    width: 16,
                  ),
                  Text("Change password"),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16),
            child: Divider(
              height: 1,
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.miscellaneous_services_outlined),
                SizedBox(
                  width: 20,
                ),
                Text("Access and control"),
                Spacer(),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16),
            child: Divider(
              height: 1,
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.language),
                SizedBox(
                  width: 16,
                ),
                Text("Language"),
                Spacer(),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
