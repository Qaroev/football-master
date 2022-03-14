import 'package:flutter/material.dart';
import 'package:football/widgets/widgets.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff111111),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_outlined,
          ),
        ),
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff1d1d1d),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(19, 175, 175, 1)),
                ),
              ),
              strem().settings(Icons.build_outlined, "Favourite Leagues",
                  "Select your Favourite LEague you want\nto displayed in the My League Menu"),
              Divider(
                color: Colors.grey,
              ),
              strem().settings(Icons.feed_outlined, "News Settings",
                  "Select your Favourite LEague you want\nto displayed in the My League Menu"),
              Divider(
                color: Colors.grey,
              ),
              strem().settings(
                  Icons.cloud_upload_outlined,
                  "Backup League Settings",
                  "Select your Favourite LEague you want\nto displayed in the My League Menu"),
              Divider(
                color: Colors.grey,
              ),
              strem().settings(Icons.location_on_outlined, "Preferred region",
                  "Select your Favourite LEague you want\nto displayed in the My League Menu"),
              Divider(
                color: Colors.grey,
              ),
              strem().settings(Icons.notifications_outlined,
                  "Push notifications", "Get push notifications and alerts?"),
              Divider(
                color: Colors.grey,
              ),
              strem().settings(Icons.settings_outlined, "Defaul League Menu",
                  "All League Menu"),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Others",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(19, 175, 175, 1)),
                ),
              ),
              strem().settings(Icons.g_translate_outlined, "Help Translate",
                  "Use Crowdln.net to translate this app\n(Get a first Promo code"),
              Divider(
                color: Colors.grey,
              ),
              strem().settings(Icons.sms_failed_outlined, "About",
                  "About Developer and App version"),
            ],
          ),
        ),
      ),
    );
  }
}
