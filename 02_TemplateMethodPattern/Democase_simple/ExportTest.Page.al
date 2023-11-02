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
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Export;

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
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Export;

                trigger OnAction()
                var
                    PurchaseExport: Codeunit PurchaseExport;
                begin
                    PurchaseExport.SetPurchaseLine(Enum::"Purchase Document Type"::Order, '104001');
                    PurchaseExport.ExportPurchaseLine();
                end;
            }
            // action(ComplexExport)
            // {
            //     ApplicationArea = All;
            //     Promoted = true;
            //     PromotedCategory = Process;
            //     PromotedIsBig = true;
            //     Image = Export;

            //     trigger OnAction()
            //     var
            //         dataGetter: Codeunit SalesLineComplexGetter;
            //         dataCheck: Codeunit SalesLineComplexDataCheck;
            //         dataProcessor: Codeunit SalesLineComplexProcessData;
            //         dataExporter: Codeunit ComplexExportToMessage;
            //         complexExport: Codeunit ComplexExportData;
            //     begin
            //         dataGetter.SetDocumentFilter('104001');
            //         complexExport.Export(dataGetter, dataCheck, dataProcessor, dataExporter);
            //     end;
            // }
        }
    }

    var
        myInt: Integer;
}