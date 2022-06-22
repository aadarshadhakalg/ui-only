import 'package:flutter/material.dart';
import 'package:flutter_ui/tabconstents/tab1.dart';
import 'package:flutter_ui/widgets/hero.dart';
import 'package:flutter_ui/widgets/tabs.dart';
import 'package:flutter_ui/widgets/topbar.dart';

void main() {
  runApp(FlutterUI());
}

class FlutterUI extends StatelessWidget {
  FlutterUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ScrollWidget(),
        ),
      ),
    );
  }
}

class ScrollWidget extends StatefulWidget {
  const ScrollWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ScrollWidget> createState() => _ScrollWidgetState();
}

class _ScrollWidgetState extends State<ScrollWidget> {
  bool isVisibleOnNav = false;
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollNotification) {
        if (scrollNotification.metrics.pixels > 250) {
          setState(() {
            isVisibleOnNav = true;
          });
        } else {
          setState(() {
            isVisibleOnNav = false;
          });
        }
        return true;
      },
      child: Column(
        children: [
          TopBar(
            isButtonVisible: isVisibleOnNav,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HeroSection(
                    isVisible: !isVisibleOnNav,
                  ),
                  LayoutBuilder(builder: (context, constraints) {
                    var desktop = constraints.maxWidth > 700;
                    return ClipPath(
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            desktop ? const SizedBox() : const Divider(),
                            TabbedView(
                              onChange: (val) {
                                setState(() {
                                  activeIndex = val;
                                });
                              },
                            ),
                            activeIndex == 0
                                ? const TabbedContent(
                                    topic:
                                        "Drei einfache Schritte zu deinem neuen Job",
                                    firstImage: "assets/images/1.png",
                                    secondText: 'Erstellen dein Lebenslauf',
                                    thirdText:
                                        "Mit nur einem Klick \n bewerben",
                                    thirdImage: "assets/images/7.png",
                                    secondImage: "assets/images/6.png",
                                    firstText: 'Erstellen dein Lebenslauf',
                                  )
                                : (activeIndex == 1
                                    ? const TabbedContent(
                                        topic:
                                            "Drei einfache Schritte zu deinem neuen Mitarbeiter",
                                        firstImage: "assets/images/1.png",
                                        secondText: 'Erstellen ein Jobinserat',
                                        thirdText:
                                            "Wähle deinen neuen Mitarbeiter aus",
                                        thirdImage: "assets/images/5.png",
                                        secondImage: "assets/images/4.png",
                                        firstText: 'Erstellen dein Lebenslauf',
                                      )
                                    : const TabbedContent(
                                        topic:
                                            "Drei einfache Schritte zur Vermittlung neuer Mitarbeiter",
                                        firstImage: "assets/images/1.png",
                                        secondText:
                                            'Erhalte Vermittlungs- angebot von Arbeitgeber',
                                        thirdText:
                                            "Vermittlung nach Provision oder Stundenlohn",
                                        thirdImage: "assets/images/2.png",
                                        secondImage: "assets/images/3.png",
                                        firstText: 'Erstellen dein Lebenslauf',
                                      )),
                          ],
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
