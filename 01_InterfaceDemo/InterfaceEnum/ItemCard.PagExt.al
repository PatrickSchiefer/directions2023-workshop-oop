pageextension 50101 ItemCardExt extends "Item Card"
{
    layout
    {
        addfirst(Item)
        {

            field(ItemType; Rec.ItemType)
            {
                ApplicationArea = All;
            }
            field(ItemColor; Rec.ItemColor)
            {
                ApplicationArea = All;
            }
        }
    }
}