import { LightningElement, track } from 'lwc';
import getAccounts from '@salesforce/apex/DisplayAccountsController.getAccounts';

export default class HelloWorld extends LightningElement {

  greeting = 'Salesforce';
  @track accounts;
  @track error;

  changeHandler(event) {
    this.greeting = event.target.value;
  }

  handleLoad() {
    getAccounts()
        .then(result => {
            this.accounts = result;
        })
        .catch(error => {
            this.error = error;
        });
}

}