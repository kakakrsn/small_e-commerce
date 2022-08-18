import 'package:flutter/material.dart';

import '../theme.dart';
import 'home_page.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg-welcome2.png'), fit: BoxFit.fill),
        ),
        child: Center(
          child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 14,
                fit: FlexFit.tight,
                child: Text(''),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: ElevatedButton(
                  child: const Text(
                    'Pesan Sekarang',
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    textStyle: textButtonStyle,
                    fixedSize: const Size(335.0, 52.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        ),
      ),
      
    );
  }
}