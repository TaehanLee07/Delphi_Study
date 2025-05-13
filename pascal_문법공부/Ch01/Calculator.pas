program ch02_Calculator;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

var
  Number1, Number2: string;
  
begin
  try
    WriteLn('첫번째 숫자를 정수로 입력하세요: ');
    ReadLn(Number1);

    WriteLn('두번째 숫자를 정수로 입력하세요: ');
    ReadLn(Number2);

    WriteLn('입력한 두 개의 숫자를 더한 값은 다음과 같습니다: ');
    WriteLn(StrToInt(Number1) + StrToInt(Number2));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
