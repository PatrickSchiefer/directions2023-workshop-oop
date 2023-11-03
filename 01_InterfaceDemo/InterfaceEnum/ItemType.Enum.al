enum 50101 ItemType implements IItemType
{
    Extensible = true;

    value(0; NoSpecialType)
    {
        Implementation = IItemType = NoSpecialType;
    }
    value(1; RedCar)
    {
        Implementation = IItemType = ItemTypeRedCar;
    }
    value(2; BlueCar)
    {
        Implementation = IItemType = ItemTypeBlueCar;
    }
}