class Student
{
  late String rollno;
  late String name;
  late int coursestartdate;
  late int contactno;
  late String address;
  
  Student();
  void studentdetails(int rollno,String name,int coursestartdate,int contactno,String address  )
  {
    print("Nmae: $name");
    print("Rollno: $rollno");
    print("Course Start date: $coursestartdate");
    print("Contact no: $contactno");
    print("Address: $address");
    
  }
  
}

void main()
{
  //List<int> numbers = [];
  
  var s1=Student();
  s1.studentdetails(62,"Shehryar",2022,03176005449,"Taxila");
}