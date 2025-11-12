import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ScrollController _controller = ScrollController();
  double _scroll = 0.0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() => _scroll = _controller.position.pixels);
    });
  }

  @override
  Widget build(BuildContext context) {
    double opacity = (_scroll / 200).clamp(0, 1);
    double titleOpacity = (1 - (_scroll / 120)).clamp(0, 1);

    return Scaffold(
      body: CustomScrollView(
        controller: _controller,
        slivers: [
          // 🔹 Animated AppBar
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            backgroundColor: Colors.teal.withOpacity(opacity),
            elevation: opacity * 6,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                double expandRatio = ((constraints.maxHeight - kToolbarHeight) /
                        (250 - kToolbarHeight))
                    .clamp(0, 1);
                return FlexibleSpaceBar(
                  centerTitle: true,
                  titlePadding: const EdgeInsets.only(bottom: 16),
                  title: AnimatedOpacity(
                    opacity: expandRatio < 0.5 ? 1 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: const Text(
                      "My Profile",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        "assets/profile.jpg",
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.4),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 0,
                        right: 0,
                        child: AnimatedOpacity(
                          opacity: titleOpacity,
                          duration: const Duration(milliseconds: 400),
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage("assets/images/profile.png"),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Wada Diriba",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Full Stack Developer",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // 🔹 Profile Stats
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  _StatBox(label: "Followers", value: "5.3k"),
                  _StatBox(label: "Projects", value: "25"),
                  _StatBox(label: "Following", value: "120"),
                ],
              ),
            ),
          ),

          // 🔹 About Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("About",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                    "Wada Diriba is a Full Stack Developer and Evangelist passionate about building apps that make impact in Ethiopia and beyond. Skilled in Flutter, Firebase, and AI integration.",
                    style: TextStyle(height: 1.4, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ),

          // 🔹 Settings Buttons
          SliverList(
            delegate: SliverChildListDelegate([
              _SettingsTile(icon: Icons.settings, title: "Account Settings"),
              _SettingsTile(icon: Icons.lock, title: "Privacy"),
              _SettingsTile(icon: Icons.notifications, title: "Notifications"),
              _SettingsTile(icon: Icons.logout, title: "Logout"),
            ]),
          ),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// 🔸 Helper Widgets
// ------------------------------------------------------------

class _StatBox extends StatelessWidget {
  final String label;
  final String value;

  const _StatBox({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.teal)),
        Text(label, style: const TextStyle(color: Colors.black54)),
      ],
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const _SettingsTile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
