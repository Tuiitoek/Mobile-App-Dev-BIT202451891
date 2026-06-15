import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailScreen extends StatelessWidget {
  final String id;
  const ProductDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tea Details")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image removed as requested
            const SizedBox(height: 16),

            const Text(
              "Uva Black Tea",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Single Estate • Sri Lanka",
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              "\$12.99 / 100g",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 24),

            const Text(
              "Story from the Farm",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const Text(
              "Hand-picked by the third-generation tea masters of Uva Estate in Sri Lanka. Known for its rich, malty flavor with notes of honey and citrus. Grown at high elevation for superior quality.",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),

            const SizedBox(height: 24),
            const Text(
              "Brewing Guide",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const Text(
              "• Temperature: 95–100°C\n"
                  "• Time: 3–5 minutes\n"
                  "• Quantity: 1 tsp per cup",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("✅ Added to cart!")),
                  );
                  context.go('/cart');
                },
                child: const Text("Add to Cart - \$12.99"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}