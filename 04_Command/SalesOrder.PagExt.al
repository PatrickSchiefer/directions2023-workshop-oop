pageextension 50100 SalesOrders extends "Sales Order List"
{

    actions
    {
        addlast("O&rder")
        {

            action(CommandExamplePrint)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    postDocument: Codeunit PostDocumentExample;
                    printCommand: Codeunit PrintOrderConfirmationCommand;
                begin
                    printCommand.SetSalesOrder(rec."No.");
                    postDocument.Post(rec, printCommand);
                end;
            }
            action(CommandExampleEDI)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    postDocument: Codeunit PostDocumentExample;
                    ediCommand: Codeunit ExportEDIOrderConfCommand;
                begin
                    ediCommand.SetSalesOrder(rec."No.");
                    postDocument.Post(rec, ediCommand);
                end;
            }
            action(CommandQueueExample)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    postDocument: Codeunit PostDocumentQueueExample;
                    printCommand: Codeunit PrintOrderConfirmationCommand;
                    command: Interface ICommand;
                    queue: Codeunit CommandQueue;
                    ediCommand: Codeunit ExportEDIOrderConfCommand;
                begin
                    ediCommand.SetSalesOrder(rec."No.");
                    printCommand.SetSalesOrder(rec."No.");
                    queue.Push(ediCommand);
                    queue.Push(printCommand);
                    postDocument.Post(rec, queue);
                end;
            }
            action(AddToBatchPost)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    postingCommand: Codeunit PostingCommand;
                begin
                    postingCommand.GetHeader(rec."Document Type", rec."No.");
                    PostQueue.Push(postingCommand);
                end;
            }
            action(ExecuteBatchPost)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    PostQueue.ProcessQueue();
                end;
            }

        }
    }

    var
        PostQueue: Codeunit CommandQueue;
}