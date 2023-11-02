codeunit 50120 LoginStateExample
{
    SingleInstance = true;
    procedure TransitionTo(state: Interface ILoginState);
    begin
        currentState := state;
    end;

    procedure Login();
    begin
        currentState.Login();
    end;

    procedure Logout();
    begin
        currentState.Logout();
    end;

    procedure GetCurrentState(): Interface ILoginState;
    var
        loggedOutState: Interface ILoginState;
    begin
        if (stateInitialized) then begin
            TransitionTo(GetLoggedOutState());
        end;
        exit(currentState);
    end;

    procedure GetLoggedOutState(): Interface ILoginState;
    var
        loggedOutState: Codeunit loggedOutstate;
    begin
        exit(loggedOutState)
    end;

    var
        currentState: Interface ILoginState;
        stateInitialized: Boolean;
}