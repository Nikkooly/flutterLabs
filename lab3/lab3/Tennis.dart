class Tennis implements Comparable{

  Tennis(this.weight);
  double weight;

  @override
  int compareTo(other) {
    return this.weight == other.weight ? 1 : 0;
  }

}