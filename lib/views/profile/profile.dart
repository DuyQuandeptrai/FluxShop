import 'package:flutter/material.dart';
import 'package:fluxapp/widgets/slidebar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 40),
            // Header với Avatar + Thông tin người dùng
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/img/image54.png'),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "User Name",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "user@example.com",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.settings, size: 30),
              ],
            ),

            SizedBox(height: 70),

            // Danh sách các lựa chọn
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: SizedBox(
                height: 500,
                child: Column(
                  children: const [
                    SizedBox(height: 20),
                    Expanded(
                        child: ProfileItem(
                            icon: Icons.star_border, label: 'Rate App')),
                    Expanded(
                        child: ProfileItem(
                            icon: Icons.card_giftcard, label: 'Voucher')),
                    Expanded(
                        child: ProfileItem(
                            icon: Icons.payment, label: 'Payment Method')),
                    Expanded(
                        child: ProfileItem(
                            icon: Icons.favorite_border, label: 'Wishlist')),
                    Expanded(
                        child:
                            ProfileItem(icon: Icons.logout, label: 'Log Out')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const ProfileItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          leading: Icon(icon, size: 30),
          title: Text(
            label,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          trailing: const Icon(Icons.chevron_right_outlined, size: 30),
          onTap: () {
            // TODO: Thêm hành động khi nhấn vào
          },
        ),
        Divider(height: 1, color: Colors.grey[300]),
      ],
    );
  }
}
