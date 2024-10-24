import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_coding/config/color/app_colors.dart';

class NoInternetWidget extends StatelessWidget {
  final String errorMessage;

  const NoInternetWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .15,
        ),
        const Icon(
          Icons.cloud_off_rounded,
          color: AppColors.errorColor,
          size: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Center(
            child: Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}
