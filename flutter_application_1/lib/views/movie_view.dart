import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/movie_controller.dart';
import 'package:flutter_application_1/models/movie.dart';
import 'package:flutter_application_1/widgets/modal.dart';

class MovieView extends StatefulWidget {
  const MovieView({super.key});

  @override
  State<MovieView> createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  final formKey = GlobalKey<FormState>();
  MovieController movie = MovieController();
  TextEditingController title = TextEditingController();
  TextEditingController rating = TextEditingController();
  TextEditingController posterPath = TextEditingController();
  List buttonChoice = ["Update", "Hapus"];
  List? film;
  int? film_id;
  getFilm() {
    setState(() {
      film = movie.movie;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFilm();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  film_id = null;
                });
                title.text = '';
                rating.text = '';
                posterPath.text = '';
                ModalWidget().showFullModal(context, addItem(null));
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
          itemCount: film!.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image(image: AssetImage(film![index].posterPath)),
                title: Text(film![index].title),
                trailing: PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return buttonChoice.map((r) {
                      return PopupMenuItem(
                        value: r,
                        child: Text(r),
                        onTap: () {
                          if (r == "Update") {
                            setState(() {
                              film_id = film![index].id;
                            });

                            title.text = film![index].title;
                            posterPath.text = film![index].posterPath;
                            rating.text = film![index].rating.toString();
                            ModalWidget()
                                .showFullModal(context, addItem(index));
                          } else if (r == "Hapus") {
                            film!.removeWhere(
                                (item) => item.id == film![index].id);
                            getFilm();
                          }
                        },
                      );
                    }).toList();
                  },
                ),
              ),
            );
          }),
    );
  }

  Widget addItem(int? index) {
    return Container(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
                controller: title,
                decoration: InputDecoration(label: Text("Title")),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'harus diisi';
                  } else {
                    return null;
                  }
                }),
            TextFormField(
                controller: posterPath,
                decoration: InputDecoration(label: Text("Gambar")),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'harus diisi';
                  } else {
                    return null;
                  }
                }),
            TextFormField(
                controller: rating,
                decoration: InputDecoration(label: Text("rating")),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'harus diisi';
                  } else {
                    return null;
                  }
                }),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (index != null) {
                      film![index].id = film_id;
                      film![index].title = title.text;
                      film![index].posterPath = posterPath.text;
                      film![index].rating = double.parse(rating.text);
                      getFilm();
                      Navigator.pop(context);
                    } else {
                      int _id_film = film!.length + 1;
                      film!.add(MovieModel(
                        id: _id_film,
                        title: title.text,
                        posterPath: posterPath.text,
                        rating: double.parse(rating.text),
                      ));
                      getFilm();
                      Navigator.pop(context);
                    }
                  }
                },
                child: Text("Simpan"))
          ],
        ),
      ),
    );
  }
}
