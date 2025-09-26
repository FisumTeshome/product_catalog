import '../models/product.dart';

class ProductService {
  static final List<Product> _products = [
    Product(
      id: '1',
      name: 'Wireless Bluetooth Headphones',
      description:
          'High-quality wireless headphones with noise cancellation and 30-hour battery life.',
      price: 199.99,
      imageUrl:
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400',
      category: 'Electronics',
      stock: 25,
      rating: 4.5,
      reviewCount: 128,
    ),
    Product(
      id: '2',
      name: 'Smart Fitness Watch',
      description:
          'Track your fitness goals with heart rate monitoring, GPS, and water resistance.',
      price: 299.99,
      imageUrl:
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400',
      category: 'Electronics',
      stock: 15,
      rating: 4.3,
      reviewCount: 89,
    ),
    Product(
      id: '3',
      name: 'Organic Cotton T-Shirt',
      description:
          'Comfortable and sustainable organic cotton t-shirt in various colors.',
      price: 29.99,
      imageUrl:
          'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400',
      category: 'Clothing',
      stock: 50,
      rating: 4.7,
      reviewCount: 203,
    ),
    Product(
      id: '4',
      name: 'Ceramic Coffee Mug',
      description:
          'Handcrafted ceramic mug perfect for your morning coffee or tea.',
      price: 19.99,
      imageUrl:
          'https://images.unsplash.com/photo-1514228742587-6b1558fcf93a?w=400',
      category: 'Home & Kitchen',
      stock: 30,
      rating: 4.4,
      reviewCount: 67,
    ),
    Product(
      id: '5',
      name: 'Wireless Charging Pad',
      description:
          'Fast wireless charging pad compatible with all Qi-enabled devices.',
      price: 49.99,
      imageUrl:
          'https://images.unsplash.com/photo-1583394838336-acd977736f90?w=400',
      category: 'Electronics',
      stock: 20,
      rating: 4.2,
      reviewCount: 45,
    ),
    Product(
      id: '6',
      name: 'Leather Wallet',
      description: 'Genuine leather wallet with RFID blocking technology.',
      price: 79.99,
      imageUrl:
          'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=400',
      category: 'Accessories',
      stock: 12,
      rating: 4.6,
      reviewCount: 156,
    ),
    Product(
      id: '7',
      name: 'Bluetooth Speaker',
      description:
          'Portable Bluetooth speaker with 360-degree sound and waterproof design.',
      price: 89.99,
      imageUrl:
          'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=400',
      category: 'Electronics',
      stock: 18,
      rating: 4.4,
      reviewCount: 92,
    ),
    Product(
      id: '8',
      name: 'Yoga Mat',
      description: 'Non-slip yoga mat made from eco-friendly materials.',
      price: 39.99,
      imageUrl:
          'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=400',
      category: 'Sports',
      stock: 35,
      rating: 4.5,
      reviewCount: 78,
    ),
    Product(
      id: '9',
      name: 'Stainless Steel Water Bottle',
      description:
          'Insulated stainless steel water bottle keeps drinks cold for 24 hours.',
      price: 24.99,
      imageUrl:
          'https://images.unsplash.com/photo-1602143407151-7111542de6e8?w=400',
      category: 'Sports',
      stock: 40,
      rating: 4.8,
      reviewCount: 134,
    ),
    Product(
      id: '10',
      name: 'LED Desk Lamp',
      description:
          'Adjustable LED desk lamp with multiple brightness levels and USB charging port.',
      price: 59.99,
      imageUrl:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400',
      category: 'Home & Kitchen',
      stock: 22,
      rating: 4.3,
      reviewCount: 56,
    ),
  ];

  static List<String> get categories {
    return _products.map((product) => product.category).toSet().toList();
  }

  static Future<List<Product>> getAllProducts() async {
    // Simulate API delay
    await Future.delayed(const Duration(milliseconds: 500));
    return List.from(_products);
  }

  static Future<List<Product>> getProductsByCategory(String category) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _products.where((product) => product.category == category).toList();
  }

  static Future<List<Product>> searchProducts(String query) async {
    await Future.delayed(const Duration(milliseconds: 300));
    if (query.isEmpty) return getAllProducts();

    return _products
        .where(
          (product) =>
              product.name.toLowerCase().contains(query.toLowerCase()) ||
              product.description.toLowerCase().contains(query.toLowerCase()) ||
              product.category.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }

  static Future<Product?> getProductById(String id) async {
    await Future.delayed(const Duration(milliseconds: 200));
    try {
      return _products.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }
}
