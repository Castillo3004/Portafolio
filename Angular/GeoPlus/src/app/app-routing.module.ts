import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AdminComponent } from './admin/admin.component';
import { LoginComponent } from './login/login.component';

const routes: Routes = [
  {
    path:"admin",
    loadChildren: () => import('./admin/admin.module').then(m => m.AdminModule)
  }
  ,{
    path: "", 
    redirectTo: "login",
    pathMatch: "full",
  },
  {
    path: 'login',
    component: LoginComponent,
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
