import 'package:flutter/material.dart';

class TabbedView extends StatefulWidget {
  const TabbedView({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  final ValueSetter<int> onChange;

  @override
  State<TabbedView> createState() => _TabbedViewState();
}

class _TabbedViewState extends State<TabbedView> {
  int _activeIndex = 0;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          shrinkWrap: true,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _activeIndex = 0;
                  widget.onChange(_activeIndex);
                  _scrollController.animateTo(
                    _scrollController.position.minScrollExtent,
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                  );
                });
              },
              child: TabButton(
                key: UniqueKey(),
                leftBorder: 10,
                value: "Arbeitnehmer",
                isActive: _activeIndex == 0,
              ),
            ),
            InkWell(
              onTap: () {
                _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent / 2,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                );
                setState(() {
                  _activeIndex = 1;
                });
                widget.onChange(_activeIndex);
              },
              child: TabButton(
                key: UniqueKey(),
                value: "Arbeitgeber",
                isActive: _activeIndex == 1,
              ),
            ),
            InkWell(
              onTap: () {
                _activeIndex = 2;
                _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                );
                setState(() {
                  _activeIndex = 2;
                });
                widget.onChange(_activeIndex);
              },
              child: TabButton(
                key: UniqueKey(),
                rightBorder: 10,
                value: "Temporarburo",
                isActive: _activeIndex == 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  const TabButton({
    Key? key,
    required this.value,
    this.leftBorder,
    this.rightBorder,
    this.isActive = false,
  }) : super(key: key);

  final String value;
  final double? leftBorder;
  final double? rightBorder;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff81E6D9) : Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(leftBorder ?? 0),
          bottomLeft: Radius.circular(leftBorder ?? 0),
          topRight: Radius.circular(rightBorder ?? 0),
          bottomRight: Radius.circular(rightBorder ?? 0),
        ),
        border: Border.all(
          color: isActive ? const Color(0xff81E6D9) : Colors.grey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(child: Text(value)),
      ),
    );
  }
}
