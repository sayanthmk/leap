import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  final bool isWeb;

  const SearchSection({super.key, required this.isWeb});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(isWeb ? 24 : 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: isWeb ? const WebSearchRow() : const MobileSearchColumn(),
    );
  }
}

// Web Search Row Widget
class WebSearchRow extends StatelessWidget {
  const WebSearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child:
              SearchField(hint: 'User Experience Designer', icon: Icons.search),
        ),
        SizedBox(width: 16),
        Expanded(
          child: SearchField(
              hint: 'Hyattsville', icon: Icons.location_on_outlined),
        ),
        SizedBox(width: 16),
        SearchButton(),
      ],
    );
  }
}

// Mobile Search Column Widget
class MobileSearchColumn extends StatelessWidget {
  const MobileSearchColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchField(hint: 'User Experience Designer', icon: Icons.search),
        SizedBox(height: 16),
        SearchField(hint: 'Hyattsville', icon: Icons.location_on_outlined),
        SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: SearchButton(),
        ),
      ],
    );
  }
}

// Search Field Widget
class SearchField extends StatelessWidget {
  final String hint;
  final IconData icon;

  const SearchField({
    super.key,
    required this.hint,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: Icon(icon, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0xFF6366F1)),
        ),
      ),
    );
  }
}

// Search Button Widget
class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF6366F1),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: const Text(
        'Search',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}
