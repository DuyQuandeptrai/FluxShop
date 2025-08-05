import 'package:flutter/material.dart';
import 'package:fluxapp/views/discover/dress.dart';
import 'package:fluxapp/views/discover/jacket.dart';
import 'package:fluxapp/views/discover/skirt.dart';
import 'package:fluxapp/widgets/slidebar.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  int? _openedBannerIndex; // Banner nào đang mở (null nếu đóng)
  final List<bool> _openedItems = [false, false, false]; // Trạng thái từng dòng
  final List<String> titles = ['Jacket', 'Dress', 'Skirt'];
  final List<Widget> pages = [
    Jacket(),
    Dress(),
    Skirt()
  ]; // Import các trang này
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  const Spacer(),
                  const Text(
                    'Discover',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/icons/icons8-bell-24.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    width: 230,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 230, 230, 230),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const TextField(
                      style: TextStyle(fontSize: 16),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 20),
                        hintStyle: TextStyle(color: Colors.black45),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black45,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 235, 235, 235),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.filter_alt_sharp,
                        size: 30, color: Colors.black45),
                  )
                ],
              ),
              const SizedBox(height: 30),

              // ---- CARD 1 ----
              GestureDetector(
                onTap: () {
                  setState(() {
                    _openedBannerIndex = _openedBannerIndex == 0 ? null : 0;
                  });
                },
                child: _buildCard(
                  backgroundColor: const Color(0xFFA3A798),
                  imagePath: 'assets/img/image51.png',
                ),
              ),
              if (_openedBannerIndex == 0)
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      for (int index = 0; index < 3; index++) ...[
                        ListTile(
                          title: Text(titles[index]),
                          trailing: IconButton(
                            icon: const Icon(Icons.keyboard_arrow_right),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => pages[index],
                                ),
                              );
                            },
                          ),
                          onTap: null,
                        ),
                        if (index <
                            2) // Thêm Divider giữa các dòng, không thêm sau dòng cuối
                          const Divider(
                            color: Color(0xFFE0E0E0),
                            thickness: 1,
                            height: 1,
                          ),
                      ]
                    ],
                  ),
                ),
              const SizedBox(height: 20),

              // ---- CARD 2 ----
              _buildCard(
                backgroundColor: const Color(0xFF9C9492),
                imagePath: 'assets/img/image54.png',
                imageLeftOffset: 190,
              ),

              const SizedBox(height: 20),

              // ---- CARD 3 ----
              _buildCard(
                backgroundColor: const Color(0xFF44565C),
                imagePath: 'assets/img/shoes2.png',
              ),

              const SizedBox(height: 20),

              // ---- CARD 4 ----
              _buildCard(
                backgroundColor: const Color(0xFFB9AEB2),
                imagePath: 'assets/img/image58.png',
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    required Color backgroundColor,
    required String imagePath,
    double imageLeftOffset = 220,
  }) {
    return Container(
      height: 150,
      width: 400,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 220,
            top: 10,
            child: Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 235,
            top: 20,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: imageLeftOffset,
            child: Image.asset(
              imagePath,
              scale: 0.8,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
