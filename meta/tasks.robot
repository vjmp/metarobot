*** Settings ***
Library    OperatingSystem

*** Tasks ***
Runner
    ${code}  ${output}=  Run and return rc and output    rcc run --space tester --task tester
    Log    Code was ${code}   WARN
    Log    ${output}
