import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final teas = [
      {"id": "1", "name": "Uva Black Tea", "price": "12.99", "origin": "Sri Lanka"},
      {"id": "2", "name": "Darjeeling First Flush", "price": "18.50", "origin": "India"},
      {"id": "3", "name": "Matcha Ceremonial", "price": "24.99", "origin": "Japan"},
      {"id": "4", "name": "Assam CTC", "price": "9.99", "origin": "India"},
      {"id": "5", "name": "Oolong Milk Tea", "price": "15.99", "origin": "Taiwan"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Our Teas"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => context.go('/cart'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: teas.length,
          itemBuilder: (context, index) {
            final tea = teas[index];
            return GestureDetector(
              onTap: () => context.go('/product/${tea["id"]}'),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image removed
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.local_florist,
                          size: 50,
                          color: Color(0xFF2E7D32),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        tea["name"]!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        tea["origin"]!,
                        style: const TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      const Spacer(),
                      Text(
                        "\$${tea["price"]}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2E7D32),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}