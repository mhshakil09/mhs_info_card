import 'package:flutter/material.dart';
import 'package:mhs_info_card/constants.dart';
import 'package:mhs_info_card/screens/test_screen/components/background.dart';
import 'package:mhs_info_card/widgets/info_card_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _sendEmailTo(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _openUrlTo(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            foregroundImage: AssetImage('assets/images/maruf.jpg'),
            radius: 50.0,
          ),
          const SizedBox(height: 10.0),
          const Text(
            PROFILER_NAME,
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 28.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            PROFILER_DESIGNATION.toUpperCase(),
            style: const TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 16.0,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB2DFDB),
            ),
          ),
          const SizedBox(
            height: 20.0,
            width: 200.0,
            child: Divider(
              thickness: 1,
              color: Colors.tealAccent,
            ),
          ),
          GestureDetector(
            onTap: () async {
              /*
              * tel:<phone number>,
              * e.g. tel:+1 555 010 999
              * */
              String tempPhoneNumber = 'tel:' + PROFILER_CONTACT_NUMBER;
              setState(() {
                _makePhoneCall(tempPhoneNumber);
                // _makePhoneCall('tel:+8801676100969');
              });
            },
            child: const Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  PROFILER_CONTACT_NUMBER,
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                    color: Color(0xFF004D40),
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          GestureDetector(
            onTap: () async {

              /*
              * mailto:<email address>?subject=<subject>&body=<body>,
              *  e.g. mailto:smith@example.org?subject=News&body=New%20plugin
              * */
              String tempEmailAddress = 'mailto:' + PROFILER_CONTACT_EMAIL;
              setState(() {
                _sendEmailTo(tempEmailAddress);
              });
            },
            child: const Card(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  PROFILER_CONTACT_EMAIL,
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                    color: Color(0xFF004D40),
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          GestureDetector(
            onTap: () async {

              /*
              * mailto:<email address>?subject=<subject>&body=<body>,
              *  e.g. mailto:smith@example.org?subject=News&body=New%20plugin
              * */
              String tempEmailAddress = 'https://' + 'sites.google.com/view/mhshakil09';
              setState(() {
                _openUrlTo(tempEmailAddress);
              });
            },
            child: const InfoCardWidget(icon: Icons.link, iconColor: Colors.teal, text: 'sites.google.com/view/mhshakil09')
          ),
        ],
      ),
    );
  }
}
