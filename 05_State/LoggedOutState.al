﻿codeunit 50122 LoggedOutState implements ILoginState
{
    procedure Login();
    var
        loginExample: Codeunit LoginStateExample;
        loggedInState: Codeunit LoggedInState;
    begin
        Message('Logging in');
        loginExample.TransitionTo(loggedInState);
    end;

    procedure Logout();
    begin
        Error('You are already logged out');
    end;

    procedure GetStateDescription(): Text;
    begin
        exit('Logged out');
    end;
}