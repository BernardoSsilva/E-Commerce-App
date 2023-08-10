import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';

import { AppComponent } from './app.component';
import { ProductListComponent } from './components/product-list/product-list.component';

import { HttpClientModule } from '@angular/common/http';
import { ProductService } from './services/product.service';
import { CurrencyPipe } from '@angular/common';

import { Routes, RouterModule } from '@angular/router';
import { ProductCategoryMenuComponent } from './components/product-category-menu/product-category-menu.component';
import { SearchComponent } from './components/search/search.component'

const routes : Routes = [
  {path: 'search/:keyword', component:ProductListComponent},
  {path: 'category/:id', component: ProductListComponent},
  {path: 'category', component: ProductListComponent},
  {path: 'products', component: ProductListComponent},
  {path: '', redirectTo: '/products', pathMatch: 'full'},
  {path: '**', redirectTo: '/products', pathMatch: 'full'}
];
@NgModule({
  declarations: [
    AppComponent,
    ProductListComponent,
    ProductCategoryMenuComponent,
    SearchComponent
    //HttpClientModule
  ],
  imports: [
    RouterModule.forRoot(routes),
    BrowserModule,
    CurrencyPipe,
    AppRoutingModule,
    HttpClientModule
  ],
  // ao colocar ProductService ou outros serviços em providers permitimos a injeção da dependencia em outras classes
  providers: [ProductService],
  bootstrap: [AppComponent]
})
export class AppModule { }