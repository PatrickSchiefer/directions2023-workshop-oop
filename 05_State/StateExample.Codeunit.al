codeunit 50120 LoginStateExample
{
    SingleInstance = true;

    procedure Login();
    begin
        GetCurrentState().Login();
    end;

    procedure Logout();
    begin
        GetCurrentState().Logout();
    end;

    #region State Pattern

    procedure TransitionTo(state: Interface ILoginState);
    begin
        currentState := state;
    end;

    procedure GetCurrentState(): Interface ILoginState;
    var
        loggedOutState: Interface ILoginState;
    begin
        if (not stateInitialized) then begin
            loggedOutState := GetLoggedOutState();
            TransitionTo(loggedOutState);
            stateInitialized := true;
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
    #endregion
}