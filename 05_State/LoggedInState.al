codeunit 50121 LoggedInState implements ILoginState
{
    procedure Login();
    begin
        Error('Already logged in');
    end;

    procedure Logout();
    var
        loginExample: Codeunit LoginStateExample;
        loggedOutState: Codeunit LoggedOutState;
    begin
        Message('Logging out');
        loginExample.TransitionTo(loggedOutState);
    end;
}