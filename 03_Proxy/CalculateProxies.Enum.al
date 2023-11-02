enum 50100 CalculateProxies implements ICalculate
{
    Extensible = true;

    value(0; NoProxy)
    {
        Implementation = ICalculate = Calculate;
    }
    value(1; OnlyPositiveValues)
    {
        Implementation = ICalculate = CalculateOnlyPositiveProxy;
    }
}