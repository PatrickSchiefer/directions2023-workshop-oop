tableextension 50100 ItemExt extends Item
{
    fields
    {
        field(50100; ItemType; Enum ItemType)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                itemTypeImplementation: Interface IItemType;
            begin
                itemTypeImplementation := ItemType;
                itemTypeImplementation.ValidateItemType(rec);
            end;
        }
        field(50101; ItemColor; Text[20])
        {
            DataClassification = ToBeClassified;
        }
    }

}