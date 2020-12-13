import { LightningElement, track, wire, api } from 'lwc';
import {getRecord} from 'lightning/uiRecordApi';
import getAccounts from '@salesforce/apex/DisplayAccountsController.getAccounts';

const FIELDS = [
    'Account.Name',
    'Account.Industry',
    'Account.Phone',
    'Account.Fax',
];

const columns = [
    { label: 'Name', fieldName: 'Name', type: 'text'},
    { label: 'Industry', fieldName: 'Industry', type: 'text' },
    { label: 'Phone', fieldName: 'Phone', type: 'phone' },
    { label: 'Fax', fieldName: 'Fax', type: 'text' },
];

export default class HelloWorld extends LightningElement {

  greeting = 'Salesforce';
  @api recordId;
  @track accounts;
  @track error;
  data = [{
            id: 'a',
            Name: 'Cloudhub Tedt',
            Industry: 'Biotrc',
            Phone: 25000,
            Fax: 'THRW235646'
      }
    ];
  columns = columns;

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
    //this.data = getAccounts();
  }

  handleLoad() {

    getAccounts()
        .then(result => {
            this.accounts = result;
            this.data = result;
            console.log('Data : ' + JSON.stringify(this.data));
        })
        .catch(error => {
            this.error = error;
        });
}

}