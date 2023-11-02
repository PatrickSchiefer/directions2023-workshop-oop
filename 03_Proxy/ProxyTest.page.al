page 50102 ProxyTestPage
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
                field(Proxy; proxy)
                {
                    ApplicationArea = All;

                }
                field(value1; value1)
                {
                    ApplicationArea = All;
                }
                field(value2; value2)
                {
                    ApplicationArea = All;
                }
                field(result; result)
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
            action(Calculate)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Calculate;

                trigger OnAction()
                var
                    calc: Interface ICalculate;
                begin
                    calc := proxy;
                    result := calc.Add(value1, value2);
                end;
            }
        }
    }

    var
        proxy: Enum CalculateProxies;
        value1: Integer;
        value2: Integer;
        result: Integer;
}