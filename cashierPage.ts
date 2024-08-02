class CashierPage {
  visit() {
    cy.visit('http://localhost:3000')
  }

  selectCashier(cashier: string) {
    cy.contains('Select Cashier').parent().within(() => {
      cy.contains(cashier).click()
    })
  }

  clickNext() {
    cy.contains('Next').click()
  }

  isSalesDashboardVisible() {
    cy.contains('View Sales Dashboard').should('be.visible')
    cy.contains('Cashier Sales Statistics').should('be.visible')
  }

  clickAddSale() {
    cy.contains('Add Sale').click()
  }

  isUpdatedSalesVisible(cashier: string) {
    cy.contains('Cashier Sales Statistics').should('be.visible')
    cy.contains(cashier).should('be.visible')
  }
}


export default new CashierPage()

  