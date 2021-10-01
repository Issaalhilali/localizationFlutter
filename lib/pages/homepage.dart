import 'package:flutter/material.dart';
import 'package:tatutiallocalization/classes/language.dart';
import 'package:tatutiallocalization/localiation/demo_localization.dart';
import 'package:tatutiallocalization/localiation/language_constants.dart';
import 'package:tatutiallocalization/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _changeLanguage(Language language) {
    Locale _temp;
    switch (language.languageCode) {
      case 'en':
        _temp = Locale(language.languageCode, 'US');
        break;
      case 'ar':
        _temp = Locale(language.languageCode, 'SA');
        break;
      default:
        _temp = Locale(language.languageCode, 'SA');
    }
    MyApp.setLoocale(context, _temp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              underline: SizedBox(),
              icon: const Icon(Icons.language),
              onChanged: (Language? language) {
                _changeLanguage(language!);
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
                      value: lang,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(lang.flag),
                            Text(lang.name),
                          ])))
                  .toList(),
            ),
          ),
        ],
      ),
      drawer: _drawerList(),
      body: Center(
        child: Text(getlang(context, 'home')),
      ),
    );
  }

  Container _drawerList() {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    TextStyle _textstyle = const TextStyle(
      fontSize: 24,
      color: Colors.white,
    );
    return Container(
        width: size.width / 1.5,
        color: theme.primaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [DrawerHeader(child: Container())],
        ));
  }
}
