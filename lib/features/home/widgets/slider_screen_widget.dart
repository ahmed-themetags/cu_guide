import 'package:cu_guide/data/static_data.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderScreenWidget extends StatefulWidget {
  const SliderScreenWidget({super.key});

  @override
  State<SliderScreenWidget> createState() => _SliderScreenWidgetState();
}

class _SliderScreenWidgetState extends State<SliderScreenWidget> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // Total height including dots
      width: double.infinity, // Make full width
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              height: 170,
              autoPlay: true,
              enlargeCenterPage: false, // ✅ Remove extra margin
              viewportFraction: 1.0, // ✅ Full width, no horizontal gap
              onPageChanged: (index, reason) {
                setState(() => _currentIndex = index);
              },
            ),
            items: sliderList.map((item) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(0), // optional: remove rounded edges
                child: Image.asset(
                  item.imageUrl ?? 'default_image_path.png', // Added null safety with ??
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            }).toList(),
          ),
          Positioned(
            bottom: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: sliderList.asMap().entries.map((entry) {
                final isActive = _currentIndex == entry.key;
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: isActive ? 12 : 8,
                    height: isActive ? 12 : 8,
                    margin: EdgeInsets.zero, // ✅ Remove horizontal margin
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isActive ? Colors.green : Colors.green[200],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
