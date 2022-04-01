import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/theme/app_theme.dart';
import 'dart:math' as math;

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Transform.rotate(
                angle: -math.pi - 15.3,
                child: Container(
                  width: 95.0,
                  height: 95.0,
                  decoration: BoxDecoration(
                    color: AppTheme.kAmber,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.kAmber.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 80.0,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 90.0),
              Transform.rotate(
                angle: -math.pi - 3.3,
                child: Container(
                  width: 95.0,
                  height: 95.0,
                  decoration: BoxDecoration(
                    color: AppTheme.kPurple,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.kPurple.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 80.0,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Transform.rotate(
                angle: -math.pi - 15.3,
                child: Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: AppTheme.kGreen,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.kGreen.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 80.0,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 90.0),
              Transform.rotate(
                angle: -math.pi - 15.3,
                child: Container(
                  width: 105.0,
                  height: 105.0,
                  decoration: BoxDecoration(
                    color: AppTheme.kBlue,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.kBlue.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 80.0,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
