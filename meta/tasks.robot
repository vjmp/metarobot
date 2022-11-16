*** Settings ***
Library    OperatingSystem

*** Keywords ***
Prepare to run actual robot
    Run keyword and ignore error    Remove directory    secret    recursive=True

Run actual robot
    ${code}  ${output}=  Run and return rc and output    %{RCC_EXE} run --space tester --task tester
    Log    Code was ${code}   WARN
    Log    ${output}

Postprocess robot results
    @{files}=    List directory    secret
    FOR    ${file}    IN    @{files}
        Log    Could do something with file: ${file}
    END

*** Tasks ***
Controlled run
    Prepare to run actual robot
    Run actual robot
    Postprocess robot results
