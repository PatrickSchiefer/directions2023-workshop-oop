codeunit 50118 Calculate implements ICalculate
{
    Access = Internal;
    procedure Add(a: Integer; b: Integer): Integer;
    begin
        exit(a + b);
    end;
}