import 'package:carousel_slider/carousel_slider.dart';
import 'package:event_booking_app/models/discover_model.dart';
import 'package:flutter/material.dart';

class ArtistCarousel extends StatefulWidget {
  final List<CarouselItem> artistList;

  const ArtistCarousel({super.key, required this.artistList});

  @override
  State<ArtistCarousel> createState() => _ArtistCarouselState();
}

class _ArtistCarouselState extends State<ArtistCarousel> {
  final PageController _pageController = PageController(viewportFraction: 0.3);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: CarouselSlider.builder(
        itemCount: widget.artistList.length,
        itemBuilder: (context, index, realIndex) {
          final artist = widget.artistList[index];
          final isCenter = index == _currentPage;
          final scaleFactor = isCenter ? 1.0 : 0.7;

          return Center(
            child: Transform.scale(
              scale: scaleFactor,
              child: Column(
                children: [
                  ClipOval(
                    child: Image.network(
                      artist.imageUrl,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    artist.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        options: CarouselOptions(
          aspectRatio: 1.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          viewportFraction: 0.3, // Show multiple items
          initialPage: 0,
          onPageChanged: (index, reason) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
        carouselController: CarouselController(),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
