import 'package:event_booking_app/core/constants/assets_constants.dart';
import 'package:event_booking_app/shared/appbars/default_appbar.dart';
import 'package:event_booking_app/shared/cards/card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Account"),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _ProfileDetails(),
              ListTile(
                title: const Text('Account Information'),
                subtitle: const Text('Change your account information'),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: const Text('Wallet'),
                subtitle: const Text('Manage payment methods'),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: const Text('Favorites'),
                subtitle: const Text('Manage favorites'),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: const Text('Friends'),
                subtitle: const Text('Manage friends'),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: const Text('Settings'),
                subtitle: const Text(
                    'Change application, language & notification options'),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: const Text('Deactivate Account'),
                subtitle: const Text('Manage closure of your MLOC account'),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: MyCard(
                  child: InkWell(
                    onTap: () {},
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.exit_to_app,
                              color: Color.fromARGB(255, 0, 6, 11),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Logout',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileDetails extends StatelessWidget {
  const _ProfileDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 135, 135, 135),
            Color.fromARGB(255, 0, 6, 37)
          ],
          stops: [0, 1],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        Assets.avatar,
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Roger Sanchez',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'R.Sanchez@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '931',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: 'points'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Material(
              color: const Color.fromARGB(255, 135, 135, 135),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: InkWell(
                onTap: () {},
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.redeem,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Redeem',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
