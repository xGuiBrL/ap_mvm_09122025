import 'package:flutter/foundation.dart';
import 'package:ap_mvm_09122025/models/pelicula.model.dart';
import 'package:ap_mvm_09122025/services/pelicula.service.dart';

class PeliculaViewModel extends ChangeNotifier{
  final PeliculaService _peliculaService = PeliculaService();
  List<Pelicula> _peliculas = [];
  bool _cargando = false;
  List<Pelicula> get peliculas => _peliculas;
  bool get cargando => _cargando;

      Future<void> fetchPeliculas() async {
        _cargando = true;
        notifyListeners();
        _peliculas = await _peliculaService.fetchPeliculas();
        _cargando = false;
        notifyListeners();
      }
}