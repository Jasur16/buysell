<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Products </title>
</head>
<body>
<h1>Products</h1>
<#list products as product>
    <p>
        <b>
            ${product.title}
        </b>
        ${product.price} <br>
        <a href="/product/${product.id}">
            More...
        </a>
    </p>
</#list>
<hr>
<h3>Create product</h3>
<form action="/product/create" method="post">
    <input type="text" placeholder="title" name="title"><br><br>
    <input type="text" placeholder="description" name="description"><br><br>
    <input type="text" placeholder="price" name="price"><br><br>
    <input type="text" placeholder="city" name="city"><br><br>
    <input type="text" placeholder="author" name="author"><br><br>
    <button type="submit">Add</button><br><br>
</form>

</body>
</html>