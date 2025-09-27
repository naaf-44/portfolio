import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class NavigationBarWidget extends StatelessWidget {
  final Function(String) onSectionTap;
  final VoidCallback onThemeToggle;
  final bool isDarkMode;

  const NavigationBarWidget({
    super.key,
    required this.onSectionTap,
    required this.onThemeToggle,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface.withOpacity(0.95),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Text(
              'Portfolio',
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
              ),
            ).animate()
              .fadeIn(duration: 800.ms)
              .slideX(begin: -0.5, curve: Curves.easeOutBack)
              .then(delay: 1000.ms)
              .shimmer(duration: 2000.ms),
            const Spacer(),
            
            // Desktop Navigation
            if (MediaQuery.of(context).size.width > 768) ...[
              _buildNavItem(context, 'Home', 'header'),
              _buildNavItem(context, 'Experience', 'experience'),
              _buildNavItem(context, 'Education', 'education'),
              _buildNavItem(context, 'Skills', 'skills'),
              _buildNavItem(context, 'Projects', 'projects'),
              _buildNavItem(context, 'Apps', 'apps'),
              const SizedBox(width: 20),
            ],
            
            // Theme Toggle
            IconButton(
              onPressed: onThemeToggle,
              icon: Icon(
                isDarkMode ? Icons.light_mode : Icons.dark_mode,
                color: theme.colorScheme.primary,
              ),
            ).animate()
              .scale(delay: 100.ms, curve: Curves.elasticOut)
              .then(delay: 500.ms)
              .animate(onPlay: (controller) => controller.repeat(reverse: true))
              .rotate(duration: 4000.ms, begin: 0, end: 0.05)
              .then()
              .rotate(duration: 4000.ms, begin: 0.05, end: -0.05)
              .then()
              .rotate(duration: 4000.ms, begin: -0.05, end: 0),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, String title, String section) {
    final theme = Theme.of(context);
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: () => onSectionTap(section),
        child: Text(
          title,
          style: theme.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ).animate()
      .fadeIn(delay: 200.ms, duration: 600.ms)
      .slideY(begin: -0.5, curve: Curves.easeOutBack)
      .then(delay: 300.ms)
      .shimmer(duration: 1000.ms);
  }
}