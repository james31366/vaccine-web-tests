*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://vaccine-haven.herokuapp.com/reservation
${CITIZEN_ID}       9621054601346
${SITE_NAME}        OGYHSite
${VACCINE_NAME}     Pfizer

*** Test Cases ***
Check Homepage with two elements.
    open browser    https://vaccine-haven.herokuapp.com/    ${BROWSER}
    page should contain element     id:register__link
    page should contain element     id:reserve__link

Go to reserve, fill the form and submit the reservation.
    click element               id:reserve__link
    input text                  id:citizen_id       ${CITIZEN_ID}
    select from list by value   id:site_name        ${SITE_NAME}
    select from list by value   id:vaccine_name     ${VACCINE_NAME}
    sleep                       2s
    click button                id:reserve__btn

Go to my info page to check the reservation status and cancel
    click element                   id:nav__info__link
    input text                      id:citizen_id               ${CITIZEN_ID}
    click button                    id:info__btn
    wait until element contains     id:reserve_vaccine_value    ${VACCINE_NAME}
    wait until element contains     id:reserve_site_value       ${SITE_NAME}
    element should contain          id:reserve_vaccine_value    ${VACCINE_NAME}
    element should contain          id:reserve_site_value       ${SITE_NAME}
    sleep                           5s
    click button                    id:cancel__btn
    close browser



*** Keywords ***