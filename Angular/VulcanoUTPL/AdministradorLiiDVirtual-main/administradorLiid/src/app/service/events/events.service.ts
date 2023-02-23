import { Injectable } from '@angular/core';
import { AngularFirestore, AngularFirestoreCollection } from '@angular/fire/compat/firestore';
import { Observable } from 'rxjs';
import { Events } from 'src/app/models/events';
import Swal from 'sweetalert2'


@Injectable({
  providedIn: 'root'
})
export class EventsService {
  private eventsCollection: AngularFirestoreCollection<Events>;
  events: Observable<Events[]>;
  constructor(
    private afs:AngularFirestore
  ) { 
    this.eventsCollection = afs.collection<Events>('events');
    this.events = this.eventsCollection.valueChanges();
  }

  getAllEvents(){
    return this.events
  }

  addEvent(event:Events){
    this.eventsCollection.add(event).then(result => {
      Swal.fire({
        title:"Exito",
        text:"El evento se a creado correctamente",
        icon: 'success'
      })
    })

    // Falta funcion de traer eventos 
    
    .catch(err => {
      Swal.fire({
        title:"Error",
        text: err,
        icon: 'error'
      })
    })

  }
}
