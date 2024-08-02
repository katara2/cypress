class SalePage {
  isSaleDetailsPageVisible() {
    cy.contains('Sale Details').should('be.visible')
  }

  addItemToSale(item: string, quantity: number) {
    cy.contains(item).parent().within(() => {
      for (let i = 0; i < quantity; i++) {
        cy.contains('+').click()
      }
    })
  }

  removeItemFromSale(item: string, quantity: number) {
    cy.contains(item).parent().within(() => {
      for (let i = 0; i < quantity; i++) {
        cy.contains('-').click()
      }
    })
  }

  verifyItemTotal(item: string, total: string) {
    cy.contains(item).parent().within(() => {
      cy.contains(total).should('be.visible')
    })
  }

  submitSaleDetails() {
    cy.contains('Submit').click()
  }
}

export default new SalePage()

  