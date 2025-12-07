import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';

class ArticleItemCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String? description;
  final String? author;
  final String? date;
  final int? readTime;
  const ArticleItemCard({
    super.key,
    required this.imagePath,
    required this.title,
    this.description,
    this.author,
    this.date,
    this.readTime,
  });

  @override
  State<ArticleItemCard> createState() => _ArticleItemCardState();
}

class _ArticleItemCardState extends State<ArticleItemCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        context.push(RoutePaths.articleDetail);
      },
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset(
                  widget.imagePath,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: context.colors.grey100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Статья',
                      style: context.typography.captionMsemibold.copyWith(
                        color: context.colors.gray700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.title,
                    style: context.typography.bodyMbold.copyWith(
                      color: context.colors.gray800,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (widget.description != null) ...[
                    const SizedBox(height: 6),
                    Text(
                      widget.description!,
                      style: context.typography.bodyMregular.copyWith(
                        color: context.colors.textGray,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                  if (widget.author != null || widget.date != null || widget.readTime != null) ...[
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 12,
                      runSpacing: 8,
                      children: [
                        if (widget.author != null)
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.person_outline,
                                size: 14,
                                color: context.colors.textGray,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                widget.author!,
                                style: context.typography.captionMregular.copyWith(
                                  color: context.colors.textGray,
                                ),
                              ),
                            ],
                          ),
                        if (widget.date != null)
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 14,
                                color: context.colors.textGray,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                widget.date!,
                                style: context.typography.captionMregular.copyWith(
                                  color: context.colors.textGray,
                                ),
                              ),
                            ],
                          ),
                        if (widget.readTime != null)
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 14,
                                color: context.colors.textGray,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${widget.readTime} мин',
                                style: context.typography.captionMregular.copyWith(
                                  color: context.colors.textGray,
                                ),
                              ),
                            ],
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
