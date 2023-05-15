<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="araba_satis_sitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid p-5 bg-primary text-white text-center">
  <h1>Hakkımızda</h1>
  <p>Biz Kimiz?</p> 
</div>
  
<div class="container-fluid mt-5 text-center">
  <div class="row">
    <div class="col-sm-4">
      <h3>ArabaAl.com</h3>
      <p>Şirketimiz 2015 yılında kurulmuş bir araba satış firmasıdır</p>
      <p>Türkiyenin en çok satış yapılan sitelerin başında geliyoruz</p>
    </div>
    <div class="col-sm-4">
      <h3>Güvenlik</h3>
      <p>Sistemimiz son derece güvenlidir</p>
      <p>O kadar güvenli ki alın bence</p>
    </div>
    <div class="col-sm-4">
      <h3>Çalışanlarımız</h3>        
      <p>Şirket bünyemizde 18 yazılımcı çalışanımız vardır.</p>
      <p>Sistemlerimizde aksaklık olmasın diye her an destek veririz.</p>
    </div>
  </div>
</div>

</body>
</html>


</asp:Content>
