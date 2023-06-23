<template>
    <div class="row mt-3">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header bg-dark text-white text-center">Editar Hotel</div>
                <div class="card-body">
                    <form v-on:submit="guardar">
                        <div class="input-group mb-3">
                            <span class="input-group-text"><i class="fa-solid fa-gift"></i></span>
                            <input type="text" v-model="nombre" id="nombre" class="form-control" 
                            maxlength="50" placeholder="Nombre" required>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text"><i class="fa-solid fa-comment"></i></span>
                            <input type="text" v-model="nit" id="descripcion" class="form-control" 
                            maxlength="150" placeholder="NIT" required>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text"><i class="fa-solid fa-comment"></i></span>
                            <input type="text" v-model="direccion" id="descripcion" class="form-control" 
                            maxlength="150" placeholder="Dirección" required>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text"><i class="fa-solid fa-comment"></i></span>
                            <input type="text" v-model="ciudad" id="descripcion" class="form-control" 
                            maxlength="150" placeholder="Ciudad" required>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text"><i class="fa-solid fa-comment"></i></span>
                            <input type="text" v-model="num_habitaciones" id="descripcion" class="form-control" 
                            maxlength="150" placeholder="Numero de Habitaciones" required>
                        </div>
                       
                        <div class="d-grid col-6 mx-auto">
                            <button class="btn btn-success"><i class="fa-solid fa-floppy-disk"></i>  Guardar</button>
                        </div>
                    </form>
                </div>
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
            return{
                id:0,nombre:'',nit:'',direccion:'',ciudad:'',num_habitaciones:'', url:'http://lara-hoteles.test/api/hoteles'
            }
        },
        mounted(){
            const route = useRoute();
            this.id = route.params.id;
            this.url = this.url+'/'+this.id;
            this.getHotel();
        }
        ,methods:{
            getHotel(){
                axios.get(this.url).then(
                    response => (
                        this.nombre = response.data.hoteles['nombre'],
                        this.nit = response.data.hoteles['nit'],
                        this.direccion = response.data.hoteles['direccion'],
                        this.ciudad = response.data.hoteles['ciudad'],
                        this.num_habitaciones = response.data.hoteles['num_habitaciones']
                    )
                );
            },
            guardar(){
                        

                        event.preventDefault();
                        if(this.nombre.trim() === ''){
                            show_alerta('Escribe el nombre del hotel','warning','nombre');
                        }
                        else if(this.nit.trim() === ''){
                            show_alerta('Escribe el nit','warning','nit');
                        }
                        else if(this.direccion === ''){
                            show_alerta('Escribe la direccion','warning','direccion');
                        }
                        else if(this.ciudad.trim() === ''){
                            show_alerta('Escribe la ciudad','warning','ciudad');
                        }
                        else if(this.num_habitaciones.trim() === ''){
                            show_alerta('Escribe el numero de habitaciones del hotel','warning','Numero Habitaciones');
                        }
                        else{
                            var parametros= {nombre:this.nombre.trim(), nit: this.nit.trim(),direccion:this.direccion.trim(),ciudad:this.ciudad.trim(),num_habitaciones:this.num_habitaciones.trim()}
                            enviarSolicitud('PUT',parametros,this.url,'Hotel Actualizado');
                        }
                        },
                 
        }
    }
</script>

