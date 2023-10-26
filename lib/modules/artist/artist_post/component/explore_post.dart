import 'package:event_booking_app/models/discover_model.dart';
import 'package:event_booking_app/models/post_model.dart';
import 'package:event_booking_app/modules/artist/singlePostScreen/single_post_screen.dart';
import 'package:event_booking_app/modules/user/user_ticket_detail/user_ticket_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_card/image_card.dart';

class ExplorePost extends StatelessWidget {
  const ExplorePost({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SinglePostScreen(
                post: post,
              ),
            ),
          );
        },
        child: TransparentImageCard(
          width: 200,
          height: 300,
          imageProvider: NetworkImage(post.image),
          contentMarginTop: 240,
          title: Text(
            post.caption,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
