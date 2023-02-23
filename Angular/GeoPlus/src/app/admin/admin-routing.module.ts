import {Component, NgModule } from '@angular/core';
import {  CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { AdminComponent } from './admin.component';


const routes: Routes = [
  {
    path: "",
    component: AdminComponent,
    children: [
      
    ]  
  }
]



@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AdminRoutingModule { }
