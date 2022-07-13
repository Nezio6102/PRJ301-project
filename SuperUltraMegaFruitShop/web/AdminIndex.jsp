<%-- 
    Document   : AdminIndex
    Created on : Jul 3, 2022, 4:48:37 PM
    Author     : Nezio
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Model.User"%>
<%@page import = "java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AdminIndex</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="./Login V9_files/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="./Login V9_files/main.css">
    </head>
    <style>
        .topbar {
            padding-top: 5vh;
            background-color: blue;
            color :white;
        }
        .table_container {
            background-color: white;
            margin-left:  22vw;
            margin-right: 2vw;
            margin-bottom: 10vh;
            height: 85vh;
        }
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
        }

        .button1 {
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
        }
        .button2{
            border-radius: 8px;
            text-align: center;
            width: 15vw;
            margin-left: 2.5vw;

        }
        .button2:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
        }
        .sidenav {
            height: 85%;
            width: 20vw;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: white;
            overflow-x: hidden;
            padding-top: 20px;
            margin-top: 10vh;
        }
    </style>
    <body style="background-color: #abdde5">

        <header class="topbar">
            <h4>Admin Tools</h4>
        </header>
        <div class="sidenav">
            <form action="adminController" method ="post" >
                <button class="button button2" type="submit" name='customer'>Accounts</button>
                <br>
                <button class="button button2" type="submit" name='product'>Product</button>
            </form>  
        </div>
        <br><!-- comment -->

        <div class="table_container">
            <table border="1" style="width: 75vw">
                <thead>
                    ${table_creator}
                </thead>



                <c:forEach items="${list}" var="item">
                    <tr>
                        <td>${item.getUserID()}</td>
                        <td>${item.getAccount()}</td>
                        <td>${item.getPassword()}</td>
                        <td>${item.getFullname()}</td>
                        <td>${item.getPhoneNumber()}</td>
                        <td>${item.getEmail()}</td>
                        <td>${item.getCity()}</td>
                        <td>${item.getRole()}</td>
                        <td><a href="Edit?id=${item.getUserID()}&mod=update">Update</td>
                        <td><a href="Edit?id=${item.getUserID()}&mod=delete">Delete</td>
                    </tr>
                </c:forEach>

                <c:forEach items="${list2}" var="item">
                    <tr>
                        <td>${item.getP_id()}</td>
                        <td>${item.getP_name()}</td>
                        <td>${item.getP_quantity()}</td>
                        <td>${item.getC_id()}</td>
                        <td>${item.getDate_manufacture()}</td>
                        <td>${item.getDate_expriration()}</td>
                        <td>${item.getP_price()}</td>
                        <td>
                            <input type ="text" value="${item.getP_img()}"
                        </td>
                        <td>${item.getDesc()}</td>
                        <td><a href="Edit?id=${item.getP_id()}&mod=update">Update</td>
                        <td><a href="Edit?id=${item.getP_id()}&mod=delete">Delete</td>
                    </tr>
                </c:forEach>
            </table>

        </div>


    </body>
</html>
