import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Product } from '../common/product';
import { Observable } from 'rxjs';
import { HttpClientModule } from '@angular/common/http';
import { map } from 'rxjs/operators';
import { ProductCategory } from '../common/product-category';

@Injectable({
  providedIn: 'root'
})
export class ProductService {
  

  private baseUrl = "http://localhost:8080/api/products?size=30"
  private categoryUrl= "http://localhost:8080/api/product-category"

  constructor(private httpClient: HttpClient) { }

  // metodo para puxar a lista de produtos
  // esse metodo vai mapear o Json e retornar uma matriz observavel
  getProductList(theCategoryId: number): Observable<Product[]>{

    // url para a pesquisa por meio da categoria
    const searchUrl = `${this.baseUrl}/search/findByCategoryId?id=${theCategoryId}`

    return this.httpClient.get<GetResponseProducts>(searchUrl).pipe(
      map(response => response._embedded.products)
    );
    
  }

  searchProducts(theKeyword : string): Observable<Product[]>{
    const searchUrl = `${this.baseUrl}/search/findByNamecontaining?name=${theKeyword}`

    return this.getProducts(searchUrl);
  }

  private getProducts(searchUrl: string): Observable<Product[]> {
    return this.httpClient.get<GetResponseProducts>(searchUrl).pipe(
      map(response => response._embedded.products)
    );
  }

  getProductCategories():Observable<ProductCategory[]>{
    return this.httpClient.get<GetResponseProductCategory>(this.categoryUrl).pipe(
      map(response => response._embedded.productCategory)
    );
  }
}

interface GetResponseProducts{
  _embedded: {
    products : Product[];
  }
}

interface GetResponseProductCategory{
  _embedded: {
    productCategory : ProductCategory[];
  }
}
