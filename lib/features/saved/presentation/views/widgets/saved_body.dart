import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:flutter/material.dart';
import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:cinema_app/features/saved/presentation/views/widgets/customcard.dart';

class SavedBody extends StatefulWidget {
  const SavedBody({super.key});

  @override
  State<SavedBody> createState() => _SavedBodyState();
}

class _SavedBodyState extends State<SavedBody> {
  List<TrendingModel> savedData = [];

  void removeItem(int index) {
    setState(() {
      savedData.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff05041f),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Saved",
                style: textStyle(Colors.white, 30, FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: savedData.isEmpty
                    ? Center(
                        child: Text(
                          "No Saved Items",
                          style: textStyle(
                              Colors.grey[400]!, 20, FontWeight.normal),
                        ),
                      )
                    : ListView.builder(
                        itemCount: savedData.length,
                        itemBuilder: (context, index) {
                          return CustomCard(
                            datas: savedData[index],
                            onDelete: () => removeItem(index),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
