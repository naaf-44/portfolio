import 'package:flutter/material.dart';
import '../utils/responsive_helper.dart';
import 'scroll_animated_widget.dart';

class SkillsSection extends StatelessWidget {
  final List<String> skills;

  const SkillsSection({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isMobile = ResponsiveHelper.isMobile(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveHelper.getResponsivePadding(
          context,
          mobile: 16,
          tablet: 40,
          desktop: 80,
        ),
        vertical: ResponsiveHelper.getResponsivePadding(
          context,
          mobile: 40,
          tablet: 60,
          desktop: 80,
        ),
      ),
      decoration: BoxDecoration(color: theme.colorScheme.surface),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ScrollAnimatedWidget(
            id: 'skills-title',
            slideBegin: const Offset(0, -0.3),
            child: Text(
              'Skills & Expertise',
              style: theme.textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
                fontSize: ResponsiveHelper.getResponsiveFontSize(
                  context,
                  mobile: 24,
                  tablet: 28,
                  desktop: 32,
                ),
              ),
            ),
          ),

          SizedBox(height: isMobile ? 30 : 50),

          Container(
            constraints: BoxConstraints(
              maxWidth:
                  ResponsiveHelper.isDesktop(context) ? 1200 : double.infinity,
            ),
            child: Column(
              children:
                  skills.asMap().entries.map((entry) {
                    final index = entry.key;
                    final skill = entry.value;

                    return ScrollAnimatedWidget(
                      id: 'skill-$index',
                      delay: Duration(milliseconds: 100 * index),
                      slideBegin: Offset(index.isEven ? -0.3 : 0.3, 0),
                      child: _buildSkillCard(context, skill, index),
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCard(BuildContext context, String skill, int index) {
    final theme = Theme.of(context);
    final isMobile = ResponsiveHelper.isMobile(context);
    final parts = skill.split(':');
    final title = parts.isNotEmpty ? parts[0].trim() : skill;
    final description = parts.length > 1 ? parts[1].trim() : '';

    return Container(
      margin: EdgeInsets.only(bottom: isMobile ? 16 : 20),
      padding: EdgeInsets.all(isMobile ? 16 : 24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(isMobile ? 12 : 16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: isMobile ? 10 : 15,
            offset: Offset(0, isMobile ? 3 : 5),
          ),
        ],
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: 0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(isMobile ? 6 : 8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(isMobile ? 6 : 8),
                ),
                child: Icon(
                  _getSkillIcon(title),
                  color: theme.colorScheme.primary,
                  size: isMobile ? 16 : 20,
                ),
              ),
              SizedBox(width: isMobile ? 8 : 12),
              Expanded(
                child: Text(
                  title,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                    fontSize: ResponsiveHelper.getResponsiveFontSize(
                      context,
                      mobile: 16,
                      tablet: 17,
                      desktop: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),

          if (description.isNotEmpty) ...[
            SizedBox(height: isMobile ? 8 : 12),
            Text(
              description,
              style: theme.textTheme.bodyLarge?.copyWith(
                height: 1.5,
                color: theme.colorScheme.onSurface,
                fontSize: ResponsiveHelper.getResponsiveFontSize(
                  context,
                  mobile: 14,
                  tablet: 15,
                  desktop: 16,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  IconData _getSkillIcon(String skill) {
    final skillLower = skill.toLowerCase();

    if (skillLower.contains('flutter') || skillLower.contains('dart')) {
      return Icons.phone_android;
    } else if (skillLower.contains('api') ||
        skillLower.contains('integration')) {
      return Icons.api;
    } else if (skillLower.contains('firebase') ||
        skillLower.contains('database')) {
      return Icons.storage;
    } else if (skillLower.contains('payment') ||
        skillLower.contains('gateway')) {
      return Icons.payment;
    } else if (skillLower.contains('maps') || skillLower.contains('location')) {
      return Icons.map;
    } else if (skillLower.contains('ai') || skillLower.contains('artificial')) {
      return Icons.psychology;
    } else if (skillLower.contains('web') || skillLower.contains('html')) {
      return Icons.web;
    } else if (skillLower.contains('git') || skillLower.contains('version')) {
      return Icons.source;
    } else if (skillLower.contains('aws') || skillLower.contains('cloud')) {
      return Icons.cloud;
    } else if (skillLower.contains('iot') || skillLower.contains('device')) {
      return Icons.devices;
    } else {
      return Icons.code;
    }
  }
}
