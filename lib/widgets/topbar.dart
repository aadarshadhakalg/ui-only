import 'package:flutter/material.dart';
import 'package:flutter_ui/constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key, required this.isButtonVisible}) : super(key: key);

  final bool isButtonVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.1],
          colors: [buttonGradEnd, Colors.white],
        ),
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        boxShadow: kElevationToShadow[2],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Visibility(
              visible:
                  MediaQuery.of(context).size.width > 700 && isButtonVisible,
              child: Row(
                children: [
                  const Text("Jetzt Klicken"),
                  InkWell(
                      child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: const Text(
                      "Kostenlos Registrieren",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: buttonGradStart,
                      ),
                    ),
                  )),
                ],
              ),
            ),
            const Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: buttonGradStart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
