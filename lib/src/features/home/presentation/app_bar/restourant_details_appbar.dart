import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/widgets/animations/custom_page_indicator.dart';
import 'package:soft_edge_blur/soft_edge_blur.dart';

class RestourantDetailsAppbar extends StatefulWidget {
  const RestourantDetailsAppbar({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  State<RestourantDetailsAppbar> createState() => _RestourantDetailsAppbarState();
}

class _RestourantDetailsAppbarState extends State<RestourantDetailsAppbar> {
  late PageController _pageController;
  int _currentPage = 0;

  final List<String> _images = [
    'example',
    'example',
    'example',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final appBarHeight = widget.context.height * 0.20;

    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: appBarHeight + statusBarHeight,
      pinned: false,
      floating: false,
      snap: false,
      automaticallyImplyLeading: false,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  child: SoftEdgeBlur(
                    edges: [
                      EdgeBlur(
                        type: EdgeType.topEdge,
                        size: 200,
                        sigma: 10,
                        controlPoints: [
                          ControlPoint(
                            position: 0.4,
                            type: ControlPointType.visible,
                          ),
                          ControlPoint(
                            position: 1,
                            type: ControlPointType.transparent,
                          ),
                        ],
                      ),
                    ],
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      itemCount: _images.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                            ),
                            image: DecorationImage(
                              image: AssetImage(widget.context.assetImages.example.path),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 8,
                left: 16,
                child: InkWell(
                  customBorder: CircleBorder(),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    context.pop();
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.transparent.withAlpha(50),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      color: context.colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                left: 0,
                right: 0,
                child: CustomPageIndicator(
                  currentPage: _currentPage,
                  pageCount: _images.length,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 8,
                right: 16,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  decoration: BoxDecoration(
                    color: Colors.transparent.withAlpha(50),
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        customBorder: CircleBorder(),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          // TODO: Implement share functionality
                        },
                        child: Icon(
                          Icons.share,
                          color: context.colors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 1,
                        height: 22,
                        color: context.colors.white.withAlpha(
                          88,
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        customBorder: CircleBorder(),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          // TODO: Implement favorite functionality
                        },
                        child: Icon(
                          context.icons.heart,
                          color: context.colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
