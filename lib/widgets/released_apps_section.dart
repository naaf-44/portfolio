import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/portfolio_model.dart';
import '../utils/responsive_helper.dart';
import 'scroll_animated_widget.dart';

class ReleasedAppsSection extends StatelessWidget {
  final List<ReleasedApp> releasedApps;

  const ReleasedAppsSection({
    super.key,
    required this.releasedApps,
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
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ScrollAnimatedWidget(
            id: 'apps-title',
            slideBegin: const Offset(0, -0.3),
            child: Text(
              'Released Apps',
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
              maxWidth: ResponsiveHelper.isDesktop(context) ? 1000 : double.infinity,
            ),
            child: ResponsiveHelper.isDesktop(context)
                ? _buildDesktopGrid(context)
                : _buildMobileList(context),
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: ResponsiveHelper.getResponsiveGridCount(
          context,
          mobile: 1,
          tablet: 2,
          desktop: 2,
        ),
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        childAspectRatio: 2.5,
      ),
      itemCount: releasedApps.length,
      itemBuilder: (context, index) {
        return ScrollAnimatedWidget(
          id: 'app-$index',
          delay: Duration(milliseconds: 150 * index),
          slideBegin: Offset(index.isEven ? -0.3 : 0.3, 0),
          child: _buildAppCard(context, releasedApps[index], index),
        );
      },
    );
  }

  Widget _buildMobileList(BuildContext context) {
    return Column(
      children: releasedApps.asMap().entries.map((entry) {
        final index = entry.key;
        final app = entry.value;
        return ScrollAnimatedWidget(
          id: 'app-mobile-$index',
          delay: Duration(milliseconds: 150 * index),
          slideBegin: Offset(index.isEven ? -0.3 : 0.3, 0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: _buildAppCard(context, app, index),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildAppCard(BuildContext context, ReleasedApp app, int index) {
    final theme = Theme.of(context);
    final isMobile = ResponsiveHelper.isMobile(context);
    
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primary.withOpacity(0.1),
            theme.colorScheme.secondary.withOpacity(0.1),
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
          color: theme.colorScheme.primary.withOpacity(0.2),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(isMobile ? 12 : 16),
          onTap: () => _launchUrl(app.link),
          child: Padding(
            padding: EdgeInsets.all(isMobile ? 16 : 20),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(isMobile ? 8 : 12),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(isMobile ? 8 : 12),
                  ),
                  child: Icon(
                    Icons.mobile_friendly,
                    color: Colors.white,
                    size: isMobile ? 20 : 24,
                  ),
                ),
                
                SizedBox(width: isMobile ? 12 : 16),
                
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        app.name,
                        style: theme.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
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
                        'Tap to view app',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(0.7),
                          fontSize: isMobile ? 12 : 14,
                        ),
                      ),
                    ],
                  ),
                ),
                
                Icon(
                  Icons.launch,
                  color: theme.colorScheme.primary,
                  size: isMobile ? 16 : 20,
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