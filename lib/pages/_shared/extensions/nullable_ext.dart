extension NullableExt<T> on T? {
  R? let<R>(R Function(T self) mapper) {
    final self = this;
    return self != null ? mapper(self) : null;
  }
}
