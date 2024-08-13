class Horoscope {
  final String _horoscopeName;
  final String _horoscopeDate;
  final String _horoscopeDetail;
  final String _horoscopeSmallImg;
  final String _horoscopeBigImg;

  get horoscopeName => _horoscopeName;

  get horoscopeDate => _horoscopeDate;

  get horoscopeDetail => _horoscopeDetail;

  get horoscopeSmallImg => _horoscopeSmallImg;

  get horoscopeBigImg => _horoscopeBigImg;

  Horoscope(this._horoscopeName, this._horoscopeDate, this._horoscopeDetail,
      this._horoscopeSmallImg, this._horoscopeBigImg);

  @override
  String toString() {
    return '$_horoscopeName $_horoscopeBigImg';
  }
}
