codeunit 50111 ExportEDIOrderConfCommand implements ICommand
{
    procedure SetSalesOrder(pDocumentNo: Code[20])
    begin
        DocumentNo := pDocumentNo;
    end;

    procedure Execute();
    begin
        Message('TODO Implement Export');
    end;

    var
        DocumentNo: Code[20];
}