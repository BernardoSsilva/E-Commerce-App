import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Product } from 'src/app/common/product';
import { ProductService } from 'src/app/services/product.service';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list-grid.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit{

  products : Product[] = [];
  currentCategoryId: number = 1;
  searchMode: boolean = false;

  // injetar a activated route carrega o componente para acessar os parametros de rota
  constructor(private productService : ProductService,
              private route : ActivatedRoute){
    
  }
  ngOnInit(): void {
    this.route.paramMap.subscribe(() => {
      this.listProducts();
    }); 
  }

  // puxar os produtos da categoria determinada

  listProducts(){
      this.searchMode = this.route.snapshot.paramMap.has('keyword');

      if(this.searchMode){
        this.handleSearchProducts();
      }
      else{
        this.handleListProducts();
      }
  }

  handleSearchProducts(){
    const theKeyword: string = this.route.snapshot.paramMap.get('keyword')!;

    // pesquisar produtos usando teclado

    this.productService.searchProducts(theKeyword).subscribe(
      data => {
        this.products = data;
      }
    )
  }
  
  
  
  handleListProducts(){
    // checar se o id esta disponiel
      /// a estrutura usa a rota ativa no estado atual da mesma e mapeia os parametros da rota que foram especificados
      const hasCategoryId: boolean = this.route.snapshot.paramMap.has('id');

      if (hasCategoryId){
      // pegar a string do parametro id e converter para um numero usando o "+"
      this.currentCategoryId = +this.route.snapshot.paramMap.get('id')!;
      } 
      else {
        this.currentCategoryId = 1;
      }
  
      this.productService.getProductList(this.currentCategoryId).subscribe(
        (data: any) => {
          this.products = data;
        }
      )
  }
} 

