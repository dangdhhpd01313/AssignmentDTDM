﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="loaisanpham.aspx.cs" Inherits="Assignment.loaisanpham" EnableEventValidation="False" ValidateRequest="False" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 175px;
        }
        #TextArea1 {
            width: 199px;
        }
        #motaloaisanpham {
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="than">
        <div id="left">
            <div style="border-radius: 5px; border: 1px solid #090; padding: 5px">
                <h3>Thêm Loại Sản Phẩm</h3>
                <form method="post">
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style1">
                                <label for="customID">Mã Loại Sản Phẩm</label></td>
                            <td>
                                <asp:TextBox ID="maloaisanpham" runat="server" Width="50%" BorderColor="#009900" BorderStyle="Double" BorderWidth="1px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Tên Loại Sản Phẩm</td>
                            <td>
                                <asp:TextBox ID="tenloaisanpham" runat="server" Width="50%" BorderColor="#009900" BorderStyle="Double" BorderWidth="1px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Mô tả :</td>
                            <td>
                                <asp:TextBox ID="motaloaisanpham" runat="server" Width="50%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1"></td>
                            <td>

                                <asp:ImageButton ID="themkhachhang" runat="server" Height="40px" ImageUrl="~/images/GreenRoundedButton.png" OnClick="ImageButton1_Click" Width="150px" />

                            </td>
                        </tr>
                    </table>
                </form>
                <div>
                    <asp:GridView ID="grvloaisanpham" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="grvloaisanpham_RowCancelingEdit" OnRowDataBound="grvloaisanpham_RowDataBound" OnRowDeleting="grvloaisanpham_RowDeleting" OnRowEditing="grvloaisanpham_RowEditing" OnRowUpdating="grvloaisanpham_RowUpdating" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="MaLoaiSp" HeaderText="Mã Loại Sản Phẩm" ReadOnly="True" />
                            <asp:BoundField DataField="TenLoaiSp" HeaderText="Tên Sản Phẩm" />
                            <asp:BoundField DataField="MotaLoaiSp" HeaderText="Mô Tả" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
