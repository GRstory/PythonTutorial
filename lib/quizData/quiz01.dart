var ex01 = '''
①과 ②에 무엇이 들어가야 올바르게 작동하는지 생각해보고 직접 코딩 해보세요.
''';

var code01 = '''
print("이 프로그램은 두 정수의 사칙연산을 위한 프로그램입니다.")
x = ①(②("첫번째 정수를 입력하여 주세요 : "))
y = ①(②("두번째 정수를 입력하여 주세요 : "))
print("{0} + {1} = {2} 입니다.".format(x,y,x+y))
print("{0} - {1} = {2} 입니다.".format(x,y,x-y))
print("{0} * {1} = {2} 입니다.".format(x,y,x*y))
print("{0} / {1} = {2} 입니다.".format(x,y,x/y))
print("{0} % {1} = {2} 입니다.".format(x,y,x%y))
''';

var answer1 = "정답 다시보기";

var answer2 = "답: ① int, ② input \n해설: 정수로 받아오기 위하여 int로 먼저 감싸주고 input을 사용하여 x와 y의 값을 받기 위해서 int(input())이 사용 됩니다.";