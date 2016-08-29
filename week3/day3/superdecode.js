var decode = require('./decode.js');

// Option constants
var ODD = 'odd';
var EVEN = 'even';
var EVERY = 'every';
var FORWARDS = 'forwards';
var BACKWARDS = 'backwards';
var SEPARATOR = '-';

// Option combinations
var DIRECTION = [BACKWARDS, FORWARDS];
var COUNT = [ODD, EVEN, EVERY];

// Default options
var DEFAULT_OPTIONS = {
  direction: FORWARDS,
  count: EVERY
};

// Read a string of options and return an option object config
function parseOptions(options) {
  return options.split(SEPARATOR).reduce(function (res, option) {
    return {
      direction: DIRECTION.indexOf(option) !== -1 ? option : res.direction,
      count: COUNT.indexOf(option) !== -1 ? option : res.count
    };
  }, DEFAULT_OPTIONS);
}

// Take a sentence and turn it into an array of words
function toWords(sentence) {
  return sentence.split(' ');
}

// Take a direction and return a function that can be called with
// an array of words and it reverses it depending on the given direction.
function getReverser(direction) {
  return function (words) {
    return direction === BACKWARDS
      ? words.reverse()
      : words;
  }
}

function getCounter(count) {
  return function (words) {
    if (count === EVERY) return words;
    return words.filter(function (item, index) {
      return count === EVEN
        ? index % 2 === 0
        : index % 2 !== 0;
    });
  }
}

function superDecoder (sentence, stringOptions) {
  var options = parseOptions(stringOptions);
  var reverser = getReverser(options.direction);
  var counter = getCounter(options.count);
  return counter(reverser(toWords(sentence)));
}