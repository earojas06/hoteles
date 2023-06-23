<template>
        <div class="row" >
            <div class="col-lg-8 offset-lg2">
                <div class="table-responsive">
                    <th>  <router-link to="/CrearHotel" class="btn btn-success" aria-current="page" href="#">AGREGAR HOTEL</router-link></th> 
                    <br>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                            <th>NOMBRE</th>
                            <th>NIT</th>
                            <th>DIRECCION</th>
                            <th>CIUDAD</th>
                            <th># HABITACIONES</th>  
                            <th>EDITAR</th>   
                            <th>ASIGNAR HABITACIONES</th>               
                            </tr>
                        </thead>
                        <tbody class="table-group-divider" id="contenido">
                        <tr v-for="item in hotel" :key="item.id">
                             <td class="align-middle text-center">{{item.nombre}}</td>
                             <td class="align-middle text-center" >{{item.nit}}</td>
                             <td class="align-middle text-center">{{item.direccion}}</td>
                             <td class="align-middle text-center">{{item.ciudad}}</td>
                             <td class="align-middle text-center">{{item.num_habitaciones}}</td>
                             <td class="align-middle text-center">
                                <router-link :to="{path:'edit/'+item.id}" class="btn btn-warning">
                                     <i class="fa-solid fa-edit"></i>
                                </router-link> &nbsp;

                             </td>
                             <td class="align-middle text-center">
                                <router-link :to="{path:'habitaciones/'+item.id}" class="btn btn-primary" >
                                    <i class="fa-solid fa-plus"></i>
                                </router-link>
                             </td>
                          
                        </tr>
                        </tbody>
                    </table>
                </div>

            </div>

        </div>
  
</template>
<script>
import axios from 'axios'




export default{
    data(){
        return{ hotel:null}
    },
    mounted(){
        this.getHoteles();
    },
    methods:{
       getHoteles(){
            axios.get('http://lara-hoteles.test/api/hoteles').then(
            response => (
                this.hotel = response.data.hotel.data
            )
        );
        }
    }

}

</script>
