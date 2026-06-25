import 'package:flutter/material.dart';
import 'package:my_portfolio/components/button/app_filled_button.dart';
import 'package:my_portfolio/components/button/app_text_button.dart';
import 'package:my_portfolio/constants/app_assets.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_constants.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/sections/about/about_section.dart';
import 'package:my_portfolio/sections/contact/contact_section.dart';
import 'package:my_portfolio/sections/home/home_section.dart';
import 'package:my_portfolio/sections/projects/projects_section.dart';
import 'package:my_portfolio/sections/skills/skills_section.dart';
import 'package:my_portfolio/utils/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _sectionCount = 5;
  static const _titleSizeWithSpacing = 40.0;

  var _selectedIndex = 0;
  final _scrollController = ScrollController();
  final _sectionKeys = List.generate(_sectionCount, (_) => GlobalKey());

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    var newIndex = 0;
    for (var i = 0; i < _sectionKeys.length; i++) {
      final context = _sectionKeys[i].currentContext;
      if (context == null) continue;

      final box = context.findRenderObject() as RenderBox?;
      if (box == null) continue;

      final position = box.localToGlobal(Offset.zero).dy;
      if (position <= 120) {
        newIndex = i;
      }
    }

    if (newIndex != _selectedIndex) {
      setState(() => _selectedIndex = newIndex);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToSection(int index) {
    setState(() => _selectedIndex = index);

    final context = _sectionKeys[index].currentContext;
    if (context == null) return;

    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
      alignment: 0.05,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: AppConstants.desktopBreakpoint),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? AppConstants.paddingSmall : AppConstants.paddingLarge,
              ),
              child: Row(
                children: [
                  Image.asset(AppAssets.logo, width: 32, height: 32),
                  if (!isMobile) ...[
                    const Spacer(),
                    _navButton('Início', 0),
                    const SizedBox(width: _titleSizeWithSpacing),
                    _navButton('Sobre', 1),
                    const SizedBox(width: _titleSizeWithSpacing),
                    _navButton('Habilidades', 2),
                    const SizedBox(width: _titleSizeWithSpacing),
                    _navButton('Projetos', 3),
                    const SizedBox(width: _titleSizeWithSpacing),
                    const Spacer(),
                    AppFilledButton(
                      text: 'Contrate-me',
                      onPressed: () => _scrollToSection(4),
                    ),
                  ] else
                    const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.background,
      floatingActionButton: isMobile
          ? FloatingActionButton.extended(
              onPressed: () => _scrollToSection(4),
              backgroundColor: AppColors.primary,
              label: const Text('Contato'),
              icon: const Icon(Icons.mail_outline),
            )
          : null,
      body: ListView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          KeyedSubtree(key: _sectionKeys[0], child: HomeSection(onContactPressed: () => _scrollToSection(4))),
          _sectionWrapper(1, const AboutSection()),
          _sectionWrapper(2, const SkillsSection()),
          _sectionWrapper(3, const ProjectsSection()),
          _sectionWrapper(4, const ContactSection()),
          const SizedBox(height: 48),
        ],
      ),
    );
  }

  Widget _sectionWrapper(int index, Widget child) {
    return KeyedSubtree(
      key: _sectionKeys[index],
      child: Container(
        constraints: const BoxConstraints(minHeight: AppConstants.sectionMinHeight),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 48),
        child: child,
      ),
    );
  }

  Widget _navButton(String label, int index) {
    return AppTextButton(
      text: label,
      onPressed: () => _scrollToSection(index),
      textStyle: _getTitleStyle(index),
    );
  }

  TextStyle _getTitleStyle(int index) {
    if (index == _selectedIndex) return AppFonts.bold(16, AppColors.primary);
    return AppFonts.regular(16, AppColors.textSecondary);
  }
}
