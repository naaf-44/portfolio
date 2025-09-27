import 'package:flutter/material.dart';
import '../utils/responsive_helper.dart';
import 'scroll_animated_widget.dart';

class ToolsSection extends StatelessWidget {
  final List<String> tools;

  const ToolsSection({super.key, required this.tools});

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
            id: 'tools-title',
            slideBegin: const Offset(0, -0.3),
            child: Text(
              'Tools & Technologies',
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

          ScrollAnimatedWidget(
            id: 'tools-grid',
            delay: const Duration(milliseconds: 200),
            scaleBegin: 0.8,
            child: Container(
              constraints: BoxConstraints(
                maxWidth:
                    ResponsiveHelper.isDesktop(context)
                        ? 1200
                        : double.infinity,
              ),
              child: Wrap(
                spacing: isMobile ? 8 : 12,
                runSpacing: isMobile ? 8 : 12,
                alignment: WrapAlignment.center,
                children:
                    tools.asMap().entries.map((entry) {
                      final index = entry.key;
                      final tool = entry.value;

                      return _buildToolChip(context, tool, index);
                    }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildToolChip(BuildContext context, String tool, int index) {
    final theme = Theme.of(context);
    final isMobile = ResponsiveHelper.isMobile(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 12 : 16,
        vertical: isMobile ? 8 : 10,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primary.withValues(alpha: 0.1),
            theme.colorScheme.secondary.withValues(alpha: 0.1),
          ],
        ),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: 0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: isMobile ? 6 : 8,
            offset: Offset(0, isMobile ? 1 : 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _getToolIcon(tool),
            size: isMobile ? 14 : 16,
            color: theme.colorScheme.primary,
          ),
          SizedBox(width: isMobile ? 6 : 8),
          Text(
            tool,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
              color: theme.colorScheme.onSurface,
              fontSize: isMobile ? 12 : 14,
            ),
          ),
        ],
      ),
    );
  }

  IconData _getToolIcon(String tool) {
    final toolLower = tool.toLowerCase();

    if (toolLower.contains('android') || toolLower.contains('studio')) {
      return Icons.android;
    } else if (toolLower.contains('xcode')) {
      return Icons.phone_iphone;
    } else if (toolLower.contains('github') || toolLower.contains('git')) {
      return Icons.source;
    } else if (toolLower.contains('flutter')) {
      return Icons.phone_android;
    } else if (toolLower.contains('firebase')) {
      return Icons.local_fire_department;
    } else if (toolLower.contains('database') ||
        toolLower.contains('mysql') ||
        toolLower.contains('sqlite')) {
      return Icons.storage;
    } else if (toolLower.contains('api') || toolLower.contains('rest')) {
      return Icons.api;
    } else if (toolLower.contains('payment') || toolLower.contains('gateway')) {
      return Icons.payment;
    } else if (toolLower.contains('excel') || toolLower.contains('word')) {
      return Icons.description;
    } else if (toolLower.contains('email') ||
        toolLower.contains('gmail') ||
        toolLower.contains('outlook')) {
      return Icons.email;
    } else if (toolLower.contains('teams') ||
        toolLower.contains('meet') ||
        toolLower.contains('chat')) {
      return Icons.video_call;
    } else if (toolLower.contains('web') || toolLower.contains('html')) {
      return Icons.web;
    } else if (toolLower.contains('design') || toolLower.contains('adobe')) {
      return Icons.design_services;
    } else if (toolLower.contains('test') || toolLower.contains('flight')) {
      return Icons.bug_report;
    } else if (toolLower.contains('chart') || toolLower.contains('fl')) {
      return Icons.bar_chart;
    } else {
      return Icons.build;
    }
  }
}
