import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/features/home/presentation/app_bar/restourant_details_appbar.dart';
import 'package:bookeat/src/features/home/presentation/widgets/details_description_card.dart';
import 'package:bookeat/src/features/home/presentation/widgets/details_description_card_sec_variant.dart';
import 'package:bookeat/src/features/home/presentation/widgets/details_description_chip.dart';
import 'package:bookeat/src/features/home/presentation/widgets/social_media_card.dart';
import 'package:flutter_svg/svg.dart';

class RestourantDetailsPage extends StatelessWidget {
  const RestourantDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          RestourantDetailsAppbar(context: context),
          SliverSafeArea(
            top: false,
            sliver: SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Koktem Restaurant',
                          style: context.typography.h3bold.copyWith(
                            color: context.colors.black,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 4,
                          children: [
                            Text(
                              '4.9',
                              style: context.typography.h4semibold.copyWith(
                                color: context.colors.black,
                              ),
                            ),
                            SvgPicture.asset(
                              context.assetImages.star,
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: context.colors.grayIcon,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Открыто до 02:00',
                          style: context.typography.bodyLsemibold.copyWith(
                            color: context.colors.black,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: context.colors.grayIcon,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Wrap(
                      spacing: 4,
                      runSpacing: 4,
                      children: [
                        DetailsDescriptionChip(text: '15%', color: context.colors.yellowChip, isBold: true),
                        DetailsDescriptionChip(text: 'Ресторан', color: context.colors.grey100),
                      ],
                    ),
                    SizedBox(height: 23),
                    Row(
                      spacing: 8,
                      children: [
                        DetailsDescriptionCard(
                          title: 'Средний чек',
                          icon: context.assetImages.cash,
                          subtitle: '~ 8 000 ₸',
                        ),
                        DetailsDescriptionCard(
                          title: '2.34 км',
                          icon: context.assetImages.location,
                          subtitle: 'пр. Абая, 71',
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    Column(
                      spacing: 12,
                      children: [
                        DetailsDescriptionCardSecVariant(
                          title: 'Адрес',
                          subtitle: 'г. Алматы, пр. Абая, 71',
                          icon: context.assetImages.location,
                        ),
                        DetailsDescriptionCardSecVariant(
                          title: 'Часы работы',
                          subtitle: '10:00 - 22:00',
                          icon: context.assetImages.time,
                        ),
                        DetailsDescriptionCardSecVariant(
                          title: 'Телефон',
                          subtitle: '+7 700 040 0220',
                          icon: context.assetImages.phone,
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Особенности',
                      style: context.typography.h4bold.copyWith(
                        color: context.colors.gray800,
                      ),
                    ),
                    SizedBox(height: 30),
                    Wrap(
                      spacing: 4,
                      runSpacing: 4,
                      children: [
                        DetailsDescriptionChip(text: 'Школа сомелье', color: context.colors.grey100),
                        DetailsDescriptionChip(text: 'Ресторан', color: context.colors.grey100),
                        DetailsDescriptionChip(text: 'Сигарная комната', color: context.colors.grey100),
                      ],
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Социальные сети',
                      style: context.typography.h4bold.copyWith(
                        color: context.colors.gray800,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      spacing: 8,
                      children: [
                        SocialMediaCard(
                          title: 'Instagram',
                          icon: context.assetImages.insta,
                        ),
                        SocialMediaCard(
                          title: 'WhatsApp',
                          icon: context.assetImages.whatsapp,
                        ),
                        SocialMediaCard(
                          title: 'Website',
                          icon: context.assetImages.web,
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Забронировать столикй',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
