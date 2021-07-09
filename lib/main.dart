void main() {
  var ages = [33, 15, 27, 40, 22];
  ages.sort();

  print("La mayor edad es: ${ages[ages.length - 1]}");
  print("La menor edad es: ${ages[0]}");
  print("La edad promedio es: ${ages.reduce((c, i) => c + i) / ages.length}");
}
