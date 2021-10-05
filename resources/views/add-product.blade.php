<!DOCTYPE html>
<html>
<head>
    <title>AKOU - ZONEPAGE</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/custom.css">
</head>
<body class="bg-dark">
<div class="container mt-4">
  @if(session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
  @endif
  <div class="row mb-5">
      <div class="col-md-12 text-center">
          <img src="/assets/images/akou-logo.png">
      </div>
  </div>
  <div class="row mt-5 paramythi-add-form">
    <div class="card w-50 ">
        <div class="card-header text-center font-weight-bold">
            Εισαγωγή Παραμυθιού
        </div>
        <div class="card-body">
        <form name="add-blog-post-form" id="add-blog-post-form" method="post" action="{{url('/api/product_store')}}">
        @csrf
            <div class="form-group mb-1">
            <label for="title">Όνομα</label>
            <input type="text" id="title" name="title" class="form-control" required="">
            </div>
            <div class="form-group mb-1">
            <label for="title">Slug</label>
            <input type="text" id="slug" name="slug" class="form-control" required="">
            </div>
            <div class="form-group mb-1">
            <label for="title">Τιμή</label>
            <input type="text" id="price" name="price" class="form-control" required="">
            </div>
            <div class="form-group mb-1">
            <label for="exampleInputEmail1">Description</label>
            <textarea id="description" name="description" class="form-control" required=""></textarea>
            </div>
            <button type="submit" class="btn btn-primary mt-3">Εισαγωγή</button>
        </form>
        </div>
    </div>
  </div>

</div>    
</body>
</html>