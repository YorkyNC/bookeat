import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/widgets/animations/custom_page_indicator.dart';
import 'package:bookeat/src/features/home/presentation/widgets/discount_badge.dart';
import 'package:bookeat/src/features/home/presentation/widgets/like_button_badge.dart';

class PromotionArticleCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String? category;
  final String? date;
  final String? description;
  final bool isPromotion;
  final String? discount;
  const PromotionArticleCard({
    super.key,
    required this.imagePath,
    required this.title,
    this.category,
    this.date,
    this.description,
    this.isPromotion = false,
    this.discount,
  });

  @override
  State<PromotionArticleCard> createState() => _PromotionArticleCardState();
}

class _PromotionArticleCardState extends State<PromotionArticleCard> {
  bool _isLiked = false;
  late PageController _pageController;
  final List<String> _imagePaths = [];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _imagePaths.addAll(List.generate(2, (index) => widget.imagePath));
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
      onTap: () {},
      child: Container(
        width: context.width * 0.875,
        padding: const EdgeInsets.all(16),
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
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
                if (widget.isPromotion && widget.discount != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: DiscountBadge(discount: widget.discount!),
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
                      },
                    ),
                  ),
                ),
                if (_imagePaths.length > 1)
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
            const SizedBox(height: 12),
            if (widget.category != null)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: widget.isPromotion ? context.colors.mainAccent.withValues(alpha: 0.1) : context.colors.grey100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  widget.category!,
                  style: context.typography.captionMsemibold.copyWith(
                    color: widget.isPromotion ? context.colors.mainAccent : context.colors.gray700,
                  ),
                ),
              ),
            if (widget.category != null) const SizedBox(height: 8),
            Text(
              widget.title,
              style: context.typography.bodyMbold.copyWith(
                color: context.colors.gray800,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            if (widget.description != null) ...[
              const SizedBox(height: 8),
              Text(
                widget.description!,
                style: context.typography.bodyMregular.copyWith(
                  color: context.colors.textGray,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            if (widget.date != null) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 16,
                    color: context.colors.textGray,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    widget.date!,
                    style: context.typography.captionMregular.copyWith(
                      color: context.colors.textGray,
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
