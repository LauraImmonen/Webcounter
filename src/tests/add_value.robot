*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Library    SeleniumLibrary

*** Test Cases ***
Reset counter works
    [Setup]    Go To  ${HOME_URL}
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa

*** Test Cases ***
Add value works
    Go To  ${HOME_URL}
    Input Text  id=value  5
    Click Button  Send
    Page Should Contain  nappia painettu 5 kertaa

When value added to existing counter
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina
    Input Text  id=value  3
    Click Button  Send
    Page Should Contain  nappia painettu 3 kertaa