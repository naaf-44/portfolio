import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/portfolio_model.dart';
import '../utils/responsive_helper.dart';
import 'scroll_animated_widget.dart';

class FlutterPackagesSection extends StatelessWidget {
  final List<FlutterPackage> flutterPackages;

  const FlutterPackagesSection({
    super.key,
    required this.flutterPackages,
  });

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ScrollAnimatedWidget(
            id: 'packages-title',
            slideBegin: const Offset(0, -0.3),
            child: Text(
              'Flutter Packages',
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
              maxWidth: ResponsiveHelper.isDesktop(context) ? 800 : double.infinity,
            ),
            child: Column(
              children: flutterPackages.asMap().entries.map((entry) {
                final index = entry.key;
                final package = entry.value;
                
                return ScrollAnimatedWidget(
                  id: 'package-$index',
                  delay: Duration(milliseconds: 200 * index),
                  slideBegin: const Offset(0, 0.3),
                  child: _buildPackageCard(context, package, index),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPackageCard(BuildContext context, FlutterPackage package, int index) {
    final theme = Theme.of(context);
    final isMobile = ResponsiveHelper.isMobile(context);
    
    return Container(
      margin: EdgeInsets.only(bottom: isMobile ? 16 : 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.secondary.withOpacity(0.1),
            theme.colorScheme.primary.withOpacity(0.1),
          ],
        ),
        borderRadius: BorderRadius.circular(isMobile ? 12 : 16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: isMobile ? 10 : 15,
            offset: Offset(0, isMobile ? 3 : 5),
          ),
        ],
        border: Border.all(
          color: theme.colorScheme.secondary.withOpacity(0.3),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(isMobile ? 12 : 16),
          onTap: () => _launchUrl(package.link),
          child: Padding(
            padding: EdgeInsets.all(isMobile ? 16 : 24),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(isMobile ? 8 : 12),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondary,
                    borderRadius: BorderRadius.circular(isMobile ? 8 : 12),
                  ),
                  child: Icon(
                    Icons.extension,
                    color: Colors.white,
                    size: isMobile ? 20 : 24,
                  ),
                ),
                
                SizedBox(width: isMobile ? 12 : 16),
                
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        package.name,
                        style: theme.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.secondary,
                          fontSize: ResponsiveHelper.getResponsiveFontSize(
                            context,
                            mobile: 16,
                            tablet: 18,
                            desktop: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: isMobile ? 2 : 4),
                      Text(
                        'Published on pub.dev',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(0.7),
                          fontSize: isMobile ? 12 : 14,
                        ),
                      ),
                    ],
                  ),
                ),
                
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 8 : 12,
                    vertical: isMobile ? 4 : 6,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'View Package',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.secondary,
                          fontWeight: FontWeight.w600,
                          fontSize: isMobile ? 10 : 12,
                        ),
                      ),
                      SizedBox(width: isMobile ? 2 : 4),
                      Icon(
                        Icons.launch,
                        color: theme.colorScheme.secondary,
                        size: isMobile ? 12 : 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}