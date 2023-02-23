import { Component, NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AdminComponent } from './components/admin/admin.component';
import { LoginComponent } from './components/login/login.component';
import { AuthGuard } from './guards/auth.guard';
import { PageNotFoundComponent } from "./page-not-found/page-not-found.component";


const routes: Routes = [
  {path: "admin", 
  loadChildren: () => import('./components/admin/admin.module').then(m => m.AdminModule),
  data: { claimType: "canViewAdminSection" },
  canActivate: [AuthGuard]},
  {path: "login", 
  component: LoginComponent},
  {path: "", 
  redirectTo: "login",
  pathMatch: "full",},
  {path: "**",
  component: PageNotFoundComponent,}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
