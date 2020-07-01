*** Settings ***
Documentation   Zoomba Desktop Library Tests. Requires Appium Server running on port 4723.
Library         ../../src/Zoomba/DesktopLibrary.py
Force Tags        Windows

*** Variables ***
${REMOTE_URL}           http://localhost:4723
${APP}                  C:/Program Files/ShareX/ShareX.exe



*** Test Cases ***
#Speed compare
#    Open Application        ${REMOTE_URL}     platformName=Windows    deviceName=Windows   app=${APP}
#    click element      name=Task settings...
#    Wait For And click element      name=Image
##    Wait Until Page Contains     File naming
#    click element      name=Effects
#    click element     name=Thumbnail
#    Click Element      xpath=//TreeItem[@Name="Capture"]
#    Click Element      xpath=//TreeItem[@Name="Uploader filters"]
##    mouse over element   name=Effects
##    mouse over and click element    name=Image
#    Click Element      xpath=//Button[@Name="Close"]
#    Quit Application

scroll test
    Open Application        ${REMOTE_URL}     platformName=Windows    deviceName=Windows   app=${APP}
#    click element      name=Task settings...
#    Wait For And click element      name=Advanced
#    scroll down      name=TextCustomEncodeInput
#    scroll element into view    name=c7PlYkjgWa.png
    wait for and click element    name=c7PlYkjgWa.png
#    Wait Until Page Contains     File naming
#    click element      name=Effects
#    click element     name=Thumbnail
#    Click Element      xpath=//TreeItem[@Name="Capture"]
#    Click Element      xpath=//TreeItem[@Name="Uploader filters"]
##    mouse over element   name=Effects
##    mouse over and click element    name=Image
#    Click Element      xpath=//Button[@Name="Close"]
#    Quit Application

#Send Key Combo test
#    Open Application        ${REMOTE_URL}     platformName=Windows    deviceName=Windows   app=${APP}
#    Sleep     3
##    send key with modifier               \ue009    p
#    send keys               \ue009    p    \ue009