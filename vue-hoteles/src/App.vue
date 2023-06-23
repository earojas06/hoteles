<template>
  <nav class="navbar navbar-expand-lg bg-body-tertiary bg-blue">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">HOTELES DECAMERON</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <router-link to="/hoteles" class="nav-link active" aria-current="page" href="#">HOTELES</router-link>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid mt-3">
  <router-view/> 
</div>
  
</template>

