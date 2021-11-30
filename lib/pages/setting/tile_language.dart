import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/models/languages.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:mynusa/services/language_provider.dart';
import 'package:mynusa/services/no_glow_scroll_view.dart';
import 'package:provider/provider.dart';

class LanguageTile extends StatefulWidget {
  const LanguageTile({Key? key}) : super(key: key);

  @override
  State<LanguageTile> createState() => _LanguageTileState();
}

class _LanguageTileState extends State<LanguageTile> {
  List<Languages> arrLanguage = [
    Languages(language: "English", locale: 'us'),
    Languages(language: "Indonesian", locale: 'id')
  ];
  void showLanguages(Color color){
    final currentLocale = Provider.of<LanguageProvider>(context, listen: false).currentLocale;
    showMaterialModalBottomSheet(
        backgroundColor: color,
        context: context,
        expand: false,
        bounce: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        builder: (context) => Container(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [

                  Text(
                    S.of(context).choose_language,
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close, size: 28),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Flexible(
                child: ScrollConfiguration(
                  behavior: NoGlowScrollView(),
                  child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(
                            bottom:
                            MediaQuery.of(context).viewInsets.bottom),
                        physics: BouncingScrollPhysics(),
                        itemCount: arrLanguage.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                context.read<LanguageProvider>().changeLocale(arrLanguage[index].locale);
                              });
                              Navigator.pop(context);
                            },
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: 8),
                                    child: Row(
                                      children: [
                                        Image.asset('icons/flags/png/' + arrLanguage[index].locale + '.png',
                                            package: 'country_icons',
                                        width: 20,),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          arrLanguage[index].language,
                                          style: TextStyle(
                                              fontFamily: "Nunito",
                                              fontSize: 16,
                                              fontWeight:
                                              currentLocale.toString() == arrLanguage[index].locale
                                                  ? FontWeight.w700
                                                  : FontWeight.normal),
                                        ),
                                        Spacer(),
                                        currentLocale.toString() == arrLanguage[index].locale
                                            ? Icon(
                                          Icons.check,
                                          color: Color(int.parse(
                                              primaryColor)),
                                        )
                                            : Icon(
                                          Icons.check,
                                          size: 0,
                                        )
                                      ],
                                    )),
                                index != arrLanguage.length - 1
                                    ? Container(
                                  height: 1,
                                  color: Colors.grey,
                                )
                                    : Container()
                              ],
                            ),
                          );
                        },
                      )),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: ListTile(
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 18,
        ),
        leading: Icon(PhosphorIcons.translate),
        title: Text(
          S.of(context).language,
          style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        onTap: () {
          if(!themeChange.darkTheme){
            showLanguages(Colors.white);
          }
          else{
            showLanguages(Color(int.parse(mediumGrey)));
          }
        },
      ),
    );
  }
}

