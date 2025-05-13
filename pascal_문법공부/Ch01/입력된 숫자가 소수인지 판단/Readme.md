# 델파이 코드
```
program ch005;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    var Number: Integer;
    var IsPrime := True;

    WriteLn('숫자를 입력하세요');
    ReadLn(Number);

    // 주어진 수가 소수인지 확인한다
    for var i := 2 to Number div 2 do
    begin
      if (Number mod i = 0) then
      begin
        IsPrime := False;
        Break;
      end;
    end;

    if IsPrime then
      WriteLn(Number, ' 은(는) 소수입니다')
    else
      WriteLn(Number, ' 은(는) 소수가 아닙니다');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
```

## 알아두어야 할 내용
**if then else**
- 사용법
```
if (조건식) then
  처리1
else
  처리2
```
- 조건을 만족하는 경우 처리1을 실행하고 아닌 경우엔 처리2를 사용하는 델파이의 조건문이다.

**break**
- 사용법
```
for var i := 0 to 999 do
  if 조건 then
    break;
```
- 위처럼 반복문에서 조건이 참일떄 반복문을 미리 빠져나갈 수 있게해준다.
