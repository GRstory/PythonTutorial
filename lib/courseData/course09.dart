var ex01 = '''
클래스

이번에는 클래스에 대하여 알아보겠습니다.
클래스는 객체의 구성 요소를 담는 개념입니다. 여러 개의 속성(Attribute)과 메소드(Method)를 포함하는 개념이며, 객체를 정의하는 틀 또는 설계도로 실제 생성된 객체를 인스턴스(Instance)라고 하며, 인스터스는 메모리에 할당된 객체를 의미합니다. 클래스의 문법에 대하여 알아보겠습니다.


클래스 문법

클래스는 'class Name(object) : '로 정의 가능합니다.
1) class : 클래스 정의
2) Name : 클래스 명
3) object : 상속 받는 객체명
을 의미합니다. 그러면 실습을 통해서 자세히 알아보겠습니다.
''';

var code1 = '''
class Book(object):
  author = ""
  title = ""
  publisher = ""
  date = ""

book=Book()
book.author = "Bluecow"
print(book.author)
book.title = "Python Programing"
print(book.title)
''';

var ex02 = '''
실습을 통해서 book=Book()을 통하여 선언하고 book.author와 book.title을 통하여 book에 저자와 책 이름을 저장 및 출력하는 것을 볼 수 있습니다.


클래스 메소드 정의

클래스 메소드를 정의하려면 self가 있어야만 실제로 인스턴스가 사용할 수 있는 함수로 선언가능하며, 메소드에서 self는 실제적으로 인스턴스를 의미하고 메소드 안에서 속성 값을 사용하지 않을 경우에는 self를 생략할 수 있습니다.
''';

var code2 = '''
class Book(object):
  author = ""
  title = ""
  publisher = ""
  date = ""

  def print_info(self):
    print("Author :",self.author)
    print("Title :",self.title)

book = Book()
book.author = "Bluecow"
book.title = "Python Programing"
book.print_info()
''';

var ex03 = '''
실습에서 볼 수 있듯이 클래스 안의 메소드를 불러 저자와 책 이름을 출력하는 것을 볼수 있습니다.


클래스 속성

클래스 속성은 클래스 자체에서 사용되는 속성입니다.
실습을 통해서 클래스 속성에 대하여 알아보겠습니다.
''';

var code3 = '''
class Book(object):
  author = ""
  title = ""
  publisher = ""
  date = ""
  count = 0

  def print_info(self):
    print("Author :",self.author)
    print("Title :",self.title)
    print("Publisher :",self.publisher)
    print("Date :",self.date)


b1 = Book()
Book.count += 1
b1.author="Bluecow"
b1.title="Python Programing"
b1.publisher="Colab"
b1.date="2022"
b1.print_info()
print("Number of Books :",str(Book.count))
''';

var ex04 = '''
실습에서 볼수 있듯이 count는 클래스 자체에서만 쓰이는 속성입니다.


클래스 매직 메소드

클래스 매직 메소드에는 2가지의 종류가 있습니다.
1) __init__() : 메소드를 이용하여 클래스의 속성들을 초기화합니다.
2) __str__() : 메소드를 이용하여 인스턴스 출력합니다.
그러면 먼저 __init__()를 실습으로 알아보겠습니다.
''';

var code4 = '''
class Book(object):
  count = 0

  def __init__(self,author,title,publisher,date):
    self.author = author
    self.title = title
    self.publisher = publisher
    self.date = date
    Book.count += 1

  def print_info(self):
    print("Author :",self.author)
    print("Title :",self.title)
    print("Publisher :",self.publisher)
    print("Date :",self.date)

book = Book("Bluecow","Python Programing","Colab","2022")
book.print_info()
print("Number of Books :",str(Book.count))
''';

var ex05 = '''
이번에는 __str__()을 실습하여 알아보겠습니다.
''';

var code5 = '''
class Book(object):
  count = 0

  def __init__(self,author,title,publisher,date):
    self.author = author
    self.title = title
    self.publisher = publisher
    self.date = date
    Book.count += 1

  def __str__(self):
    return ("Author :" + self.author + \\
            "\\nTitle :" + self.title + \\
            "\\nPublisher :" + self.publisher + \\
            "\\nDate :" + self.date)
    
book = Book("Bluecow","Python Programing","Colab","2022")
print(book)
print("Number of Books :",str(Book.count))
''';


var ex06 = '''
클래스 상속

클래스 상속이란 기존 클래스에 있는 메소드를 그대로 상속받아 새로운 클래스를 생성하여하는 것입니다. 공통된 클래스를 부모로 두고 자식들이 상속을 받아 클래스를 생성하므로 일관성있는 프로그래밍이 가능하며, 기존 클래스에서 일부를 추가/변경한 새로운 클래스 생성으로 코드 재사용 가능합니다.
클래스 상속 문법은 "class SubClass(SuperClass):"로 쓸 수 있습니다.


메소드 오버라이딩

메소드 오버라이딩은 SuperClass로부터 SubClass1와 SubClass2가 클래스를 상속 받는 것으로, 아무 내용도 없는 추상 메소드(Abstract Method) method()를 정의하여, SubClass1의 method()는 SuperClass의 추상 메소드를 오버라이딩하는 것입니다.
그러면 클래스 상속과 메소드 오버라이딩을 같이 실습해 보겠습니다.
''';

var code6 = '''
class Vehicle(object):
  speed=0
  def up_speed(self,value):
    self.speed += value

  def down_speed(self,value):
    self.speed -= value

  def print_speed(self):
    print("Speed :", str(self.speed))
  
class Car(Vehicle):
  def up_speed(self,value):
    self.speed+=value
    if self.speed > 240: self.speed = 240
    
class Truck(Vehicle):
  def up_speed(self,value):
    self.speed+=value
    if self.speed > 180: self.speed = 180
    

car = Car()
car.up_speed(300)
car.print_speed()

truck = Truck()
truck.up_speed(200)
truck.print_speed()
''';