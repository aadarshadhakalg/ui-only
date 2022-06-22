import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/clippers.dart';

const TextStyle numbering = TextStyle(
  color: Color(0xff718096),
  fontFamily: "Lato",
  fontWeight: FontWeight.w500,
  fontSize: 130,
);

const TextStyle normalText = TextStyle(
  color: Color(0xff718096),
  fontFamily: "Lato",
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

class TabbedContent extends StatelessWidget {
  const TabbedContent(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.thirdText,
      required this.firstImage,
      required this.secondImage,
      required this.thirdImage,
      required this.topic})
      : super(key: key);

  final String topic;
  final String firstText;
  final String secondText;
  final String thirdText;
  final String firstImage;
  final String secondImage;
  final String thirdImage;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 700) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            topic,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 25,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                scale: 1.5,
                image: AssetImage(firstImage),
              ),
            ),
            height: 300,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 130,
                      child: Text(
                        "1.",
                        style: numbering,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      firstText,
                      style: normalText,
                    )
                  ],
                ),
              ),
            ),
          ),
          ClipPath(
            clipper: ShapeClipperUP(),
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  color: primaryColor,
                  height: 450,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 130,
                          child: Text(
                            "2.",
                            style: numbering,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            secondText,
                            style: normalText,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 180,
                  left: (MediaQuery.of(context).size.width / 2) - 120,
                  child: Image.asset(
                    secondImage,
                    scale: 1.7,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                scale: 2,
                image: AssetImage(thirdImage),
              ),
            ),
            height: 300,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0, bottom: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 130,
                      child: Text(
                        "3.",
                        style: numbering,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          thirdText,
                          style: normalText,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            topic,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 25,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                scale: 1.5,
                image: AssetImage(firstImage),
              ),
            ),
            height: 300,
            padding: EdgeInsets.symmetric(
                horizontal: (MediaQuery.of(context).size.width - 600) / 2),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 130,
                      child: Text(
                        "1.",
                        style: numbering,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      firstText,
                      style: normalText,
                    )
                  ],
                ),
              ),
            ),
          ),
          ClipPath(
            clipper: ShapeClipperUP(),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 100,
                      horizontal:
                          (MediaQuery.of(context).size.width - 600) / 2),
                  color: primaryColor,
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 130,
                          child: Text(
                            "2.",
                            style: numbering,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            secondText,
                            style: normalText,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 180,
                  left: (MediaQuery.of(context).size.width / 2) - 300,
                  child: Image.asset(
                    secondImage,
                    scale: 1.7,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                scale: 2,
                image: AssetImage(thirdImage),
              ),
            ),
            height: 300,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    left: (MediaQuery.of(context).size.width - 600) / 2,
                    bottom: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 130,
                      child: Text(
                        "3.",
                        style: numbering,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          thirdText,
                          style: normalText,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}
