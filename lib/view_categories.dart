import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:watchncook_admin/controller/firebase.dart';

class ViewCategories extends StatelessWidget {
  const ViewCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        backgroundColor: Colors.amber,
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream:
              FirebaseFirestore.instance.collection('categories').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Error"),
              );
            } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              return Center(
                child: Text("No Categories Found!!"),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    var category = snapshot.data!.docs[index];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text("$index"),
                        ),
                        title: Text("${category['categoryName']}"),
                        trailing: IconButton(
                            onPressed: () {
                              deleteCategory(id: category.id);
                            },
                            icon: Icon(Icons.delete)),
                      ),
                    );
                  });
            }
          }),
    );
  }
}
