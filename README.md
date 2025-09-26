# Product Catalog - Flutter E-commerce App

A modern, responsive Flutter e-commerce application featuring a product catalog with search, filtering, and shopping cart functionality.

## Features

### ✅ Core Requirements
- **Product List**: Display products with images, names, prices, and stock information
- **Search & Filter**: Search by product name/description and filter by category
- **Product Details**: Detailed view with full product information
- **Shopping Cart**: Add/remove items with quantity management and total price calculation
- **Responsive UI**: Optimized for both mobile and desktop layouts

### 🎨 UI/UX Features
- **Modern Design**: Clean, Material Design 3 interface
- **Image Caching**: Efficient image loading with cached_network_image
- **Empty States**: User-friendly empty cart and no results states
- **Error Handling**: Graceful error handling with user feedback
- **Loading States**: Smooth loading indicators
- **Snackbar Notifications**: Real-time feedback for user actions

### 🏗️ Architecture
- **Clean Architecture**: Well-organized folder structure
- **State Management**: Provider pattern for cart state management
- **Reusable Components**: Modular widget design
- **Mock Data Service**: Simulated API with realistic product data

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/                   # Data models
│   ├── product.dart         # Product model
│   └── cart_item.dart       # Cart item model
├── services/                 # Data services
│   └── product_service.dart # Mock API service
├── pages/                    # Screen pages
│   ├── product_list_page.dart    # Main product listing
│   ├── product_detail_page.dart  # Product details
│   └── cart_page.dart           # Shopping cart
├── widgets/                  # Reusable widgets
│   ├── product_card.dart     # Product display card
│   ├── search_bar.dart       # Search input widget
│   └── filter_dropdown.dart  # Category filter
└── state/                    # State management
    └── cart_provider.dart    # Cart state provider
```

## Setup Instructions

### Prerequisites
- Flutter SDK (3.7.2 or higher)
- Dart SDK
- Android Studio / VS Code with Flutter extensions

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/FisumTeshome/product_catalog.git
   cd product_catalog
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Dependencies

The app uses the following key packages:

- **`provider`**: State management for cart functionality
- **`http`**: HTTP requests (ready for real API integration)
- **`cached_network_image`**: Efficient image loading and caching
- **`go_router`**: Modern navigation system
- **`flutter_staggered_grid_view`**: Beautiful masonry grid layout
- **`intl`**: Currency formatting and localization

## Usage

### Product Browsing
- Browse products in a responsive grid layout
- Use the search bar to find specific products
- Filter products by category using the dropdown
- Tap on products to view detailed information

### Shopping Cart
- Add products to cart from product list or detail pages
- Manage quantities with +/- buttons
- View cart total and item count
- Remove items or clear entire cart

### Responsive Design
- **Mobile**: Single column layout with touch-friendly buttons
- **Desktop**: Multi-column grid layout with hover effects
- **Tablet**: Adaptive layout that adjusts to screen size

## Sample Data

The app includes 10 sample products across different categories:
- Electronics (Headphones, Smart Watch, Charging Pad, Speaker)
- Clothing (Organic Cotton T-Shirt)
- Home & Kitchen (Coffee Mug, LED Desk Lamp)
- Accessories (Leather Wallet)
- Sports (Yoga Mat, Water Bottle)

## Assumptions Made

1. **Mock Data**: Using simulated product data instead of real API
2. **Image URLs**: Using Unsplash placeholder images
3. **Currency**: USD formatting (easily configurable)
4. **Stock Management**: Simple integer-based stock tracking
5. **No Authentication**: Cart state persists only during app session
6. **No Persistence**: Cart data is not saved between app restarts

## Next Steps

### Immediate Improvements
1. **Real API Integration**: Replace mock service with actual REST API
2. **Data Persistence**: Implement local storage for cart data
3. **User Authentication**: Add login/signup functionality
4. **Order Management**: Implement checkout and order history
5. **Payment Integration**: Add payment gateway integration

### Advanced Features
1. **Push Notifications**: Order updates and promotions
2. **Offline Support**: Cache products for offline browsing
3. **Wishlist**: Save products for later
4. **Product Reviews**: User reviews and ratings system
5. **Recommendations**: AI-powered product suggestions
6. **Multi-language**: Internationalization support
7. **Dark Mode**: Theme switching capability

### Performance Optimizations
1. **Image Optimization**: WebP format and lazy loading
2. **Pagination**: Implement infinite scroll for large catalogs
3. **Caching Strategy**: Advanced caching for better performance
4. **Bundle Size**: Code splitting and tree shaking

### Testing
1. **Unit Tests**: Test business logic and models
2. **Widget Tests**: Test UI components
3. **Integration Tests**: End-to-end user flows
4. **Performance Tests**: Memory and CPU usage optimization

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

- **Developer**: Fisum Teshome
- **GitHub**: [@FisumTeshome](https://github.com/FisumTeshome)
- **Repository**: [product_catalog](https://github.com/FisumTeshome/product_catalog)

---

**Note**: This is a demonstration project showcasing Flutter e-commerce app development with modern best practices, clean architecture, and responsive design principles.
