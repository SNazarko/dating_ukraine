import 'package:flutter/material.dart';
import '../common/theme_helper.dart';
import 'dating_search.dart';
import 'widgets/header_widget.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  _settings createState() => _settings();
}

class _settings extends State<settings> {
  double _headerHeight = 250;

  bool? switchListTileValue1;
  bool? switchListTileValue2;
  bool? switchListTileValue3;
  bool? switchListTileValue4;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true,
                  Icons.settings_outlined), //let's create a common header widget
            ),
            SizedBox(height: 50.0),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Сповіщення',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54
                    ),
                    // textAlign: TextAlign.center,
                  ),
                  SwitchListTile(
                    value: switchListTileValue1 ??= true,
                    onChanged: (newValue) async {
                      setState(() => switchListTileValue1 = newValue);
                    },
                    title: Text(
                      'Усі сповіщення',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    activeColor: Color(0xFFFF3CBD),
                    activeTrackColor: Color(0xFFFFC867),
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                  ),
                  ),
                  SwitchListTile(
                    value: switchListTileValue2 ??= true,
                    onChanged: (newValue) async {
                      setState(() => switchListTileValue2 = newValue);
                    },
                    title: Text(
                      'Повідомлення',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    activeColor: Color(0xFFFF3CBD),
                    activeTrackColor: Color(0xFFFFC867),
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SwitchListTile(
                    value: switchListTileValue3 ??= true,
                    onChanged: (newValue) async {
                      setState(() => switchListTileValue3 = newValue);
                    },
                    title: Text(
                      'Симпатії',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    activeColor: Color(0xFFFF3CBD),
                    activeTrackColor: Color(0xFFFFC867),
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).primaryColor,
                    height: 1,
                  ),
                  SizedBox(height: 20.0),
                  Text('Конфіденційність',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54
                    ),
                    // textAlign: TextAlign.center,
                  ),
                  SwitchListTile(
                    value: switchListTileValue4 ??= true,
                    onChanged: (newValue) async {
                      setState(() => switchListTileValue4 = newValue);
                    },
                    title: Text(
                      'Я є у пошуку',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    activeColor: Color(0xFFFF3CBD),
                    activeTrackColor: Color(0xFFFFC867),
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).primaryColor,
                    height: 1,
                  ),
                  SizedBox(height: 40.0),

                ],
              ),
            ),
            Container(
              decoration:
              ThemeHelper().buttonBoxDecoration(context),
              child: ElevatedButton(
                style: ThemeHelper().buttonStyle(),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(
                    'Зберегти'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                onPressed: () {
                  //After successful login we will redirect to profile page. Let's create profile page now
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => dating_search()));
                },
              ),
            ),

          ]),
        ));
  }
}


