import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';


import { AppComponent } from './app.component';
import { HtmlCanvasComponent } from './html-canvas/html-canvas.component';


@NgModule({
  declarations: [
    AppComponent,
    HtmlCanvasComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
