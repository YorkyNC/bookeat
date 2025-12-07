import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';

class StockItemCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String discount;
  final String? description;
  final String? date;
  const StockItemCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.discount,
    this.description,
    this.date,
  });

  @override
  State<StockItemCard> createState() => _StockItemCardState();
}

class _StockItemCardState extends State<StockItemCard> {
  final bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        context.push(RoutePaths.stockDetail);
      },
      child: Container(
        width: context.width * 0.875,
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
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  widget.imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: context.colors.mainAccent.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Акция',
                      style: context.typography.captionMsemibold.copyWith(
                        color: context.colors.mainAccent,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
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
          ],
        ),
      ),
    );
  }
}
