page 50103 LoginTestPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            field(stateDescription; LoginStateExample.GetStateDescription())
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Login)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    LoginTest: Codeunit LoginStateExample;
                begin
                    LoginTest.Login();
                end;
            }
            action(Logout)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    LoginTest: Codeunit LoginStateExample;
                begin
                    LoginTest.Logout();
                end;
            }
        }
    }

    var
        LoginStateExample: Codeunit LoginStateExample;
}