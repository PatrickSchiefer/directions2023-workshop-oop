codeunit 50122 LoggedOutState implements ILoginState
{
    procedure Login();
    var
        loginExample: Codeunit LoginStateExample;
        loggedInState: Codeunit LoggedInState;
    begin
        loginExample.TransitionTo(loggedInState);
    end;

    procedure Logout();
    begin
        Error('You are already logged out');
    end;
}