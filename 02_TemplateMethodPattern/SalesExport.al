codeunit 50101 SalesExport
{
    procedure SetSalesLine(DocumentType: Enum "Sales Document Type"; DocumentNo: Code[20])
    begin
        SalesLine.SetRange("Document Type", DocumentType);
        SalesLine.SetRange("Document No.", DocumentNo);
    end;

    procedure ExportSalesLine()
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
        output.AppendLine(StrSubstNo('%1;%2;%3;%4;%5', SalesLine."Document Type", SalesLine."Document No.", SalesLine."Line No.", SalesLine."No.", SalesLine."Quantity"))
    end;

    procedure GetLines(): Boolean
    begin
        exit(SalesLine.FINDSET);
    end;

    procedure NextLine(): Integer;
    begin
        exit(SalesLine.NEXT);
    end;

    procedure ExportData()
    begin
        Message(output.ToText());
    end;

    var
        SalesLine: Record "Sales Line";
        output: TextBuilder;
}