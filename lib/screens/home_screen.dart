import 'package:bon_assignment_app/bloc/theme/theme_bloc.dart';
import 'package:bon_assignment_app/bloc/theme/theme_event.dart';
import 'package:bon_assignment_app/models/card_bill_model.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final List<CardBill> _mockBills = [
    CardBill(amount: 7000, date: "17/8/2025", status: Status.completed),
    CardBill(amount: 4500, date: "23/8/2025", status: Status.failed),
    CardBill(amount: 13000, date: "01/9/2025", status: Status.pending),
    CardBill(amount: 2500, date: "05/9/2025", status: Status.completed),
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('YOUR REWARDS'),
        centerTitle: true,
        elevation: 2,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                context.read<ThemeBloc>().add(ThemeToggled());
              },
              icon: (Theme.of(context).brightness == Brightness.dark)
                  ? const Icon(Icons.light_mode)
                  : const Icon(Icons.dark_mode),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: colorScheme.secondary, width: 2),
                ),
                child: Text(
                  "You've unlocked a \$10 Reward !",
                  style: textTheme.headlineSmall?.copyWith(
                    color: colorScheme.onSecondaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 36),
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Navigating to brand selection...')),
                  );
                },
                icon: const Icon(Icons.shopping_bag_outlined, size: 20),
                label: const Text(
                  "Choose Brand",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              const SizedBox(height: 36),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Payment History", style: textTheme.titleLarge),
              ),
              const SizedBox(height: 16),
              CarouselSlider.builder(
                itemCount: _mockBills.length,
                itemBuilder: (context, index, realIndex) {
                  return _BillCard(bill: _mockBills[index]);
                },
                options: CarouselOptions(
                  height: 160,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.85,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BillCard extends StatelessWidget {
  final CardBill bill;

  const _BillCard({required this.bill});

  static const Map<Status, String> _statusToString = {
    Status.completed: "Completed",
    Status.failed: "Failed",
    Status.pending: "Pending",
  };

  static const Map<Status, IconData> _statusToIcon = {
    Status.completed: Icons.check_circle,
    Status.failed: Icons.cancel,
    Status.pending: Icons.hourglass_top,
  };

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final Map<Status, Color> statusToColor = {
      Status.completed: colorScheme.primary,
      Status.failed: colorScheme.error,
      Status.pending: colorScheme.tertiary,
    };

    final color = statusToColor[bill.status]!;
    final icon = _statusToIcon[bill.status]!;
    final statusText = _statusToString[bill.status]!;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            color.withValues(alpha: 0.25),
            color.withValues(alpha: 0.15),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: color.withValues(alpha: 0.5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Due: ${bill.date}",
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(icon, color: color, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        statusText,
                        style: textTheme.labelSmall?.copyWith(
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              "\$${bill.amount}",
              style: textTheme.displaySmall?.copyWith(
                color: colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
