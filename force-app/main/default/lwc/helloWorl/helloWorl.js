import { LightningElement, track, wire, api } from 'lwc';
import {getRecord} from 'lightning/uiRecordApi';
import getAccounts from '@salesforce/apex/DisplayAccountsController.getAccounts';

const FIELDS = [
    'Account.Name',
    'Account.Industry',
    'Account.Phone',
    'Account.Fax',
];

export default class HelloWorld extends LightningElement {

  greeting = 'Salesforce';
  @api recordId;
  @track accounts;
  @track error;
  
  @wire(getRecord, {recordId: '$recordId', fields: FIELDS })
  account;

    get name() {
        return this.account.data.fields.Name.value;
    }

    get industry() {
        return this.account.data.fields.Industry.value;
    }

    get phone() {
        return this.account.data.fields.Phone.value;
    }

    get fax() {
        return this.account.data.fields.Fax.value;
    }

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