// ignore_for_file: no_logic_in_create_state

import 'package:event_booking_app/models/discover_model.dart';
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
  final controller = ScrollController();
  final Discover item;

  _EventDetailsScreenState({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item.title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              _CoverImageSlider(
                coverImages:
                    item.carouselItems.map((item) => item.imageUrl).toList(),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Text('SUMMARY'),
                      Text('Event Date: ${item.eventDate}'),
                      Text('Event Time: ${item.eventTime}'),
                      Text('Event Venue: ${item.eventVenue}'),
                      Text('Event Description: ${item.eventDescription}'),
                    ],
                  ),
                ),
              ),
              _ArtistCarousel(artistList: item.artistLineup),
            ],
          ),
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
    return SizedBox(
      height: 200,
      child: CarouselSlider(
        items: coverImages
            .map((imageUrl) => Image.network(imageUrl, fit: BoxFit.cover))
            .toList(),
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          enableInfiniteScroll: true,
          autoPlay: true,
        ),
      ),
    );
  }
}

class _ArtistCarousel extends StatelessWidget {
  final List<CarouselItem> artistList;

  const _ArtistCarousel({required this.artistList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselSlider(
        items: artistList.map((artist) {
          return Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(artist.imageUrl),
                radius: 50,
              ),
              Text(artist.name),
            ],
          );
        }).toList(),
        options: CarouselOptions(
          aspectRatio: 1.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlay: true,
        ),
      ),
    );
  }
}
