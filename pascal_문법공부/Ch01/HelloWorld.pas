program ch01_HelloWorld;

{$APPTYPE CONSOLE}

uses
  SysUtils;

begin
  try
    Write('Hello, World  ');    // 델파이의 출력문  (라인변경 x)
    WriteLn('장성준은 심슨이다.'); // (라인 변경 o)
    Write('델파이100제');
    Readln;     // cmd'가 바로 닫히지 안게끔 사용자의 입력을 기다리게끔 함

  except
    on E: Exception do
      Writeln(E.className, ': ', E.Message);
  end;
end.
