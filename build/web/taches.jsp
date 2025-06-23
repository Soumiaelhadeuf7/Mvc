<%-- 
    Document   : taches
    Created on : 4 janv. 2025, 15:51:59
    Author     : toshiba
--%>

<%@page import="java.util.List"%>
<%@page import="model.Tache"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Liste des Tâches</title>
</head>
<body>
    <style> 
        body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
            h1 {
                color: #333;
            }
            ul {
                list-style-type: none;
                padding: 0;
                color:  brown;
                background-color: darkseagreen;
            }
            li {
                margin: 10px 0; 
                color:  bisque;
            }
            a {
                display: inline-block;
                margin-top: 20px;
                padding: 10px;
                background-color: #4CAF50;
                color: white;
                text-decoration: none;
                border-radius: 5px;
            }
            a:hover {
                background-color: #45a049;
            }
        </style>
    </style>  <h1>Liste des Tâches</h1>
    <ul>
        <%
            List<Tache> taches = (List<Tache>) request.getAttribute("taches");
            if (taches != null) {
                for (Tache tache : taches) {
        %>
                    <li><%= tache.getDescription() %></li>
        <%
                }
            } else {
        %>
                <li>Aucune tâche ajoutée.</li>
        <%
            }
        %>
    </ul>
    <a href="formulaire.jsp">Ajouter une autre tâche</a>
</body>
</html>