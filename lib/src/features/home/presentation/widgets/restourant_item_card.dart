import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';
import 'package:bookeat/src/core/widgets/animations/custom_page_indicator.dart';
import 'package:bookeat/src/features/home/presentation/widgets/discount_badge.dart';
import 'package:bookeat/src/features/home/presentation/widgets/like_button_badge.dart';
import 'package:bookeat/src/features/home/presentation/widgets/time_filter_chip.dart';
import 'package:flutter_svg/svg.dart';

class RestourantItemCard extends StatefulWidget {
  final String imagePath;
  final String name;
  final String rating;
  final String discount;
  final String averageCheck;
  final String availableTime;
  final String availableGuests;
  const RestourantItemCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.rating,
    required this.discount,
    required this.averageCheck,
    required this.availableTime,
    required this.availableGuests,
  });

  @override
  State<RestourantItemCard> createState() => _RestourantItemCardState();
}

class _RestourantItemCardState extends State<RestourantItemCard> {
  bool _isLiked = false;
  late PageController _pageController;
  final List<String> _imagePaths = [];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _imagePaths.addAll(List.generate(3, (index) => widget.imagePath));
    _pageController = PageController();
    _pageController.addListener(() {
      final page = _pageController.page?.round() ?? 0;
      if (page != _currentPage) {
        setState(() {
          _currentPage = page;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        context.push(RoutePaths.restourantDetails);
      },
      child: Container(
        width: context.width * 0.875,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: context.colors.gray200,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: _imagePaths.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          _imagePaths[index],
                          width: double.infinity,
                          fit: BoxFit.fill,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: DiscountBadge(discount: widget.discount),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8, top: 8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: LikeButtonBadge(
                        isLiked: _isLiked,
                        onTap: () {
                          setState(() {
                            _isLiked = !_isLiked;
                          });
                        }),
                  ),
                ),
                Positioned(
                  bottom: 12,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CustomPageIndicator(
                      currentPage: _currentPage,
                      pageCount: _imagePaths.length,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.name,
                  style: context.typography.bodyMbold.copyWith(
                    color: context.colors.gray800,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 4,
                  children: [
                    Text(
                      widget.rating,
                      style: context.typography.bodyMbold.copyWith(
                        color: context.colors.gray800,
                      ),
                    ),
                    SvgPicture.asset(context.assetImages.star, width: 20, height: 20),
                  ],
                ),
              ],
            ),
            Row(
              spacing: 8,
              children: [
                Text(
                  'Средний чек',
                  style: context.typography.bodyMmedium.copyWith(
                    color: context.colors.textGray,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: context.colors.yellowChip,
                    borderRadius: BorderRadius.circular(10000),
                  ),
                  child: Text(
                    widget.averageCheck,
                    style: context.typography.outlinesemibold.copyWith(
                      color: context.colors.gray900,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'Доступные на сегодня, ${widget.availableGuests} гостя',
              style: context.typography.captionMmedium.copyWith(
                color: context.colors.gray700,
              ),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 8,
                children: [
                  ...List.generate(10, (index) => TimeFilterChip()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
