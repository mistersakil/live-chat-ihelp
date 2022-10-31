<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Client website</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        list-style-type: none;
    }

    body {

        background-color: #ddd;
        text-align: center;
        width: 100%;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 40px;
        color: red;

    }
    </style>
</head>

<body>
    <h1>This is a client website</h1>
    <article></article>
    <script>
    fetch('./api/v1/get_icon.php')
        .then(function(response) {
            return response.text()
        })
        .then(function(html) {
            const div = document.createElement("div");
            div.innerHTML = html;
            document.body.appendChild(div);
        })
        .catch(function(err) {
            console.log('Failed to fetch page: ', err);
        });
    </script>

</body>

<script>
fetch('./api/v1/get_icon.php').then(response => {
        // console.log(response.text);
        return response.text;
    })
    .then(html => {
        console.log(html);
    })
    .catch(err => {
        console.log(err);
    });
</script>


</html>