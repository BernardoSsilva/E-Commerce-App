import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Product } from '../common/product';
import { Observable } from 'rxjs';
import { HttpClientModule } from '@angular/common/http';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  private baseUrl = "http://localhost:8080/api/products"

  constructor(private httpClient: HttpClient) { }

  // metodo para puxar a lista de produtos
  // esse metodo vai mapear o Json e retornar uma matriz observavel
  getProductList(): Observable<Product[]>{
    return this.httpClient.get<GetResponse>(this.baseUrl).pipe(
      map(response => response._embedded.products)
    );
    
  }
}

interface GetResponse{
  _embedded: {
    products : Product[];
  }
}
