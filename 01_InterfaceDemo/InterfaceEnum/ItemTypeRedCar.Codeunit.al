codeunit 50124 ItemTypeRedCar implements IItemType
{
    procedure ValidateItemType(var rec: Record Item);
    begin
        rec.ItemColor := 'Red';
    end;
}