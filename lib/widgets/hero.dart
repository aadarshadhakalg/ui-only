import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/clippers.dart';

import '../constants.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    Key? key,
    required this.isVisible,
  }) : super(key: key);

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 700) {
        return ClipPath(
          clipper: DesktopClipperTop(),
          child: Container(
            color: primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Deine Job \nwebsite',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          fontSize: 42,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Visibility(
                        visible: isVisible,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                  colors: [buttonGradStart, buttonGradEnd]),
                            ),
                            child: const Text(
                              "Kostenlos Registrieren",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Lato",
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 150,
                    backgroundImage: AssetImage(
                      'assets/images/agreement.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      } else {
        return Container(
          color: primaryColor,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Deine Job website',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w500,
                  fontSize: 42,
                ),
              ),
              Image.asset(
                'assets/images/agreement.png',
                fit: BoxFit.fitWidth,
              ),
              ClipRect(
                child: Container(
                  height: 80,
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                              colors: [buttonGradStart, buttonGradEnd]),
                        ),
                        child: const Text(
                          "Kostenlos Registrieren",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    });
  }
}
