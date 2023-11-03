page 50100 InterfaceDemo
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(myInt; myInt.GetValue())
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(subtracter; subtracter.GetValue())
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(adder; adder.GetValue())
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(initValue)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    myInt.SetValue(100);
                end;
            }
            action(Add10)
            {
                ApplicationArea = All;

                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    adder.Add10();
                end;
            }
            action(Subtract10)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    subtracter.Subtract10();
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        subtracter := myInt;
        adder := myInt;
    end;

    var
        myInt: Codeunit Int;
        subtracter: Interface ISubtracter;
        adder: Interface IAdder;
}