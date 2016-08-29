function decoder(words) {
  return words.reduce(function(res, item, idx) {
    return res + item[idx % 5];
  }, '');
}