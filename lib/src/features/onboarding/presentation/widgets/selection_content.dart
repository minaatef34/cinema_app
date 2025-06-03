import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../shared_widgets/skip_button.dart';
import '../../../signin/presentation/pages/sign_in.dart';

class SelectionContent extends StatefulWidget {
  final List<String> genres;

  const SelectionContent({super.key, required this.genres});

  @override
  State<SelectionContent> createState() => _SelectionContentState();
}

class _SelectionContentState extends State<SelectionContent> {
  final List<String> selectedGenres = [];

  void toggleGenre(String genre) {
    setState(() {
      if (selectedGenres.contains(genre)) {
        selectedGenres.remove(genre);
      } else {
        selectedGenres.add(genre);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SkipButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: Center(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: widget.genres.map((genre) {
                final isSelected = selectedGenres.contains(genre);
                return GestureDetector(
                  onTap: () => toggleGenre(genre),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.mainColor : AppColors.greyColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      genre,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Text(
          "Select the genres you like to watch",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(vertical: 14),
              minimumSize: Size(double.infinity, 0),
            ),
            onPressed: () {},
            child: TextButton(
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
