<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m.aspx.cs" Inherits="export.m" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <style>
    

.horizontal-nav {
  background: #efefef;
  border-radius: 6px;
}
.horizontal-nav ul {
  background: #128F9A;
  float: left;
  text-align: center;
  border-radius: 6px;
  border: 1px solid #0e7079;
}
.horizontal-nav ul li {
  float: left;
  border-left: 1px solid #0e7079;
}
.horizontal-nav ul li:first-child {
  border-left: 0 none;
}
.horizontal-nav ul li a {
  display: block;
  padding: 10px 20px;
  color: #fff;
  border-top: 1px solid rgba(255,255,255, 0.25);
  border-left: 1px solid rgba(255,255,255, 0.25);
}
.horizontal-nav ul li:first-child a {
  border-left: 0 none;
}
.horizontal-nav ul li a:hover {
  background: #12808a;
}
.horizontal-nav ul li:first-child a {
  border-top-left-radius: 6px;
  border-bottom-left-radius: 6px;
}
.horizontal-nav ul li:last-child a {
  border-top-right-radius: 6px;
  border-bottom-right-radius: 6px;
}
    
  </style>

    

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  <nav class="horizontal-nav full-width horizontalNav-notprocessed" style="width:100%">
  <ul style="list-style: none;">
      <li><a href="buyer_financial.aspx">Buyer Financial Reports</a></li>
     <li><a href="credit_insurance.aspx">Credit Insurance Cover</a></li>
     <li><a href="debt_collection.aspx">Debt Collection</a></li>
     <li><a href="request_status.aspx">Request Status</a></li>
     <li><a href="audit_structuring.aspx">Audit &amp; structuring of a customized process</a></li>
  </ul>
</nav>
    </form>
</body>
</html>
