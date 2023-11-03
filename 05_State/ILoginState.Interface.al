interface ILoginState
{
    procedure Login();
    procedure Logout();
    procedure GetStateDescription(): Text;
}