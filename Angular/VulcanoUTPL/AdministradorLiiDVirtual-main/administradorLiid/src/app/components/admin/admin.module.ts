import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AdminRoutingModule } from './admin-routing.module';
import { CreateEventComponent } from './create-event/create-event.component';
import { ListEventComponent } from './list-event/list-event.component';
import { MaterialModule } from 'src/app/material/material.module';
import { DialogViewComponent } from './dialog-view/dialog-view.component';


@NgModule({
  declarations: [
    CreateEventComponent,
    ListEventComponent,
    DialogViewComponent
  ],
  imports: [
    CommonModule,
    AdminRoutingModule,
    MaterialModule
  ]
})
export class AdminModule { }


