import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import { Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class ServicioService {

  constructor(private http: HttpClient) { }
  public post(url: string, body: any){
    return this.http.post(url, body) //POST
  }
  public get(url: string): Observable<any>{
    return this.http.get(url) //GET
  }
}
