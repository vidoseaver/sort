var Sorter;


Sorter = {
  insertSort: function (list){
    var sortedList = [];
    for (var index = 0; index < list.length; index++) {
      var number = list[index];
      if (sortedList[0] === undefined) {
        sortedList[0] = number;
      } else {
        sortedList = this.insertNumberInCorrectPosition(sortedList, number)
      }
    }
    return sortedList
  },
  insertNumberInCorrectPosition: function (list, number) {
    var newList = list;
    for (index = 0; index < list.length; index++) {
      var listNumber = list[index];
      if (number <= listNumber) {
        newList.splice(index, 0, number);
        return newList;
      } else if (index + 1 === list.length) {
        newList.push(number);
        return newList;
      }
    }
  }
}

module.exports = Sorter
