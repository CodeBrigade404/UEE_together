// ignore_for_file: no_logic_in_create_state

import 'package:cached_network_image/cached_network_image.dart';
import 'package:event_booking_app/models/discover_model.dart';
import 'package:event_booking_app/modules/user/user_bookings/components/booking_detail_summary.dart';
import 'package:event_booking_app/modules/user/user_bookings/screens/book.dart';
import 'package:event_booking_app/modules/user/user_ticket_detail/artist_line_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleEventDetailScreen extends StatefulWidget {
  final Discover item;

  const SingleEventDetailScreen({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<SingleEventDetailScreen> createState() =>
      _SingleEventDetailScreenState(item: item);
}

class _SingleEventDetailScreenState extends State<SingleEventDetailScreen> {
  final Discover item;
  final controller = ScrollController();

  _SingleEventDetailScreenState({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.4,
          child: CachedNetworkImage(
            imageUrl: item.imageUrl,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: 400,
            placeholder: (context, url) => const Icon(Icons.error),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .35,
                padding: const EdgeInsets.only(bottom: 30),
                width: double.infinity,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(top: 40, right: 14, left: 14),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SummaryWidget(
                              eventName: item.eventName,
                              tax: item.tax,
                              type: item.type,
                              distance: item.distance,
                              date: item.date,
                              eventTime: item.eventTime,
                              eventVenue: item.eventVenue,
                            ),
                            const SizedBox(height: 15),
                            Text(
                              'Artist Lineup',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ArtistCarousel(artistList: item.artistLineup),
                            Text(
                              'Description',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              ' ${item.eventLongDescription}', // Display event description
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 100),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: 70,
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.qr_code_2,
                    size: 55,
                    // color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EventBookingForm(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black54, width: 3)),
                      child: Text(
                        '+ Purchase',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
