﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.Master" AutoEventWireup="true" CodeBehind="CadPaciente.aspx.cs" Inherits="ClinicaUnit.Views.CadPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="Cadastro" DefaultMode="Edit" DataKeyNames="ID" Width="100%" runat="server" DataSourceID="ObjectDataSourceCadPaciente">
        <EditItemTemplate>
            <h2 class="form-signin-heading">editar de Paciente</h2>
            <asp:Panel CssClass="form-group" runat="server">
                <label for="NOME" class="col-sm-2 control-label">Nome</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:TextBox runat="server" ID="NOME" CssClass="form-control" MaxLength="50" TextMode="SingleLine" ReadOnly="true" Text='<%# Bind("nome") %>'></asp:TextBox>
                </asp:Panel>
                <label for="CIDADE" class="col-sm-2 control-label">Cidade</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:TextBox runat="server" ID="CIDADE" CssClass="form-control" MaxLength="50" Text='<%# Bind("cidade") %>'></asp:TextBox>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel CssClass="form-group" runat="server">
                <label for="ENDERECO" class="col-sm-2 control-label">Endereço</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:TextBox runat="server" ID="ENDERECO" CssClass="form-control" MaxLength="50" TextMode="SingleLine" Text='<%# Bind("endereco") %>'></asp:TextBox>
                </asp:Panel>
                <label for="ESTADO" class="col-sm-2 control-label">Estado</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:DropDownList ID="ESTADO" CssClass="form-control" runat="server" Text='<%# Bind("uf") %>'>
                        <asp:ListItem>AC</asp:ListItem>
                        <asp:ListItem>AL</asp:ListItem>
                        <asp:ListItem>AP</asp:ListItem>
                        <asp:ListItem>AM</asp:ListItem>
                        <asp:ListItem>BA</asp:ListItem>
                        <asp:ListItem>CE</asp:ListItem>
                        <asp:ListItem>DF</asp:ListItem>
                        <asp:ListItem>ES</asp:ListItem>
                        <asp:ListItem>GO</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>MT</asp:ListItem>
                        <asp:ListItem>MS</asp:ListItem>
                        <asp:ListItem>MG</asp:ListItem>
                        <asp:ListItem>PA</asp:ListItem>
                        <asp:ListItem>PB</asp:ListItem>
                        <asp:ListItem>PR</asp:ListItem>
                        <asp:ListItem>PE</asp:ListItem>
                        <asp:ListItem>PI</asp:ListItem>
                        <asp:ListItem>RJ</asp:ListItem>
                        <asp:ListItem>RN</asp:ListItem>
                        <asp:ListItem>RS</asp:ListItem>
                        <asp:ListItem>RO</asp:ListItem>
                        <asp:ListItem>RR</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>SP</asp:ListItem>
                        <asp:ListItem>SE</asp:ListItem>
                        <asp:ListItem>TO</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel CssClass="form-group" runat="server">
                <label for="CELULAR" class="col-sm-2 control-label">Telefone</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:TextBox runat="server" ID="CELULAR" CssClass="form-control" MaxLength="20" TextMode="Phone" Text='<%# Bind("telefone") %>'></asp:TextBox>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel CssClass="form-group" runat="server">
                <label for="DATANIV" class="col-sm-2 control-label">Data Aniversário</label>
                <asp:Panel runat="server" CssClass="col-sm-2">
                    <asp:TextBox runat="server" ID="DATANIV" CssClass="form-control" TextMode="Date" Text='<%# Bind("dtnaci") %>'></asp:TextBox>
                </asp:Panel>
                <label class="col-sm-1 control-label">Sexo</label>
                <asp:Panel runat="server" CssClass="col-sm-2">
                    <asp:DropDownList ID="SEXO" CssClass="form-control" runat="server" SelectedValue='<%# Bind("sexo") %>'>
                        <asp:ListItem>Selecione</asp:ListItem>
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Feminino</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
                <label for="PLANO" class="col-sm-1 control-label">Plano de Saúde:</label>
                <asp:Panel runat="server" CssClass="col-sm-2">
                    <asp:DropDownList ID="PLANO" CssClass="form-control" runat="server" Text='<%# Bind("plano") %>'>
                        <asp:ListItem>Selecione</asp:ListItem>
                        <asp:ListItem>Bradesco</asp:ListItem>
                        <asp:ListItem>Petrobras</asp:ListItem>
                        <asp:ListItem>CASSI</asp:ListItem>
                        <asp:ListItem>UNIMED</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel CssClass="form-group" runat="server">
                <asp:Panel runat="server" CssClass="col-sm-12 text-center">
                    <asp:Button runat="server" ID="BtnEditar" CssClass="btn btn-success" CommandName="Update" Text="Salvar"></asp:Button>
                </asp:Panel>
            </asp:Panel>
        </EditItemTemplate>
        <InsertItemTemplate>
            <h2 class="form-signin-heading">Cadastro de Paciente</h2>
            <asp:Panel CssClass="form-group" runat="server">
                <label for="NOME" class="col-sm-2 control-label">Nome</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:TextBox runat="server" ID="NOME" CssClass="form-control" MaxLength="50" TextMode="SingleLine" Text='<%# Bind("nome") %>'></asp:TextBox>
                </asp:Panel>
                <label for="CIDADE" class="col-sm-2 control-label">Cidade</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:TextBox runat="server" ID="CIDADE" CssClass="form-control" MaxLength="50" Text='<%# Bind("cidade") %>'></asp:TextBox>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel CssClass="form-group" runat="server">
                <label for="ENDERECO" class="col-sm-2 control-label">Endereço</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:TextBox runat="server" ID="ENDERECO" CssClass="form-control" MaxLength="50" TextMode="SingleLine" Text='<%# Bind("endereco") %>'></asp:TextBox>
                </asp:Panel>
                <label for="ESTADO" class="col-sm-2 control-label">Estado</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:DropDownList ID="ESTADO" CssClass="form-control" runat="server" Text='<%# Bind("uf") %>'>
                        <asp:ListItem>AC</asp:ListItem>
                        <asp:ListItem>AL</asp:ListItem>
                        <asp:ListItem>AP</asp:ListItem>
                        <asp:ListItem>AM</asp:ListItem>
                        <asp:ListItem>BA</asp:ListItem>
                        <asp:ListItem>CE</asp:ListItem>
                        <asp:ListItem>DF</asp:ListItem>
                        <asp:ListItem>ES</asp:ListItem>
                        <asp:ListItem>GO</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>MT</asp:ListItem>
                        <asp:ListItem>MS</asp:ListItem>
                        <asp:ListItem>MG</asp:ListItem>
                        <asp:ListItem>PA</asp:ListItem>
                        <asp:ListItem>PB</asp:ListItem>
                        <asp:ListItem>PR</asp:ListItem>
                        <asp:ListItem>PE</asp:ListItem>
                        <asp:ListItem>PI</asp:ListItem>
                        <asp:ListItem>RJ</asp:ListItem>
                        <asp:ListItem>RN</asp:ListItem>
                        <asp:ListItem>RS</asp:ListItem>
                        <asp:ListItem>RO</asp:ListItem>
                        <asp:ListItem>RR</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>SP</asp:ListItem>
                        <asp:ListItem>SE</asp:ListItem>
                        <asp:ListItem>TO</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel CssClass="form-group" runat="server">
                <label class="col-sm-2 control-label">CPF</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:TextBox runat="server" ID="CPF" CssClass="form-control" MaxLength="18" TextMode="SingleLine" Text='<%# Bind("cpf") %>'></asp:TextBox>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel CssClass="form-group" runat="server">
                <label for="CELULAR" class="col-sm-2 control-label">Telefone</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:TextBox runat="server" ID="CELULAR" CssClass="form-control" MaxLength="20" TextMode="Phone" Text='<%# Bind("telefone") %>'></asp:TextBox>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel CssClass="form-group" runat="server">
                <label for="DATANIV" class="col-sm-2 control-label">Data Aniversário</label>
                <asp:Panel runat="server" CssClass="col-sm-2">
                    <asp:TextBox runat="server" ID="DATANIV" CssClass="form-control" TextMode="Date" Text='<%# Bind("dtnaci") %>'></asp:TextBox>
                </asp:Panel>
                <label class="col-sm-1 control-label">Sexo</label>
                <asp:Panel runat="server" CssClass="col-sm-2">
                    <asp:DropDownList ID="SEXO" CssClass="form-control" runat="server" SelectedValue='<%# Bind("sexo") %>'>
                        <asp:ListItem>Selecione</asp:ListItem>
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Feminino</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
                <label for="PLANO" class="col-sm-1 control-label">Plano de Saúde:</label>
                <asp:Panel runat="server" CssClass="col-sm-2">
                    <asp:DropDownList ID="PLANO" CssClass="form-control" runat="server" Text='<%# Bind("plano") %>'>
                        <asp:ListItem>Selecione</asp:ListItem>
                        <asp:ListItem>Bradesco</asp:ListItem>
                        <asp:ListItem>Petrobras</asp:ListItem>
                        <asp:ListItem>CASSI</asp:ListItem>
                        <asp:ListItem>UNIMED</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel CssClass="form-group" runat="server">
                <asp:Panel runat="server" CssClass="col-sm-12 text-center">
                    <asp:Button runat="server" ID="BtnSalvar" CssClass="btn btn-success" CommandName="Insert" Text="Salvar"></asp:Button>
                </asp:Panel>
            </asp:Panel>
        </InsertItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSourceCadPaciente" DataObjectTypeName="ClinicaUnit.Models.Paciente" InsertMethod="Insert" SelectMethod="ObterPaciente" TypeName="ClinicaUnit.Models.PacienteDAO" UpdateMethod="UPDATE">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID" Name="id_paciente" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
