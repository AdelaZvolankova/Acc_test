*** Settings ***
Documentation   Tasks from Ivan
Library  Collections
Variables    ../task/data2.py

*** Test Cases ***
TC 1: Validate that your name is display in the case1 list
    List Should Contain Value       ${Case1}         ${expected_value}          msg=string not found in list: ${expected_value}

TC2: Remove “Hi Ivan” from the list
    @{NoIvan}    Create list    @{Case1}
    Log many    @{NoIvan}
    Remove Values From List    ${NoIvan}    ${value_to_be_removed}
    Log many    @{NoIvan}

TC3: Merge two list (case1 & case2) and remove duplicates
    @{New_list}    Create list
    FOR    ${element}    IN    @{Case1}
        Append to list    ${New_list}    ${element}
    END

       FOR    ${element}    IN    @{Case2}
        Append to list    ${New_list}    ${element}
    END

    log       ${New_list}
    Remove duplicates  ${New_list}
    Log    ${New_list}
    List Should Not Contain Duplicates    ${New_list}

TC4a: Validate the length of the case1
    Get Length    ${Case1}

#TC4b: Length of the case1 should be equal to case2
#    Lists Should Be Equal    ${Case1}    ${Case2}

TC5: Test that value2 is present in the case3
    Dictionary Should Contain Value       ${Case3}         ${expected_value2}          msg=string not found in list: ${expected_value2}

TC:6 Test that key1, key2 & key3 are present in case3
    Dictionary Should Contain Key       ${Case3}         key1
    Dictionary Should Contain Key       ${Case3}         key2
    Dictionary Should Contain Key       ${Case3}         key3










