var ex01 = '''
함수

이번에는 함수에 대하여 알아보겠습니다.
함수는 특정 코드를 하나의 명령으로 실행 할 수 있게 해주는 기능으로 필요할 때마다 호출하여 사용 가능합니다. 또한, 논리적인 단위로 분할 가능하며, 중복되는 소스코드를 최소화 가능하고 소스코드의 재사용성을 높일 수 있습니다.
함수는 'def 함수명(매개변수) : '로 선언 가능합니다.


매개변수와 반환값이 없는 함수

함수에 매개변수와 반환값이 없이 사용 가능하며, 함수를 호출하면 함수의 수행문이 실행됩니다.
실습을 통해서 알아보겠습니다.
''';

var code1 = '''
def hello():
    print("Hello Python")

hello()
hello()
''';

var ex02 = '''
실습을 통해서 볼 수 있듯이 hello()라는 함수를 두번 불러옴으로, "hello python"이라는 문장이 두번 출력되는 것을 볼 수 있습니다.


매개변수만 있는 함수

이번엔 문자열 매개변수만 사용한 함수를 실습을 통해서 알아보겠습니다.
''';

var code2 = '''
def hello(string):
    print("hello",string)

hello('Python')
''';

var ex03 = '''
hello 함수에 'Python'를 매개변수에 전달하여 'Hello'와 합쳐져 'Hello Python'이라는 문장이 출력되는 것을 확인하실 수 있습니다. 'Python' 대신에 'World'을 넣으면 'Hello World'가 출력되는 것을 확인하실 수 있으실 겁니다.


반환 값만 있는 함수

이번엔 반환 값만 있는 함수를 실습을 통해서 알아보겠습니다.
''';

var code3 = '''
def hello():
    return "hello Python"

hello()
''';

var ex04 = '''
hello()를 호출하여 ''Hello Python''이 출력되는 것을 확인하실 수 있습니다.


매개변수와 반환 값이 있는 함수

이번엔 매개변수와 반환 값이 있는 함수를 실습을 통해서 알아보겠습니다.
''';

var code4 = '''
def square(num):
    return num * num

square(5)
''';

var ex05 = '''
square 함수에 5를 매개변수로 넘겨 줌으로 5 * 5의 결과 값인 25가 출력되는 것을 확인하실 수 있습니다.
5 대신에 다른 수를 넣으시면 n * n의 결과값이 출력되는 것을 확인하실 수 있으실 것입니다.


매개변수가 여러개 있는 함수

정수형 매개변수 여러개를 사용한 함수로 매개변수를 지정하여 호출 가능합니다.
그러면 실습을 통하여 알아보겠습니다.
''';

var code5 = '''
def add(n1,n2):
    print("n1 = {0}, n2 = {1}".format(n1,n2))
    return n1 + n2

print(add(n2 = 5, n1 = 8))
''';

var ex06 = '''
실습에서 보시는 바와 같이 n1에는 8이 n2에는 5가 들어가는 것을 확인하실 수 있습니다.


가변 매개변수 함수

매겨변수가 몇 개인지 알 수 없을 때 사용되며, 매개변수 앞에 '*'을 표시하여 사용합니다.
그러면 실습을 통하여 알아보겠습니다.
''';

var code6 = '''
def sum(*args):
    result = 0
    print(args)
    print(type(args))
    for i in args :
        result = result+i
    return result

print(sum(1,2,3))
print(sum(1,2,3,4,5))
''';

var ex07 = '''
실습에서 보시는 바와 같이 매개변수를 여러개 입력 가능하며, TUPLE 형식으로 저장되는 것을 확인하실 수 있습니다.


여러 반환값이 있는 함수

함수의 반환값은 하나이며, 여러 반환값을 사용할 경우 TUPLE 형태로 반환됩니다.
그러면 실습을 통하여 알아보겠습니다.
''';

var code7 = '''
def plus_and_minus(n1, n2):
    return n1 + n2, n1 - n2

result = plus_and_minus(8,5)
print(result)
print(type(result))

result1, result2 = plus_and_minus(8,5)
print(result1, result2)
print(type(result1), type(result2))
''';

var ex08 = '''
실습에서 보시는 바와 같이 반환값이 여러개 반환되는 것을 확인할 수 있으며, TUPLE 형식으로 반환되는 것을 확인하실 수 있습니다.
''';