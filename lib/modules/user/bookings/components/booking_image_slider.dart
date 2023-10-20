import 'package:flutter/material.dart';

class CoverImageSlider extends StatefulWidget {
  const CoverImageSlider({
    Key? key,
    required this.coverImages,
  }) : super(key: key);

  final List<String> coverImages;

  @override
  State<CoverImageSlider> createState() => _CoverImageSliderState();
}

class _CoverImageSliderState extends State<CoverImageSlider> {
  final controller = PageController();

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() => _currentIndex = index);
              },
              children: [
                for (var item in widget.coverImages)
                  Image.asset(
                    item,
                    fit: BoxFit.cover,
                  ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildDot(0),
                  _buildDot(1),
                  _buildDot(2),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    return GestureDetector(
      onTap: () {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: Container(
        height: 10,
        width: 10,
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          color: _currentIndex == index ? Colors.blue : Colors.grey,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
