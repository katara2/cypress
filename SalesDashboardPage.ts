export class SalesDashboardPage {
    private addSaleButton = 'button.add-sale';
    private switchCashierButton = 'button.switch-cashier';
  
    public clickAddSale() {
      cy.get(this.addSaleButton).click();
    }
  
    public clickSwitchCashier() {
      cy.get(this.switchCashierButton).click();
    }
  }
  