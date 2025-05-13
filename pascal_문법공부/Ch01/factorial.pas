program ch03_factorial;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

var
  Number: string;
  i: Integer;
  LSummary: Int64;

begin
  try
    WriteLn('숫자를 입력하세요: ');
    ReadLn(Number);

    LSummary := 1;
    for i := 1 to StrToInt(Number) do
      LSummary := LSummary * i;

    WriteLn('Factorial : ', LSummary);
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
