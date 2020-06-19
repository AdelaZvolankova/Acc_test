*** Settings ***
Documentation   Tasks from Ivan
Library  Collections
Variables    ../task/data2.py

*** Test Cases ***
TC 1: Validate that your name is display in the case1 list
    List Should Contain Value       ${Case1}         ${expected_value}          msg=string not found in list: ${expected_value}

TC2: Remove “Hi Ivan” from the list
    Remove Values From List    ${Case1}    ${value_to_be_removed}
    Log    ${Case1}

TC3: Merge two list (case1 & case2) and remove duplicates
    FOR    ${element}    IN    @{Case1}
        Append to list    ${Case2}    ${element}
    END
    Log    ${Case2}
    Remove duplicates  ${Case2}
    List Should Not Contain Duplicates    ${Case2}

TC4a: Validate the length of the case1
    Get Length    ${Case1}

TC4b: Length of the case1 should be equal to case2
    Lists Should Be Equal    ${Case1}    ${Case2}

TC5: Test that value2 is present in the case3
    Dictionary Should Contain Value       ${Case3}         ${expected_value2}          msg=string not found in list: ${expected_value2}

TC:6 Test that key1, key2 & key3 are present in case3
    Dictionary Should Contain Key       ${Case3}         key1
    Dictionary Should Contain Key       ${Case3}         key2
    Dictionary Should Contain Key       ${Case3}         key3









