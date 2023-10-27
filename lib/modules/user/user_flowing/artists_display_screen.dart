import 'package:event_booking_app/data/following_artist_data.dart';
import 'package:event_booking_app/models/following_model.dart';
import 'package:event_booking_app/shared/appbars/default_appbar.dart';
import 'package:flutter/material.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({Key? key}) : super(key: key);

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  List<FollowingArtist> filteredArtist = List.from(artist);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'My Followings',
      ),
      body: Column(
        children: [
          SearchBar(searchController: searchController, onSearch: onSearch),
          Expanded(
            child: ListView.builder(
              itemCount: filteredArtist.length,
              itemBuilder: (context, index) {
                return userComponent(user: filteredArtist[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  userComponent({required FollowingArtist user}) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(user.image),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    user.username,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffeeeeee)),
              borderRadius: BorderRadius.circular(50),
            ),
            child: MaterialButton(
              elevation: 0,
              color: user.isFollowedByMe
                  ? const Color(0xffeeeeee)
                  : const Color(0x00ffffff),
              onPressed: () {
                setState(() {
                  user.isFollowedByMe = !user.isFollowedByMe;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(user.isFollowedByMe ? 'Unfollow' : 'Follow',
                  style: const TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }

  void onSearch(String searchText) {
    setState(() {
      filteredArtist = artist
          .where((artist) =>
              artist.name.toLowerCase().contains(searchText.toLowerCase()) ||
              artist.username.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }
}

class SearchBar extends StatelessWidget {
  final TextEditingController searchController;
  final Function(String) onSearch;

  const SearchBar(
      {super.key, required this.searchController, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: searchController,
        decoration: const InputDecoration(
          hintText: 'Search for artists...',
          prefixIcon: Icon(Icons.search),
        ),
        onChanged: (value) {
          onSearch(value);
        },
      ),
    );
  }
}
