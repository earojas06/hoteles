import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import Hoteles from '../views/Hoteles.vue'
import CrearHotel from '../views/CrearHoteles.vue'
import EditHotel from '../views/EditarHotel.vue'
import AsignarHabitaciones from '../views/AsignarHabitaciones.vue'
import EditHabitacion from '../views/EditarHabitacion.vue'
import CrearHabitacion from '../views/CrearHabitaciones.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/hoteles',
    name: 'hoteles',
    component: Hoteles
  },
  {
    path: '/CrearHotel',
    name: 'CrearHotel',
    component: CrearHotel
  },
  {
    path: '/edit/:id',
    name: 'edit',
    component: EditHotel
  },
  {
    path: '/habitaciones/:id',
    name: 'Habitaciones',
    component: AsignarHabitaciones
  },
  {
    path: '/editHabitacion/:id',
    name: 'editHabitacion',
    component: EditHabitacion
  },
  {
    path: '/CrearHabitacion/:hotel_id',
    name: 'CrearHabitacion',
    component: CrearHabitacion
  },

]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
