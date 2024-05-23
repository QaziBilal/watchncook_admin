import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> deleteCategory({id}) async {
  try {
    await FirebaseFirestore.instance.collection('categories').doc(id).delete();
    print("Deleted SuccessFully");
  } catch (e) {
    print("Some Errors $e");
  }
}
