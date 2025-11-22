import 'package:flutter/material.dart';
import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class OrdersEmptyState extends StatelessWidget {
  const OrdersEmptyState({
    super.key,
    this.onRefresh,
    this.onScan,
  });

  final VoidCallback? onRefresh;
  final VoidCallback? onScan;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            width: 180,
            height: 180,
            'assets/app_images/orders_empty.png',
          ),
          Text(
            'Пока нет заказов',
            style: context.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: context.colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            'Ваши заказы будут отображаться здесь после сканирования товаров или получения посылок',
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colors.gray500,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
