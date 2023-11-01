codeunit 50102 PurchaseExport
{
    procedure SetPurchaseLine(DocumentType: Enum "Purchase Document Type"; DocumentNo: Code[20])
    begin
        PurchaseLine.SetRange("Document Type", DocumentType);
        PurchaseLine.SetRange("Document No.", DocumentNo);
    end;

    procedure ExportPurchaseLine()
    begin
        if (not GetLines()) then
            exit;
        repeat
            GenerateLineOutput();
        until NextLine() = 0;
        ExportData();
    end;

    procedure GenerateLineOutput()
    begin
        output.AppendLine(StrSubstNo('%1;%2;%3;%4;%5', PurchaseLine."Document Type", PurchaseLine."Document No.", PurchaseLine."Line No.", PurchaseLine."No.", PurchaseLine."Quantity"))
    end;

    procedure GetLines(): Boolean
    begin
        exit(PurchaseLine.FINDSET);
    end;

    procedure NextLine(): Integer;
    begin
        exit(PurchaseLine.NEXT);
    end;

    procedure ExportData()
    begin
        Message(output.ToText());
    end;

    var
        PurchaseLine: Record "Purchase Line";
        output: TextBuilder;
}