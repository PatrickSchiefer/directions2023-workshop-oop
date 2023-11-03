codeunit 50125 ItemTypeBlueCar implements IItemType
{
    procedure ValidateItemType(var rec: Record Item);
    begin
        rec.ItemColor := 'Blue';
    end;
}