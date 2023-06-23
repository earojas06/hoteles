<template>
    <div class="row" >
        <div class="col-lg-8 offset-lg2">
            <div class="table-responsive">
                <th>  <router-link :to="'/CrearHabitacion/' + id" class="btn btn-success" aria-current="page" href="#">AGREGAR HABITACION</router-link></th> 
                <br>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                        <!-- <th>HOTEL</th> -->
                        <th>TIPO HABITACIÓN</th>
                        <th>ACOMODACION</th>
                        <th>CANTIDAD</th>   
                        <th>EDITAR</th>           
                        </tr>
                    </thead>
                    <tbody class="table-group-divider" id="contenido">
                    <tr v-for="item in habitaciones" :key="item.id">
                         <!-- <td class="align-middle text-center">{{item.hoteles[0].nombre}}</td> -->
                         <td class="align-middle text-center" >{{item.tipo}}</td>
                         <td class="align-middle text-center">{{item.acomodacion}}</td>
                         <td class="align-middle text-center">{{item.cantidad}}</td>
                        
                         <td class="align-middle text-center">
                            <router-link :to="{path:'/editHabitacion/'+item.id}" class="btn btn-warning">
                                 <i class="fa-solid fa-edit"></i>
                            </router-link> &nbsp;

                         </td>
                         <!-- <td class="align-middle text-center">
                            <router-link to="/habitaciones" class="btn btn-primary" >
                                <i class="fa-solid fa-plus"></i>
                            </router-link>
                         </td> -->
                      
                    </tr>
                    </tbody>
                </table>
            </div>

        </div>

    </div>

</template>
<script>
import { show_alerta, enviarSolicitud } from '../funciones';
import { useRoute } from 'vue-router';
import axios from 'axios';




export default{
    data(){
        return{ habitaciones:null,id:0,url:'http://lara-hoteles.test/api/habitaciones'}
    },
    mounted(){
        const route = useRoute();
            this.id = route.params.id;
            this.url = this.url+'/'+this.id;
        this.getHabitaciones();
    },
    methods:{
        getHabitaciones(){
            axios.get(this.url).then(
            response => (
                this.habitaciones = response.data.habitaciones.data
            )
        );
        }
    }

}

</script>
