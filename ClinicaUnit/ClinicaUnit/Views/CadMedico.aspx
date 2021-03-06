﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.Master" AutoEventWireup="true" CodeBehind="CadMedico.aspx.cs" Inherits="ClinicaUnit.Views.CadMedico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="Cadastro" DataKeyNames="ID" DefaultMode="Edit" Width="100%" runat="server" DataSourceID="ObjectDataSourceCadMedico">
        <EditItemTemplate>
            <h2 class="form-signin-heading">Editar de Médico</h2>
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
                <label for="ATENDTURNO" class="col-sm-3 control-label">Atendimento por turno:</label>
                <asp:Panel runat="server" CssClass="col-sm-2">
                    <asp:DropDownList ID="ATENDTURNO" CssClass="form-control" runat="server" Text='<%# Bind("turno") %>'>
                        <asp:ListItem>Selecione</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
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
            <h2 class="form-signin-heading">Cadastro de Médico</h2>
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
                <label for="CRM" class="col-sm-2 control-label">CRM</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:TextBox runat="server" ID="CRM" CssClass="form-control" MaxLength="50" TextMode="SingleLine" Text='<%# Bind("crm") %>'></asp:TextBox>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel CssClass="form-group" runat="server">
                <label for="ATENDTURNO" class="col-sm-3 control-label">Atendimento por turno:</label>
                <asp:Panel runat="server" CssClass="col-sm-2">
                    <asp:DropDownList ID="ATENDTURNO" CssClass="form-control" runat="server" Text='<%# Bind("turno") %>'>
                        <asp:ListItem>Selecione</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
                <label class="col-sm-3 control-label">Especialidade</label>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:DropDownList ID="ESPECI" CssClass="form-control" SelectedValue='<%# Bind("id_especi") %>' runat="server" DataSourceID="ObjectDataSourceListEspeci" DataTextField="nome" DataValueField="id">
                        <asp:ListItem Value="-1">Selecionar</asp:ListItem>
                    </asp:DropDownList>
                    <asp:ObjectDataSource runat="server" ID="ObjectDataSourceListEspeci" SelectMethod="ListarEspeci" TypeName="ClinicaUnit.Models.EspecialidadeDAO">
                        <SelectParameters>
                            <asp:Parameter Name="nome" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Descri" Type="String"></asp:Parameter>
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel CssClass="form-group" runat="server">
                <asp:Panel runat="server" CssClass="col-sm-12 text-center">
                    <asp:Button runat="server" ID="BtnSalvar" CssClass="btn btn-success" CommandName="Insert" Text="Salvar"></asp:Button>
                </asp:Panel>
            </asp:Panel>
        </InsertItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSourceCadMedico" DataObjectTypeName="ClinicaUnit.Models.Medico" InsertMethod="Insert" SelectMethod="ObterMedico" TypeName="ClinicaUnit.Models.MedicoDAO" UpdateMethod="UPDATE">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID" Name="id_medico" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
