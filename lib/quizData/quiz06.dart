var ex01 = '''
①과 ②에 무엇이 들어가야 올바르게 작동하는지 생각해보고 직접 코딩 해보세요.
''';

var code01 = '''
def inp():
    ② i,j
    i = int(input("i를 입력해주세요 : "))
    j = int(input("j를 입력해주세요 : "))
    return

def add(i,j):
    print("{0} + {1} = {2} 입니다.".format(i,j,i+j))
    
def sub(i,j):
    print("{0} - {1} = {2} 입니다.".format(i,j,i-j))

def mul(i,j):
    print("{0} * {1} = {2} 입니다.".format(i,j,i*j))

def div(i,j):
    print("{0} / {1} = {2} 입니다.".format(i,j,i/j))

def rem(i,j):
    print("{0} % {1} = {2} 입니다.".format(i,j,i%j))

while(True):
    print("이 프로그램은 두 정수와 사칙연산을 할것인지 받아와 계속 계산하는 프로그램입니다.")
    print("사칙 연산은 '+', '-', '*', '/', '%'로 입력하시고 종료를 원하시면 'q'나 'Q'를 입력해 주세요.")
    ao = input("어떤 사칙 연산을 진행할지 입력하여 주세요 : ")
    if (ao == '+') :
        ①
        add(i,j)
    elif (ao == '-') :
        ①
        sub(i,j)
    elif (ao == '*') :
        ①
        mul(i,j)
    elif (ao == '/') :
        ①
        div(i,j)
    elif (ao == '%') :
        ①
        rem(i,j)
    elif (ao == 'q' or ao == 'Q') : 
        print("q또는 Q를 입력하셔서 프로그램이 종료되니다.")
        break
    else :
        print("사칙 연산의 입력이 잘못되었습니다. \\n다시 입력하여 주세요.")
''';

var answer1 = "정답 다시보기";

var answer2 = "답: ① inp(), ② global \n해설 : ② global을 사용하여 i와 j를 전역변수로 선언해주고 ① inp()로 i와 j의 값을 받아 알맞는 계산을 하도록 합니다.";