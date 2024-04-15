<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>

        .textbox-warning{
            outline: 1px solid red;
        }

       

    </style>

    <asp:Label ID="ErrorLabel" runat="server" Text="" Font-Bold="true"></asp:Label>

    <h3>Ubacivanje delova</h3>

    <asp:Panel ID="Panel1" runat="server" CssClass="form-group">

        <asp:Label ID="Label1" runat="server" Text="ID:" Font-Bold="true"></asp:Label>

        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>

    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server" CssClass="form-group">

        <asp:Label ID="Label2" runat="server" Text="Naziv:" Font-Bold="true"></asp:Label>

        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>

    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" CssClass="form-group">

        <asp:Label ID="Label3" runat="server" Text="Proizvodjac:" Font-Bold="true"></asp:Label>

        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>

    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="form-group">

    <asp:Label ID="Label4" runat="server" Text="Model:" Font-Bold="true"></asp:Label>

    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>

    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" CssClass="form-group">

    <asp:Label ID="Label5" runat="server" Text="Cena:" Font-Bold="true"></asp:Label>

    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>

    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server" CssClass="form-group">

    <asp:Label ID="Label6" runat="server" Text="Godina proizvodnje:" Font-Bold="true"></asp:Label>

    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>

    </asp:Panel>

    <asp:Panel ID="Panel7" runat="server" CssClass="form-group">

    <asp:Label ID="Label7" runat="server" Text="Kolicina na skladistu:" Font-Bold="true"></asp:Label>

    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>

    </asp:Panel>
    <asp:Panel ID="Panel8" runat="server" CssClass="form-group">

    <asp:Label ID="Label8" runat="server" Text="Kategorija:" Font-Bold="true"></asp:Label>

    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>

    </asp:Panel>
    <br /><br />
    <asp:Panel ID="Panel9" runat="server" CssClass="form-group">

        <asp:Button ID="Button1" runat="server"
            Text="Ubaci Deo"
            CssClass="btn btn-outline-success btn-success btn-lg"
            OnClick="Button1_Click"/>

    </asp:Panel>

    <asp:Label ID="Label9"
        runat="server"
        Text=""
        Font-Bold="true"></asp:Label>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
        ErrorMessage="Morate upisati ID"
        ControlToValidate="TextBox1"       
         ForeColor="red"
         Font-Bold="true"
         EnableClientScript="false"
         Display="None"></asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
        runat="server"
        ErrorMessage="ID moraju biti brojeva"
        ControlToValidate="TextBox1"
        ForeColor="Red"
        Font-Bold="true"
        EnableClientScript="false"
        ValidationExpression="[0-9]+"
        Display="None"
        ></asp:RegularExpressionValidator>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
        ErrorMessage="Morate uneti naziv"
         ControlToValidate="TextBox2"
        ForeColor="red"
         Font-Bold="true"
        EnableClientScript="false"
        Display="None">

        

    </asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
        ErrorMessage="Morate uneti proizvodjaca"
        ControlToValidate="TextBox3"
        ForeColor="Red"
        Font-Bold="true"
        EnableClientScript="false"
        Display="None"
        >

    </asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
        runat="server"
        ErrorMessage="Proizvodjac moze sadrzati samo slova"
        ControlToValidate="TextBox3"
        ForeColor="Red"
        Font-Bold="true"
        EnableClientScript="false"
        ValidationExpression="[a-zA-Z]+"
        Display="None"
        ></asp:RegularExpressionValidator>

      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
      ErrorMessage="Morate uneti model"
      ControlToValidate="TextBox4"
      ForeColor="Red"
      Font-Bold="true"
      EnableClientScript="false"
      Display="None"
      >

  </asp:RequiredFieldValidator>

  <asp:RegularExpressionValidator ID="RegularExpressionValidator4"
        runat="server"
        ErrorMessage="Model moze sadrzati slova i brojeve"
        ControlToValidate="TextBox4"
        ForeColor="Red"
        Font-Bold="true"
        EnableClientScript="false"
        ValidationExpression="[a-zA-Z0-9]+"
        Display="None"
    ></asp:RegularExpressionValidator>

      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
      ErrorMessage="Morate uneti godinu proizvodnje"
       ControlToValidate="TextBox5"
      ForeColor="Red"
      Font-Bold="true"
      EnableClientScript="false"
      Display="None"
      >

  </asp:RequiredFieldValidator>

  <asp:RangeValidator ID="RangeValidator3" runat="server"
      ErrorMessage="Unesite broj izmedju 1970 i 2024!"
       ControlToValidate="TextBox6"
       ForeColor="Red"
       Font-Bold="true"
       MaximumValue="2024"
       MinimumValue="1970"
       Type="Integer"
       EnableClientScript="false"
       Display="None">


  </asp:RangeValidator>

      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
      ErrorMessage="Morate uneti cenu"
       ControlToValidate="TextBox5"
      ForeColor="Red"
      Font-Bold="true"
      EnableClientScript="false"
      Display="None"
      >

  </asp:RequiredFieldValidator>

  <asp:RegularExpressionValidator ID="RegularExpressionValidator5"
      runat="server"
      ErrorMessage="Cena moze biti samo broj"
      ControlToValidate="TextBox5"
      ForeColor="Red"
      Font-Bold="true"
      EnableClientScript="false"
      ValidationExpression="[0-9]+"
      Display="None"
  ></asp:RegularExpressionValidator>

      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
      ErrorMessage="Morate uneti kolicinu na skladistu"
       ControlToValidate="TextBox7"
      ForeColor="Red"
      Font-Bold="true"
      EnableClientScript="false"
      Display="None"
      >

  </asp:RequiredFieldValidator>

  <asp:RegularExpressionValidator ID="RegularExpressionValidator6"
    runat="server"
    ErrorMessage="Kolicina na skladistu moze biti samo broj"
    ControlToValidate="TextBox7"
    ForeColor="Red"
    Font-Bold="true"
    EnableClientScript="false"
    ValidationExpression="[0-9]+"
    Display="None"
></asp:RegularExpressionValidator>



      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
      ErrorMessage="Morate uneti kategoriju"
       ControlToValidate="TextBox8"
      ForeColor="Red"
      Font-Bold="true"
      EnableClientScript="false"
      Display="None"
      >

  </asp:RequiredFieldValidator>

  


    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
         DisplayMode="BulletList"
          HeaderText="Input Errors:"
         ForeColor ="red"
         Font-Bold="true"
        />


    <h3>Delovi u bazi</h3>

    <asp:sqldatasource id="GridView1Source"
        selectcommand="SELECT * FROM DeloviAutomobila"
        connectionstring="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Delovi;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False" 
        runat="server"/>

    <asp:GridView ID="GridView1" runat="server"
        DataSourceID="GridView1Source"
        EmptyDataText="No Data"
        EmptyDataRowStyle-ForeColor="Red"
         AutoGenerateColumns="true"
         CssClass="table"
         ></asp:GridView>

</asp:Content>
