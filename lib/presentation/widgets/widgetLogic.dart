
int dayOfTheWeek = DateTime.now().weekday -1;

int dayOfTheMonth = DateTime.now().day ;
int year = DateTime.now().year;
int month = DateTime.now().month;
// check if year is leap or not
bool isLeapYear() => ((year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0)));
// check if the month is 30 days
bool isThirtyDayMonth() => (month == 4 || month == 6 || month == 9 || month == 11);
// check if the month is 31 days
bool isThirtyOneDayMonth() => (month == 1 ||month == 3 ||month == 5 ||month == 7 ||month == 8 ||month == 10 ||month == 12);

List<int> calender() {


  int originalDayOfTheMonth = dayOfTheMonth;
  int originalDayOfTheMonth2 = dayOfTheMonth;
  int newMonthDay = 1;

  int editedDayOfTheMonth = dayOfTheMonth;

  List<int> originalArray = [];
  List<int> decrementedArray = [];

  for (int x = 0; x < 7; x++) {
    // if the current day is monday -> beginning of the week
    if (dayOfTheWeek == 0) {
      ++editedDayOfTheMonth;

      // if the day is 30 then start the new month
      if (editedDayOfTheMonth <= 31 && isThirtyDayMonth()) {
        originalArray.add(originalDayOfTheMonth2++);
      }

      // if the day is 31 then start the new month
      else if (editedDayOfTheMonth <= 32 && isThirtyOneDayMonth()) {
        originalArray.add(originalDayOfTheMonth2++);
      }

      // if the month is february
      else if(editedDayOfTheMonth <= 29 && isLeapYear()){
        originalArray.add(originalDayOfTheMonth2++);
      }
      else if(editedDayOfTheMonth <= 28){
        originalArray.add(originalDayOfTheMonth2++);
      }





      else{
        originalArray.add(newMonthDay++);
      }



    }

    // if the current day is sunday -> end of the week
    else if (dayOfTheWeek == 6) {
      decrementedArray.add(originalDayOfTheMonth--);
      originalArray = decrementedArray.reversed.toList();
    }

    // for all months except february

    else if(month != 2){
      // if the day is less than the index then reduce the current day and then add it to new array
      // and reverse it

      if (dayOfTheWeek > x) {
        --originalDayOfTheMonth;

        decrementedArray.add(originalDayOfTheMonth);
      }
      // if the day is equal to the index then add  the current day to the array with the reversed array
      else if (dayOfTheWeek == x) {
        originalArray = [ ...decrementedArray.reversed.toList(), dayOfTheMonth,];
      }

      // if the index is after the current day then increase the the number .

      else {
        editedDayOfTheMonth++;
        // check if the month is 30 days
        if (editedDayOfTheMonth <= 31 && isThirtyDayMonth()) {
          originalArray.add(editedDayOfTheMonth);
        }
        // check if the month is 31 days
        else if (editedDayOfTheMonth <= 31 && isThirtyOneDayMonth()) {
          originalArray.add(editedDayOfTheMonth);
        } else{
          originalArray.add(newMonthDay++);
        }

      }
    }

    // if the month is february (leap year)
    else{
      editedDayOfTheMonth++;
      // if the month is february (LeapYear)
      if(editedDayOfTheMonth <= 29 && isLeapYear()){
        originalArray.add(editedDayOfTheMonth);
      }

      // if the month is february (not LeapYear)
      else if(editedDayOfTheMonth <= 28){
        originalArray.add(editedDayOfTheMonth);
      }

      //if the day is more than 30 or 31 or 29 (LeapYear) or 28 (not LeapYear) then add the new month days

      else {
        originalArray.add(newMonthDay++);
      }
    }
  }
  print(originalArray);
  return originalArray;
}