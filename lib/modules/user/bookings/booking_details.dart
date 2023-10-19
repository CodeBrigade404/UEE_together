import 'package:event_booking_app/core/assets.dart';
import 'package:event_booking_app/core/widgets/button.dart';
import 'package:event_booking_app/core/widgets/card.dart';
import 'package:flutter/material.dart';


class BookingDetailsScreen extends StatefulWidget {
  const BookingDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  final controller = ScrollController();
  final List<String> coverImages = [
    Assets.event1,
    Assets.event2,
    Assets.event3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Booking details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Edit'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              _CoverImageSlider(coverImages: coverImages),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Booking registered on 12/12/2021 05:00 PM · #9810941',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const _SummaryWidget(),
              const _GoingFriendsWidget(),
              const _RatingReviewsWidget(),
              const _InviteFriendsCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class _InviteFriendsCard extends StatelessWidget {
  const _InviteFriendsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  Assets.avatar,
                  fit: BoxFit.cover,
                  height: 70,
                  width: 70,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Dance Dance Studio',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: 'K-C',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '  accepted your invitation',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const MyWideButton(
            label: 'Invite Friends',
          ),
        ],
      ),
    );
  }
}

class _RatingReviewsWidget extends StatelessWidget {
  const _RatingReviewsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: const EdgeInsets.all(5),
            child: const Row(
              children: [
                Text(
                  '4.8',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.blue,
                  ),
                ),
                Icon(
                  Icons.star_rounded,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          const Expanded(
            child: Text(
              '324 Ratings',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MyButton(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 15,
            ),
            label: 'Reviews',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _GoingFriendsWidget extends StatelessWidget {
  const _GoingFriendsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: Stack(
              children: [
                ClipOval(
                  child: Image.asset(
                    Assets.avatar,
                    fit: BoxFit.cover,
                    height: 30,
                    width: 30,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: ClipOval(
                    child: Image.asset(
                      Assets.avatar1,
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          const Text('You & K-C are going'),
        ],
      ),
    );
  }
}

class _SummaryWidget extends StatelessWidget {
  const _SummaryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SUMMARY',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dance Dance Studio',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Dance cclass for 2'),
                    SizedBox(height: 5),
                    Text(
                      'Wednesdat, 03/24/2022 · 05:00PM',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              // QrImage(
              //   data: "1234567890",
              //   version: QrVersions.auto,
              //   size: 60,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CoverImageSlider extends StatefulWidget {
  const _CoverImageSlider({
    Key? key,
    required this.coverImages,
  }) : super(key: key);

  final List<String> coverImages;

  @override
  __CoverImageSliderState createState() => __CoverImageSliderState();
}

class __CoverImageSliderState extends State<_CoverImageSlider> {
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