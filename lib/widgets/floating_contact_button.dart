import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/portfolio_model.dart';

class FloatingContactButton extends StatefulWidget {
  final PersonalInfo personalInfo;

  const FloatingContactButton({super.key, required this.personalInfo});

  @override
  State<FloatingContactButton> createState() => _FloatingContactButtonState();
}

class _FloatingContactButtonState extends State<FloatingContactButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Contact options
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: _isExpanded ? 120 : 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildContactOption(
                    context,
                    Icons.phone,
                    'Call',
                    () => _launchUrl('tel:${widget.personalInfo.phone}'),
                  )
                  .animate()
                  .fadeIn(delay: 100.ms, duration: 400.ms)
                  .slideX(begin: 1, curve: Curves.easeOutBack)
                  .then()
                  .shimmer(duration: 1000.ms),

              const SizedBox(height: 10),

              _buildContactOption(
                    context,
                    Icons.email,
                    'Email',
                    () => _launchUrl('mailto:${widget.personalInfo.email}'),
                  )
                  .animate()
                  .fadeIn(delay: 200.ms, duration: 400.ms)
                  .slideX(begin: 1, curve: Curves.easeOutBack)
                  .then()
                  .shimmer(duration: 1000.ms),
            ],
          ),
        ),

        const SizedBox(height: 10),

        // Main floating button
        FloatingActionButton(
              onPressed: _toggleExpanded,
              backgroundColor: theme.colorScheme.primary,
              child: AnimatedRotation(
                turns: _isExpanded ? 0.125 : 0,
                duration: const Duration(milliseconds: 300),
                child: Icon(
                  _isExpanded ? Icons.close : Icons.contact_phone,
                  color: Colors.white,
                ),
              ),
            )
            .animate()
            .scale(delay: 500.ms, curve: Curves.elasticOut)
            .then(delay: 1000.ms)
            .animate(onPlay: (controller) => controller.repeat(reverse: true))
            .scaleXY(duration: 2000.ms, begin: 1.0, end: 1.1)
            .then()
            .scaleXY(duration: 2000.ms, begin: 1.1, end: 1.0),
      ],
    );
  }

  Widget _buildContactOption(
    BuildContext context,
    IconData icon,
    String label,
    VoidCallback onTap,
  ) {
    final theme = Theme.of(context);

    if (!_isExpanded) return const SizedBox.shrink();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(width: 8),
        FloatingActionButton.small(
          onPressed: onTap,
          backgroundColor: theme.colorScheme.secondary,
          child: Icon(icon, color: Colors.white, size: 20),
        ),
      ],
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
