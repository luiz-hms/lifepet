import 'package:flutter/material.dart';
import 'package:lifepet/screens/form_pet_screen.dart';
import '../models/pet_model.dart';
import 'pet/perfil_pet_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: pet.length,
        itemBuilder: (context, index) {
          return _petCard(context, index);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => FormPetScreen(),
            ),
          );
        },
        label: Text('Cadastrar'),
        icon: Icon(
          Icons.pets,
        ),
        backgroundColor: Colors.redAccent,
      ),
    );
  }

  Widget _petCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => PerfilPetScreen(pet: pet[index]),
          ),
        );
      },
      child: (Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: pet[index].id,
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(pet[index].imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    pet[index].name,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                12,
                12,
                40,
                0,
              ),
              child: Text(
                pet[index].description,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
