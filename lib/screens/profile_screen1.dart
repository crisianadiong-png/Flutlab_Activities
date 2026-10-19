import 'package:flutter/material.dart';

class ProfileScreen1 extends StatefulWidget {
  const ProfileScreen1({super.key});

  @override
  State<ProfileScreen1> createState() => _ProfileScreen1State();
}

class _ProfileScreen1State extends State<ProfileScreen1> {
  static const _accent = Color(0xFF3949AB);
  static const _grey = Color(0xFFEDEEF3);
  static const _tabs = ['All', 'Photos', 'Reels'];
  static const _details = [
    (Icons.location_on_outlined, 'Iloilo City, Philippines'),
    (Icons.home_outlined, 'Pavia, Iloilo'),
    (Icons.cake_outlined, 'January 15, 2000'),
  ];

  int _tab = 0;

  // TODO: replace with real actions once those screens exist.
  void _soon() => ScaffoldMessenger.of(context)
      .showSnackBar(const SnackBar(content: Text('Coming soon')));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(children: [
            _header(),
            const Text('John Doe',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            const Text('3 posts', style: TextStyle(color: Colors.black54)),
            const Text.rich(TextSpan(children: [
              WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Icon(Icons.location_on, size: 16)),
              TextSpan(text: ' Iloilo City'),
            ])),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    _button('Add to story', Icons.add_circle_outline, _accent,
                        Colors.white),
                    const SizedBox(width: 8),
                    _button('Edit profile', Icons.edit, _grey, Colors.black),
                  ]),
                  const SizedBox(height: 16),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(Icons.lock_outline),
                    title: const Text('You locked your profile',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    subtitle: TextButton(
                      onPressed: _soon,
                      style: TextButton.styleFrom(
                        foregroundColor: _accent,
                        overlayColor: Colors.transparent,
                        splashFactory: NoSplash.splashFactory,
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(0, 32),
                        alignment: Alignment.centerLeft,
                      ),
                      child: const Text('Learn more'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(children: [
                    for (var i = 0; i < _tabs.length; i++)
                      TextButton(
                        onPressed: () => setState(() => _tab = i),
                        style: TextButton.styleFrom(
                          foregroundColor: _tab == i ? _accent : Colors.black,
                          overlayColor: Colors.transparent,
                          splashFactory: NoSplash.splashFactory,
                          textStyle: TextStyle(
                            fontWeight:
                                _tab == i ? FontWeight.bold : FontWeight.normal,
                          ),
                        ),
                        child: Text(_tabs[i]),
                      ),
                  ]),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Personal details',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    trailing: IconButton(
                      onPressed: _soon,
                      tooltip: 'Edit personal details',
                      icon: const Icon(Icons.edit_outlined),
                    ),
                  ),
                  for (final (icon, text) in _details)
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(icon),
                      title: Text(text),
                    ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _header() {
    return SizedBox(
      height: 260,
      child: Stack(children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: 220,
          child: Image.asset(
            'assets/images/cover.jpg',
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => const ColoredBox(color: _accent),
          ),
        ),
        Positioned(
          top: 0,
          left: 8,
          right: 8,
          child: Row(children: [
            _round(Icons.menu, 'Menu'),
            const Spacer(),
            _round(Icons.edit_outlined, 'Edit'),
            _round(Icons.search, 'Search'),
            _round(Icons.more_horiz, 'More options'),
          ]),
        ),
        Positioned(
          top: 166,
          right: 8,
          child: _round(Icons.photo_camera, 'Change cover photo', light: true),
        ),
        Positioned(
          top: 136,
          left: 0,
          right: 0,
          child: Center(
            child: Stack(children: [
              const CircleAvatar(
                radius: 58,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 54,
                  backgroundColor: _grey,
                  child: Icon(Icons.person,
                      size: 54, semanticLabel: 'Profile picture placeholder'),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: _round(Icons.photo_camera, 'Change profile picture',
                    light: true),
              ),
            ]),
          ),
        ),
      ]),
    );
  }

  Widget _round(IconData icon, String tip, {bool light = false}) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: IconButton.filled(
        onPressed: _soon,
        tooltip: tip,
        icon: Icon(icon, size: 20),
        style: IconButton.styleFrom(
          backgroundColor: light ? Colors.white : Colors.black54,
          foregroundColor: light ? Colors.black : Colors.white,
        ),
      ),
    );
  }

  Widget _button(String label, IconData icon, Color bg, Color fg) {
    return Expanded(
      child: FilledButton.icon(
        onPressed: _soon,
        icon: Icon(icon, size: 18),
        label: Text(label, overflow: TextOverflow.ellipsis),
        style: FilledButton.styleFrom(
          backgroundColor: bg,
          foregroundColor: fg,
          minimumSize: const Size.fromHeight(44),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
