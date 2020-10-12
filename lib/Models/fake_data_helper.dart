// ignore: non_constant_identifier_names
class Fake {
  List fakeData() {
    var rating = ([4.5, 3.5, 5.0, 3.0, 2.5].toList()..shuffle()).first;
    var price = ([400, 3000, 500, 300, 2000].toList()..shuffle()).first;
    var offer = ([0.25, 0.10, 0.15, 0.40, 0.20].toList()..shuffle()).first;
    var productName = ([
      "2 States - The Story of My Marriage  (English, Paperback, Bhagat Chetan)",
      "The Monk Who Sold His Ferrari  (English, Paperback, Sharma Robin S.)",
      "The Power of Your Subconscious Mind (Revised)  (English, Electronic book text, Dr Murphy Joseph)",
      "Attitude Is Everything: Change Your Attitude ... Change Your Life!  (English, Paperback, Jeff Keller)",
      "Think Like a Monk - Think like a monk (English)  (English, Paperback, Jay Shetty)"
    ].toList()
          ..shuffle())
        .first;
    return [rating, price, productName, offer];
  }
}
