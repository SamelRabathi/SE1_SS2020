<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Andreas
  Date: 12.05.20
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>Parkhaus.jsp</title>
  </head>
  <body>
  <h1>Parkhaus.jsp</h1>
  <h2>Autos im.jsp Parkhaus.jsp:</h2>
  <h4>Anzahl.jsp Freie.jsp Parkplätze.jsp:</h4>
  <p id="bereich1">
  </p>
  <button onclick="myFun()">Neues Auto in Parkhaus</button>
  <script>
    var i=0;
    var ParkhausSize=500;
    var PreisProStunde=2.5;
    var arrayAuto=[];
    var buttonBezahlen=[];
    function x(){document.getElementsByTagName('p')[0].innerText=""+ParkhausSize-i+"";}
    document.getElementsByTagName('p')[0].innerText=""+ParkhausSize-i+"";
    var Auto=function () {
      this.id=Math.random();
      this.date=new Date();
      function Getid() {
          return this.id;
      }
    }

    function myFun() {
      if(i<ParkhausSize) {

        i=i+1;
        x();
        a=new Auto();
        arrayAuto.push(a);
        var para = document.createElement("P");
        var para1=document.createElement("Button");
        buttonBezahlen.push(para1);
        para.innerText = "Auto (id: " + a.id + ") Ankunftszeit:("+a.date+")";
        para1.innerText=("Bezahlen und Parkaus verlassen");
        document.body.appendChild(para);
        document.body.appendChild(para1);
        para1.onclick(bezahlen(arrayAuto[i]))
      }
      else
        {
          window.alert("Das Parkhaus ist voll");
        }
    }
    function bezahlen(a) {
        var paratest=document.createElement("P");
        paratest.innerText("bezahlt");
        document.body.appendChild(paratest);
    }
  </script>
  </body>
</html>
