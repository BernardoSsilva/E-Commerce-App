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

  private baseUrl = "http://localhost:8080/api/products?size=30"

  constructor(private httpClient: HttpClient) { }

  // metodo para puxar a lista de produtos
  // esse metodo vai mapear o Json e retornar uma matriz observavel
  getProductList(theCategoryId: number): Observable<Product[]>{

    // url para a pesquisa por meio da categoria
    const searchUrl = `${this.baseUrl}/search/findByCategoryId?id=${theCategoryId}`

    return this.httpClient.get<GetResponse>(searchUrl).pipe(
      map(response => response._embedded.products)
    );
    
  }
}

interface GetResponse{
  _embedded: {
    products : Product[];
  }
}
