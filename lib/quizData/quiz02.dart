var ex01 = '''
①과 ②에 무엇이 들어가야 올바르게 작동하는지 생각해보고 직접 코딩 해보세요.
''';

var code01 = '''
print("이 프로그램은 두 정수의 사칙연산을 위한 프로그램입니다.")
print("사칙 연산은 '+', '-', '*', '/', '%'로 입력하여 주세요.")
x = input("어떤 사칙 연산을 진행할지 입력하여 주세요 : ")
y = int(input("첫번째 정수를 입력하여 주세요 : "))
z = int(input("두번째 정수를 입력하여 주세요 : "))
if (① ② '+') :
    print("{0} + {1} = {2} 입니다.".format(y,z,y+z))
elif (① ② '-') :
    print("{0} - {1} = {2} 입니다.".format(y,z,y-z))
elif (① ② '*') :
    print("{0} * {1} = {2} 입니다.".format(y,z,y*z))
elif (① ② '/') :
    print("{0} / {1} = {2} 입니다.".format(y,z,y/z))
elif (① ② '%') :
    print("{0} % {1} = {2} 입니다.".format(y,z,y%z))
else :
    print("사칙 연산의 입력이 잘못되어 종료합니다.")
''';

var answer1 = "정답 다시보기";

var answer2 = "답: ① x, ② ==\n해설: 받아온 x의 값이 비교하는 연산자와 같은지를 보기 위하여 ==을 써야합니다.";