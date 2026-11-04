import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductData(),
    );
  }
}

// ---------- Product Data Page ----------
class ProductData extends StatelessWidget {
  const ProductData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Data'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            // ----- 1st Product -----
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.headphones,
                  color: Colors.blue,
                ),
                title: const Text('Headphone'),
                subtitle: const Text('Rp150.000'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                  size: 20,
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ProductDetail(
                          name: 'Headphone',
                          price: 'Rp150.000',
                          icon: Icons.headphones,
                        ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 8),

            // ----- 2nd Product -----
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.smartphone,
                  color: Colors.blue,
                ),
                title: const Text('Smartphone'),
                subtitle: const Text('Rp2.500.000'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                  size: 20,
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ProductDetail(
                        name: 'Smartphone',
                        price: 'Rp2.500.000',
                        icon: Icons.smartphone,
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 8),

            // ----- 3rd Product -----
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.laptop,
                  color: Colors.blue,
                ),
                title: const Text('Laptop'),
                subtitle: const Text('Rp4.000.000'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                  size: 20,
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ProductDetail(
                          name: 'Laptop',
                          price: 'Rp4.000.000',
                          icon: Icons.laptop,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------- Product Detail ----------
class ProductDetail extends StatelessWidget {
  final String name;
  final String price;
  final IconData icon;

  const ProductDetail({
    super.key,
    required this.name,
    required this.price,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),

            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              price,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}