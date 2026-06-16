import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LeafLink Dashboard"),
        actions: [
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () => context.go('/orders')),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildMenuCard(
              context,
              icon: Icons.store,
              title: "Shop Teas",
              color: Colors.green,
              onTap: () => context.go('/shop'),
            ),
            _buildMenuCard(
              context,
              icon: Icons.list_alt,
              title: "My Orders",
              color: Colors.orange,
              onTap: () => context.go('/orders'),
            ),
            _buildMenuCard(
              context,
              icon: Icons.park,
              title: "Farm Records",
              color: Colors.teal,
              onTap: () => context.go('/farm-records'),
            ),
            _buildMenuCard(
              context,
              icon: Icons.person,
              title: "Profile",
              color: Colors.blue,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, {required IconData icon, required String title, required Color color, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: color),
            const SizedBox(height: 12),
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}