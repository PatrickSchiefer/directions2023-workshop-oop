codeunit 50100 Int implements IAdder, ISubtracter
{
    procedure SetValue(Value: Integer);
    begin
        myValue := Value;
    end;

    procedure GetValue(): Integer;
    begin
        exit(myValue);
    end;

    procedure Subtract10();
    begin
        myValue := myValue - 10;
    end;

    procedure Add10();
    begin
        myValue := myValue + 10;
    end;


    var
        myValue: Integer;
}