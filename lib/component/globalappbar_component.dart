import 'package:flutter/material.dart';

class GlobalAppBarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final String? appName;
  final List<Widget>? actions;
  final bool showBackButton;

  const GlobalAppBarComponent({
    Key? key,
    this.appName,
    this.actions,
    this.showBackButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 48,
      automaticallyImplyLeading: showBackButton,
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff1111ac), Color(0xFF16213E)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      title: Text(
        appName ?? "App",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.8,
        ),
      ),
      centerTitle: true,
      actions: actions ??
          [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white70, size: 22),
              onPressed: () {},
              padding: const EdgeInsets.symmetric(horizontal: 8),
              constraints: const BoxConstraints(),
            ),
            IconButton(
              icon:
                  const Icon(Icons.more_vert, color: Colors.white70, size: 22),
              onPressed: () {},
              padding: const EdgeInsets.symmetric(horizontal: 8),
              constraints: const BoxConstraints(),
            ),
            const SizedBox(width: 8),
          ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
