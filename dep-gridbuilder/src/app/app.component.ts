import { Component } from '@angular/core';
import { Page } from './page';

@Component({
  selector: 'gridbuilder',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  public page;

  public canvas;

  constructor() {

    this.page = new Page();

  }

}
