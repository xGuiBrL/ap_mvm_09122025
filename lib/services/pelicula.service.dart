import 'package:ap_mvm_09122025/models/pelicula.model.dart';

class PeliculaService {
  Future<List<Pelicula>> fetchPeliculas() async {
    await Future.delayed(Duration(seconds: 3));

    return [
      Pelicula("La ciudad de la nieve", "J.A. Bayona", "Drama", 2023),
      Pelicula("Un vecino gruñón", "Marc Forster", "Comedia", 2022),
      Pelicula("La viuda negra", "Carlos Sedea", "Crimen", 2025),
    ];
  }
}
