import 'package:flutter/material.dart';

class VideoTimelineScren extends StatefulWidget {
  const VideoTimelineScren({super.key});

  @override
  State<VideoTimelineScren> createState() => _VideoTimelineScrenState();
}

class _VideoTimelineScrenState extends State<VideoTimelineScren> {
  int _itemCount = 4;
  final PageController _pageController = PageController();

  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.teal,
  ];

  void __onPageChanged(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 100),
      curve: Curves.linear,
    );
    if (page == _itemCount - 1) {
      _itemCount = _itemCount + 4;
      colors.addAll([
        Colors.blue,
        Colors.red,
        Colors.yellow,
        Colors.teal,
      ]);

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      itemCount: _itemCount,
      onPageChanged: __onPageChanged,
      itemBuilder: (context, index) {
        return Container(
          color: colors[index],
          child: Center(
            child: Text("Screen $index"),
          ),
        );
      },
    );
  }
}
