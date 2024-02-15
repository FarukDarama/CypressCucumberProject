const { Before, After } = require("@badeball/cypress-cucumber-preprocessor");

Before(()=>{
    cy.log('Her Testten once calisir')
})

Before({tags:"@smoke"} , ()=>{
    cy.log('Her Testten once calisir')
})

After(()=>{
    cy.log('Her Testten sonra calisir')
})