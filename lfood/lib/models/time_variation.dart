class TimeVariation{

  int start, finish;

  TimeVariation({required this.start, required this.finish});

  getVariation(){ return finish - start; }

}