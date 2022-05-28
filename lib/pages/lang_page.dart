import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LangPage extends StatefulWidget {
  static const String id = "lang_page";

  const LangPage({Key? key}) : super(key: key);

  @override
  State<LangPage> createState() => _LangPageState();
}

class _LangPageState extends State<LangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 50, top: 50, left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "welcome",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ).tr(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  color: Colors.green,
                  height: 45,
                  onPressed: () {
                    context.locale = Locale('en', "US");
                  },
                  child: Text("English"),
                ),
                FlatButton(

                  color: Colors.red,
                  height: 45,
                  onPressed: () {
                    context.locale = Locale("ru","RU");
                  },
                  child: Text("Russian"),
                ),
                FlatButton(
                  color: Colors.blue,
                  height: 45,
                  onPressed: () {
                    context.locale = Locale('uz',"UZ");
                  },
                  child: Text("Uzbek"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
