void main() {
  BookReadingTimeCalculator readingTime = BookReadingTimeCalculator();
  print('To read the book completely within 30 days.');
  readingTime.totalHour(866,5); // argument (pageNumber,timeInMinutePerPage)
  readingTime.perDayHour(866,5);
  readingTime.perDayPage(1400,5);
}

class BookReadingTimeCalculator{
  
    totalHour(int totalPageNumber, double perPagemunite){
  
   double? result;
   result = (totalPageNumber * perPagemunite)/60;
    String resultF = result.toStringAsFixed(2);
     print('i. Total Time ${resultF} hour.' );
  
}

 perDayHour(int totalPageNumber, double perPageMunite)
 {
   
   double? totalHour;
   double? result;
   totalHour = (totalPageNumber * perPageMunite)/60;
   result = totalHour/30;
   String resultF = result.toStringAsFixed(2);
     print('ii. Per Day Total= ${resultF} hour. ' );

}

 perDayPage(int totalPageNumber, double perPagemunite)
 {
   
   double? result;
   double? totalHour; double? perdayHour;
   totalHour = (totalPageNumber * perPagemunite)/60;
   perdayHour = totalHour/30;
   result = (totalPageNumber/totalHour) * perdayHour;
   String resultF = result.toStringAsFixed(2);
     print('iii. Per Day ${resultF} pages.');
}


  
  }
