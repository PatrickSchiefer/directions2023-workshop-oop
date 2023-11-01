page 50101 ExportTest
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;



    actions
    {
        area(Processing)
        {
            action(ExportSales)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    SalesExport: Codeunit SalesExport;
                begin
                    SalesExport.SetSalesLine(Enum::"Sales Document Type"::Order, '101005');
                    SalesExport.ExportSalesLine();
                end;
            }
            action(ExportPurchase)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    PurchaseExport: Codeunit PurchaseExport;
                begin
                    PurchaseExport.SetPurchaseLine(Enum::"Purchase Document Type"::Order, '104001');
                    PurchaseExport.ExportPurchaseLine();
                end;
            }
        }
    }

    var
        myInt: Integer;
}