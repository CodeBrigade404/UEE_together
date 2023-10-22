import 'dart:io';

import 'package:event_booking_app/core/constants/language_constants.dart';
import 'package:event_booking_app/data/discover_data.dart';
import 'package:event_booking_app/modules/user/user_discover/components/explore_title.dart';
import 'package:event_booking_app/modules/user/user_discover/components/popular.dart';
import 'package:event_booking_app/modules/user/user_discover/components/title.dart';
import 'package:event_booking_app/shared/appbars/default_appbar.dart';
import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  void initState() {
    loadAd();
    super.initState();
  }

  BannerAd? _bannerAd;
  bool _isLoaded = false;

  final adUnitId = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3940256099942544/2934735716';

  void loadAd() {
    _bannerAd = BannerAd(
      adUnitId: adUnitId,
      request: const AdRequest(),
      size: AdSize.largeBanner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          debugPrint('$ad loaded.');
          setState(() {
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          debugPrint('BannerAd failed to load: $err');

          ad.dispose();
        },
      ),
    )..load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTransparent,
      appBar: const CustomAppBar(
        showSearch: true,
        title: "Together",
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _isLoaded
                ? Center(
                    child: Container(
                      width: _bannerAd!.size.width.toDouble(),
                      height: _bannerAd!.size.height.toDouble(),
                      margin: const EdgeInsets.only(top: 10),
                      child: AdWidget(ad: _bannerAd!),
                    ),
                  )
                : const SizedBox(),
            DiscoverTitle(
                title: translation(context).discoverUpComing.toUpperCase()),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                children: [
                  for (var item in discoverUpComingEventImages)
                    ExploreItem(item: item),
                ],
              ),
            ),
            DiscoverTitle(
                title: translation(context).discoverNearYou.toUpperCase()),
            for (var item in discoverEventImages)
              PopularNearYouWidget(item: item),
          ],
        ),
      ),
    );
  }
}
