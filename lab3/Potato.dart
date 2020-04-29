class Potato implements Comparable{

  Potato(this.weight);
  double weight;

  @override
  int compareTo(other) {
    return this.weight == other.weight ? 1 : 0;
  }

}