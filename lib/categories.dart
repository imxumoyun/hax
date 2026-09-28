import 'package:flutter/material.dart';
import 'package:hax/category.dart';
import 'category_model.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({super.key});

  List<CategoryModel> categories = [
    CategoryModel(nomi: "Vegetables", rasmi: "https://www.veggipedia.nl/_next/image?url=https%3A%2F%2Fveggipedia-cms.production.taks.zooma.cloud%2Fassets%2FUploads%2FProducts%2FBroccoli-groenten-veggipedia__FitMaxWzYwMCw2MDBd.png&w=3840&q=75", products: []),
    CategoryModel(nomi: "Fruits", rasmi: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfNR-NE2USOGQwpgM-fqCapWZaT6_2gBR0QZ9axMG6pGSpObLzW24k9ByF&s=10", products: []),
    CategoryModel(nomi: "Bread", rasmi: "https://insanelygoodrecipes.com/wp-content/uploads/2022/08/Mixed-Breads-in-Basket-and-Wooden-Cutting-Board.jpg", products: []),
    CategoryModel(nomi: "Sweets", rasmi: "https://sweetz-united.de/cdn/shop/articles/Sweetz_United_Blog_Beste_Sussigkeiten_1d0919cc-c96b-476a-bfa7-9ba92ab9c098.jpg?v=1759324676&width=1600", products: []),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Categories")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
              ),
            ),
            SizedBox(height: 42),

            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 10 / 12,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Category()));
                    },
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Color(0xFFD9D0E3)),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.network(
                                categories[index].rasmi,
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                categories[index].nomi,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Text("(43)", style: TextStyle(fontSize: 12)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
