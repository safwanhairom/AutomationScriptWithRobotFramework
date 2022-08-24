*** Settings ***
Library           SeleniumLibrary
Resource          ../Delete_nationalities_res/Delete_nationalities_res.robot

*** Test Cases ***
delete_nation_bdd
    Given Login into webhrm
    When Navigate to admin
    When Navigate to nationalities
    When Choose nation 1 to delete
    And Click button delete
    Then Click button okey

delete_more_nation_bdd
    Given Login into webhrm
    When Navigate to admin
    When Navigate to nationalities
    When Choose nation 1 to delete
    When Choose nation 2 to delete
    And Click button delete
    Then Click button okey
