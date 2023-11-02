codeunit 50110 MockComplexExportNoExport implements IComplexExporter
{
    procedure ExportData(dataProcessor: Interface IComplexExporterProcessData);
    begin
        // Do nothing for tests
    end;
}