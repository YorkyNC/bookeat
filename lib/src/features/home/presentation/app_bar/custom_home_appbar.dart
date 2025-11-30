import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/widgets/buttons/custom_app_button.dart';
import 'package:flutter_svg/svg.dart';

class CustomHomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppbar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.colors.white,
      automaticallyImplyLeading: false,
      toolbarHeight: 80,
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Выберите город',
            style: context.typography.bodyMregular.copyWith(
              color: context.colors.gray400,
            ),
          ),
          Row(
            children: [
              Text(
                'Алматы',
                style: context.typography.h1bold.copyWith(color: context.colors.gray800),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: context.colors.gray800,
                size: 24,
              ),
            ],
          ),
        ],
      ),
      actions: [
        CustomAppButton(
          icon: SvgPicture.asset(context.assetImages.scan),
        ),
      ],
    );
  }
}
