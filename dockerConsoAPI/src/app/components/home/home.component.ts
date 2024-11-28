import { HttpClient } from '@angular/common/http';
import { Component, inject } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
  private client : HttpClient = inject(HttpClient)
  url : string = "http://localhost:50001/api/"
  list! : any[]

  ngOnInit() {
    this.client.get<any[]>(this.url+"contact").subscribe({
      next : (data : any[]) =>
        {
          console.log(data)
          this.list = data
        }
    })
  }
}
