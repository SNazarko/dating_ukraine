import 'package:dating_ukraine/pages/auth_reg_pages/registration.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


import 'widgets/header_widget.dart';

class rules extends StatefulWidget {
  const rules({Key? key}) : super(key: key);

  @override
  _rulesState createState() => _rulesState();
}

class _rulesState extends State<rules> {

  @override
  Widget build(BuildContext context) {
    double _headerHeight = 300;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: _headerHeight,
                child: HeaderWidget(
                    _headerHeight, true, Icons.info_outline),
              ),
              SafeArea(
                child: Container(
                  margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Умови користування:',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54
                              ),
                              // textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10,),
                            Text(
                              '1. Тобі вже 18, або більше років; \n2. Стався з повагою до інших користувачів; \n3. Не займайся шахрайством; \n4. Не використовуй цей додаток з метою торгівлі товарами; \n5. Не розміщуй чужі фото.',
                              style: TextStyle(
                                // fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54
                              ),
                              // textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 40.0),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: "Бажаємо приємно провести час та вдалих знайомств. "),
                                  TextSpan(
                                    text: 'Продовжити реєстрацію',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => RegistrationPage()),
                                        );
                                      },
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}