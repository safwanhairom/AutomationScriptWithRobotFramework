*** Settings ***
Library           SeleniumLibrary
Resource          ../Edit_Nationalities_res/Edit_nationalities_res.robot

*** Test Cases ***
edit_nation_bdd
    Given Login into webhrm
    When Navigate to admin
    When Navigate to nationalities
    And Choose nation to edit
    Then Click button save

edit_same_nation_bdd
    Given Login into webhrm
    When Navigate to admin
    When Navigate to nationalities
    And Choose nation to edit
    Then Click button save

edit_empty_nation_bdd
    Given Login into webhrm
    When Navigate to admin
    When Navigate to nationalities
    And Leave text box empty
    And Clear text box
    Then Click button save
