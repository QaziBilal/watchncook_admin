import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watchncook_admin/helper/constants.dart';
import 'package:watchncook_admin/helper/dummy_data.dart';

import 'package:watchncook_admin/view_categories.dart';
import 'package:watchncook_admin/view_recipies.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController categoryController = TextEditingController();
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Watch n Cook Admin"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: AppColors.black.withOpacity(0.02),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: AppColors.black.withOpacity(0.1))),
              child: TextField(
                controller: categoryController,
                decoration: const InputDecoration(
                    hintText: "Category",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search_outlined)),
              )),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                addCategoryToFirestore(categoryController.text);
                categoryController.text = "";
              },
              child: isloading == false
                  ? const Text("Add Category")
                  : const CircularProgressIndicator()),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ViewCategories()));
            },
            child: const Text("View Categories"),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                uploadRecipes();
              },
              child: isloading == false
                  ? const Text("Add Recipes")
                  : const CircularProgressIndicator()),
                   const SizedBox(
            height: 30,
          ),
                  ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ViewRecipies()));
            },
            child: const Text("View Categories"),
          ),
        ],
      ),
    );
  }

  Future<void> addCategoryToFirestore(String categoryName) async {
    try {
      // Reference to the Firestore collection
      setState(() {
        isloading = true;
      });
      CollectionReference categoriesCollection =
          FirebaseFirestore.instance.collection('categories');

      // Add a new document with auto-generated ID
      await categoriesCollection.add({
        'categoryName': categoryName,
        // You can add more fields related to your category here
      });
      setState(() {
        isloading = false;
      });

      debugPrint('Category added successfully');
    } catch (e) {
      setState(() {
        isloading = false;
      });
      debugPrint('Error adding category: $e');
    }
  }

  Future<String> uploadImage(String image) async {
    String imagePath = image;
    String filename = imagePath.split('/').last;

    ByteData imageData = await rootBundle.load(imagePath);
    List<int> bytes = imageData.buffer.asUint8List();
    Uint8List uint8list = Uint8List.fromList(bytes);

    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child('images').child(filename);

    try {
      await ref.putData(uint8list);
      String downloadURL = await ref.getDownloadURL();
      debugPrint('Download URL: $downloadURL');
      return downloadURL;
    } catch (error) {
      debugPrint('Error uploading image: $error');
      return ''; // Return an empty string or handle error accordingly
    }
  }

  Future<void> uploadRecipes() async {
    setState(() {
      isloading = true;
    });
    CollectionReference ref = FirebaseFirestore.instance.collection('recipe');
    for (var obj in reciepList) {
      String imageUrl = await uploadImage(obj.imageUrl!);

      if (imageUrl.isNotEmpty) {
        try {
          await ref.add({
            'name': obj.name,
            'category': obj.category,
            'description': obj.description,
            'cookingTime': obj.cookingTime,
            'ingredients': obj.ingredients,
            'steps': obj.steps,
            'imageUrl': imageUrl,
          });
          debugPrint("Recipe Added to Firestore ${obj.name}");
        } catch (error) {
          debugPrint(
              "Error in adding the Recipe to Firestore ${obj.name}: $error");
        }
      } else {
        debugPrint("Error: Image URL is empty for ${obj.name}");
      }
    }
    setState(() {
      isloading = false;
    });
  }
}
