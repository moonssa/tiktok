import 'package:flutter/material.dart';
import 'package:tiktok/features/videos/widgets/video_post.dart';

class VideoTimelineScren extends StatefulWidget {
  const VideoTimelineScren({super.key});

  @override
  State<VideoTimelineScren> createState() => _VideoTimelineScrenState();
}

class _VideoTimelineScrenState extends State<VideoTimelineScren> {
  int _itemCount = 4;
  final Duration _scrollDuration = const Duration(milliseconds: 250);
  final Curve _scrollCurve = Curves.linear;

  final PageController _pageController = PageController();

  void __onPageChanged(int page) {
    _pageController.animateToPage(
      page,
      duration: _scrollDuration,
      curve: _scrollCurve,
    );
    if (page == _itemCount - 1) {
      _itemCount = _itemCount + 4;

      setState(() {});
    }
  }

  void _onVideoFinished() {
    return;
    _pageController.nextPage(
      duration: _scrollDuration,
      curve: _scrollCurve,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      itemCount: _itemCount,
      onPageChanged: __onPageChanged,
      itemBuilder: (context, index) {
        return VideoPost(onVideoFinished: _onVideoFinished, index: index);
      },
    );
  }
}
