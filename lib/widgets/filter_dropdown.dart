import 'package:flutter/material.dart';

class FilterDropdown extends StatelessWidget {
  final String? selectedCategory;
  final List<String> categories;
  final ValueChanged<String?> onChanged;

  const FilterDropdown({
    super.key,
    required this.selectedCategory,
    required this.categories,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedCategory != null && categories.contains(selectedCategory)
              ? selectedCategory
              : null,
          hint: const Text('All Categories'),
          isExpanded: true,
          items: [
            const DropdownMenuItem<String>(
              value: null,
              child: Text('All Categories'),
            ),
            ...categories.map(
              (category) => DropdownMenuItem<String>(
                value: category,
                child: Text(category),
              ),
            ),
          ],
          onChanged: onChanged,
        ),
      ),
    );
  }
}
