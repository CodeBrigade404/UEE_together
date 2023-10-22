// ignore_for_file: no_logic_in_create_state

import 'package:event_booking_app/models/discover_model.dart';
import 'package:event_booking_app/shared/appbars/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class EventDetailsScreen extends StatefulWidget {
  final Discover item;

  const EventDetailsScreen({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<EventDetailsScreen> createState() =>
      _EventDetailsScreenState(item: item);
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  final Discover item;
  final controller = ScrollController();

  _EventDetailsScreenState({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final halfScreenHeight = screenHeight / 2;

    return Scaffold(
      appBar: CustomAppBar(title: item.eventName),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: halfScreenHeight, // Set half of the screen height
              child: _CoverImageSlider(
                coverImages:
                    item.carouselItems.map((item) => item.imageUrl).toList(),
              ),
            ),
            _ArtistCarousel(artistList: item.artistLineup),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'SUMMARY',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text('Event Date: ${item.eventDate}'),
                      Text('Event Time: ${item.eventTime}'),
                      Text('Event Venue: ${item.eventVenue}'),
                      Text('Event Description: ${item.eventLongDescription}'),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Add code for purchasing tickets here
                        },
                        child: const Text('Purchase Tickets'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CoverImageSlider extends StatelessWidget {
  final List<String> coverImages;

  const _CoverImageSlider({required this.coverImages});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: AspectRatio(
        aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
        child: CarouselSlider(
          items: coverImages.map((imageUrl) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            );
          }).toList(),
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
            enlargeCenterPage: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}

class _ArtistCarousel extends StatefulWidget {
  final List<CarouselItem> artistList;

  const _ArtistCarousel({required this.artistList});

  @override
  _ArtistCarouselState createState() => _ArtistCarouselState();
}

class _ArtistCarouselState extends State<_ArtistCarousel> {
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
      height: 200,
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
