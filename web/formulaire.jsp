<!DOCTYPE html>
<html>
<head>
    <title>Ajouter une T�che</title>
</head>
<body>
    <h1>Ajouter une T�che</h1>
    <style>
        h1{
            color: red;
            size: 50px;
            font-family: arial;
        }
        body{
            color: fuchsia;
            font-size: 43px;
          font-family: serif;
            
        }
        input{
            color: aqua;
        font-size:  xx-large;
        font-family:  cursive;
        
        }
        button {
            color:  blue;
            font-size:  smaller;
            font-style:  italic;
        }
        a {
            color:  aquamarine;
            font-family:  serif;
        }
        
        
    </style>
    <form action="TacheServlet" method="post">
        <input type="text" name="description" placeholder="Entrez une t�che" required />
        <button type="submit">Ajouter</button>
    </form>
    <a href="TacheServlet">Voir la liste des t�ches</a>
</body>
</html>