*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://vaccine-haven.herokuapp.com/registration
${CITIZEN_ID}    9621054601346
${NAME}    Vichisorn
${SURNAME}    Wejsupakul
${BIRTH_DATE}    10-26-2000
${OCCUPATION}    Student
${PHONE_NUM}    0964590546
${ADDRESS}    Test

*** Test Cases ***
Open Browser
    open browser    ${URL}  ${BROWSER}

Fill the form
    input text      id:citizen_id       ${CITIZEN_ID}
    input text      id:name             ${NAME}
    input text      id:surname          ${SURNAME}
    input text      id:birth_date       ${BIRTH_DATE}
    input text      id:occupation       ${OCCUPATION}
    input text      id:phone_number     ${PHONE_NUM}
    input text      id:address          ${ADDRESS}
    click element   id:register__btn
    close browser

*** Keywords ***


