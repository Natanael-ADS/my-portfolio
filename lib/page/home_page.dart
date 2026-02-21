import 'package:flutter/material.dart';
import 'package:my_portfolio/components/button/app_filled_button.dart';
import 'package:my_portfolio/components/button/app_text_button.dart';
import 'package:my_portfolio/constants/app_assets.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_constants.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/sections/home_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _titleSizeWithSpacing = 40.0;

  var _selectedIndex = 0;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final scrollPosition = _scrollController.position.pixels;
    final newIndex = (scrollPosition / AppConstants.homeSectionHeight).round().clamp(0, 3);

    if (newIndex == _selectedIndex) return;

    setState(() => _selectedIndex = newIndex);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToSection(int index) {
    setState(() => _selectedIndex = index);

    final targetPosition = index * AppConstants.homeSectionHeight;
    _scrollController.animateTo(
      targetPosition,
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 800),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: AppConstants.desktopBreakpoint),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppConstants.paddingLarge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppAssets.logo, width: 32, height: 32),
                  Spacer(),
                  AppTextButton(
                    text: 'Início',
                    onPressed: () => _scrollToSection(0),
                    textStyle: _getTitleStyle(0),
                  ),
                  SizedBox(width: _titleSizeWithSpacing),
                  AppTextButton(
                    text: 'Sobre',
                    onPressed: () => _scrollToSection(1),
                    textStyle: _getTitleStyle(1),
                  ),
                  SizedBox(width: _titleSizeWithSpacing),
                  AppTextButton(
                    text: 'Habilidades',
                    onPressed: () => _scrollToSection(2),
                    textStyle: _getTitleStyle(2),
                  ),
                  SizedBox(width: _titleSizeWithSpacing),
                  AppTextButton(
                    text: 'Projetos',
                    onPressed: () => _scrollToSection(3),
                    textStyle: _getTitleStyle(3),
                  ),
                  SizedBox(width: _titleSizeWithSpacing),
                  Spacer(),
                  AppFilledButton(
                    text: 'Contrate-me',
                    onPressed: () => _scrollToSection(4),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.background,
      body: ListView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          HomeSection(),
          Container(
            color: Colors.blue,
            height: AppConstants.homeSectionHeight,
            child: Center(child: Text('Sobre')),
          ),
          Container(
            color: Colors.green,
            height: AppConstants.homeSectionHeight,
            child: Center(child: Text('Habilidades')),
          ),
          Container(
            color: Colors.yellow,
            height: AppConstants.homeSectionHeight,
            child: Center(child: Text('Projetos')),
          ),
        ],
      ),
    );
  }

  TextStyle _getTitleStyle(int index) {
    if (index == _selectedIndex) return AppFonts.bold(16, AppColors.primary);

    return AppFonts.regular(16, AppColors.textSecondary);
  }
}
