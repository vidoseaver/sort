var expect = require('chai').expect;

var Sorter = require('../lib/sorter.js');

describe('Sorter', function() {
  describe("#insertSort", function() {
    it("it sorts the array", function(){
      var expected = [2,4]
      var actual   = Sorter.insertSort([4,2])
      expect(actual).to.eql(expected)
    });
    it("can handle arrays with repeated values", function() {
      var expected = [1, 2, 6, 6, 6, 8, 8]
      var actual   = Sorter.insertSort([6,6,6,8,8,2,1])
      expect(actual).to.eql(expected)
    });
  });
  describe('#insertNumberInCorrectPosition()', function() {
    it('inserts a number greater then the number in the array after it', function() {
      var expected = [2,4];
      var actual   = Sorter.insertNumberInCorrectPosition([2],4);
      expect(actual).to.eql(expected);
    });
    it('inserts a number less than the first number in the array before it', function() {
      var expected = [2,4];
      var actual   = Sorter.insertNumberInCorrectPosition([4],2);
      expect(actual).to.eql(expected);
    });
    it('it inserts a number in the middle of a lower and higher number', function() {
      var expected = [2,4,8];
      var actual   = Sorter.insertNumberInCorrectPosition([2,8],4);
      expect(actual).to.eql(expected);
    });
    it('it inserts can handle multiples', function() {
      var expected = [2,4,4,8];
      var actual   = Sorter.insertNumberInCorrectPosition([2,4,8],4);
      expect(actual).to.eql(expected);
    });
    it('it can handle floats', function() {
      var expected = [2,4,4.2,8];
      var actual   = Sorter.insertNumberInCorrectPosition([2,4,8],4.2);
      expect(actual).to.eql(expected);
    });
  });
});
