import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  void showSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return SizedBox(
          height: 500.h,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Text(
                'Your Order Has Been Placed',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Icon(Icons.favorite, size: 200, color: Colors.red),
              Text(
                'Thank You for Showing Your Love',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Products', style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Card(
                    child: Text(
                      'Get Your Fav Car',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 400.h,
              width: 300.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: const Color.fromARGB(255, 191, 189, 189),
                ),
              ),
              child: ListView(
                children: [
                  SizedBox(height: 15.h),

                  Image.asset('assets/images/BMW.jpeg', height: 200.h),
                  SizedBox(height: 15.h),
                  Image.asset('assets/images/Adro.png', height: 200.h),
                  SizedBox(height: 15.h),
                  Image.asset('assets/images/Porsche.jpeg', height: 200.h),
                  SizedBox(height: 15.h),
                  Image.asset('assets/images/BMW.jpeg', height: 200.h),
                  SizedBox(height: 15.h),

                  Image.asset('assets/images/Adro.png', height: 200.h),
                  SizedBox(height: 15.h),
                  Image.asset('assets/images/BMW.jpeg', height: 200.h),
                  SizedBox(height: 15.h),
                  Image.asset('assets/images/Porsche.jpeg', height: 200.h),
                ],
              ),
            ),

            SizedBox(height: 5.h),

            ElevatedButton(
              onPressed: () {
                showSheet(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('You Cant Add new Car here'),
              backgroundColor: Colors.red,
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
