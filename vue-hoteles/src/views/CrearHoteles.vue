<template>
    <div class="row mt-3">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header bg-dark text-white text-center">Crear Hotel</div>
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
    export default{
        data(){
            return{
                nombre:'',nit:'',direccion:'',ciudad:'',num_habitaciones:'', url:'http://lara-hoteles.test/api/hoteles'
                ,messageHotel: []
            }
        }
        ,methods:{
            guardar(){

                if(this.CheckHotelExists()){
                    show_alerta('Hotel ya existe','warning','hotel');
                }

               event.preventDefault();
                if(this.nombre.trim() === ''){
                    show_alerta('Escribe el nombre del hotel','warning','nombre');
                }
                else if(this.nit.trim() === ''){
                    show_alerta('Escribe el nit','warning','descripcion');
                }
                else if(this.direccion === ''){
                    show_alerta('Escribe la direccion','warning','precio');
                }
                else if(this.ciudad.trim() === ''){
                    show_alerta('Escribe la ciudad','warning','descripcion');
                }
                else if(this.num_habitaciones.trim() === ''){
                    show_alerta('Escribe el numero de habitaciones del hotel','warning','descripcion');
                }
                else{
                    var parametros= {nombre:this.nombre.trim(), nit: this.nit.trim(),direccion:this.direccion.trim(),ciudad:this.ciudad.trim(),num_habitaciones:this.num_habitaciones.trim()}
                    enviarSolicitud('POST',parametros,this.url,'Hotel guardado');
                }
            },
            CheckHotelExists() {
                    
                        axios.get('/check-hotel', { params: { value: this.nit } })
                                .then(response => {
                                    if (response.data.exists) {
                                    // El valor ya existe
                                     console.log('El valor ya existe');
                                    return this.messageHotel= 'Hotel ya esxiste'
                                   
                                    } 
                                })
                                .catch(error => {
                                    console.error(error);
                                });
                            }
        }
    }
</script>
