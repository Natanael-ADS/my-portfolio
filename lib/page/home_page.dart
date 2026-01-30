import 'package:flutter/material.dart';
import 'package:my_portfolio/components/button/app_filled_button.dart';
import 'package:my_portfolio/components/button/app_text_button.dart';
import 'package:my_portfolio/constants/app_assets.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _titleSizeWithSpacing = 40.0;
  static const _sectionHeight = 500.0;

  var _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AppAssets.logo, width: 32, height: 32),
              Spacer(),
              AppTextButton(
                text: 'Início',
                onPressed: () => setState(() => _selectedIndex = 0),
                textStyle: _getTitleStyle(0),
              ),
              SizedBox(width: _titleSizeWithSpacing),
              AppTextButton(
                text: 'Sobre',
                onPressed: () => setState(() => _selectedIndex = 1),
                textStyle: _getTitleStyle(1),
              ),
              SizedBox(width: _titleSizeWithSpacing),
              AppTextButton(
                text: 'Habilidades',
                onPressed: () => setState(() => _selectedIndex = 2),
                textStyle: _getTitleStyle(2),
              ),
              SizedBox(width: _titleSizeWithSpacing),
              AppTextButton(
                text: 'Projetos',
                onPressed: () => setState(() => _selectedIndex = 3),
                textStyle: _getTitleStyle(3),
              ),
              SizedBox(width: _titleSizeWithSpacing),
              Spacer(),
              AppFilledButton(
                text: 'Contrate-me',
                onPressed: () => setState(() => _selectedIndex = 4),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.background,
      body: ListView(
        children: [
          Container(
            color: Colors.red,
            height: _sectionHeight,
            child: Center(child: Text('Início')),
          ),
          Container(
            color: Colors.blue,
            height: _sectionHeight,
            child: Center(child: Text('Sobre')),
          ),
          Container(
            color: Colors.green,
            height: _sectionHeight,
            child: Center(child: Text('Habilidades')),
          ),
          Container(
            color: Colors.yellow,
            height: _sectionHeight,
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
