﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ClinicaUnit.Models
{
    public class ConvenioDAO : DBConect
    {
        #region Contrutor
        public ConvenioDAO()
        {
            Convenio convenio = new Convenio();
        }
        #endregion

        #region Menbros da Interface IDataAccessObject<Convenio>
        public Convenio ObterConvenio(Int32 id_convenio)
        {
            try
            {
                this.AbrirConexao();
                cmd = new SqlCommand("SELECT * FROM [CONVENIO] WHERE [Id] = @convenio", tran.Connection, tran);
                cmd.Parameters.AddWithValue("@convenio", id_convenio);
                Convenio convenio = null;
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    convenio = new Convenio();
                    convenio.id = Convert.ToInt32(dr["Id"]);
                    convenio.nome = Convert.ToString(dr["Nome"]);
                    convenio.sigla = Convert.ToString(dr["SIGLA"]);
                    convenio.telefone = Convert.ToString(dr["Telefone"]);
                }
                return convenio;
            }
            catch (Exception e)
            {
                throw new Exception("Erro ao obter dados: " + e.Message);
            }
            finally
            {
                this.FecharConexao();
            }
        }

        public List<Convenio> ListarConveio(String nomeConv, String Sigla)
        {
            try
            {
                this.AbrirConexao();
                string query = @"SELECT * FROM [CONVENIO]
                                          WHERE (@nomeconv is null or [Nome] = @nomeconv) and
                                                (@sigla is null or [SIGLA] = @sigla)";
                cmd = new SqlCommand(query, tran.Connection, tran);
                if (String.IsNullOrEmpty(nomeConv))
                {
                    cmd.Parameters.AddWithValue("@nomeconv", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@nomeconv", nomeConv);
                }

                if (String.IsNullOrEmpty(Sigla))
                {
                    cmd.Parameters.AddWithValue("@sigla", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@sigla", Sigla);
                }
                dr = cmd.ExecuteReader();
                List<Convenio> List = new List<Convenio>();
                while (dr.Read())
                {
                    Convenio convenio = new Convenio();
                    convenio.id = Convert.ToInt32(dr["Id"]);
                    convenio.nome = Convert.ToString(dr["NOME"]);
                    convenio.sigla = Convert.ToString(dr["SIGLA"]);
                    convenio.telefone = Convert.ToString(dr["Telefone"]);
                    List.Add(convenio);
                }
                return List;
            }
            catch (Exception e)
            {
                throw new Exception("Erro ao listar Convenio: " + e.Message);
            }
            finally
            {
                this.FecharConexao();
            }
        }
        public void Insert(Convenio convenio)
        {
            try
            {
                this.AbrirConexao();
                Int32 _id = this.ObterCodigo();
                convenio.id = _id;
                cmd = new SqlCommand(@"SET IDENTITY_INSERT [CONVENIO] ON;
                                       INSERT INTO [CONVENIO] ([ID],[NOME], [SIGLA], [TELEFONE]) VALUES (@id_convenio,@nome, @sigla, @telefone);
                                       SET IDENTITY_INSERT [CONVENIO] OFF;", tran.Connection, tran);
                cmd.Parameters.AddWithValue("@id_convenio", convenio.id);
                cmd.Parameters.AddWithValue("@nome", convenio.nome);
                cmd.Parameters.AddWithValue("@sigla", convenio.sigla);
                cmd.Parameters.AddWithValue("@telefone", convenio.telefone);
                cmd.Transaction = tran;
                cmd.ExecuteNonQuery();
                tran.Commit();

            }
            catch (Exception e)
            {
                tran.Rollback();
                throw new Exception("Erro ao Inserir Convenio: " + e.Message);
            }
            finally
            {
                this.FecharConexao();
            }
        }
        public void Delete(Convenio convenio)
        {
            try
            {
                this.AbrirConexao();
                cmd = new SqlCommand(@"DELETE FROM [CONVENIO] 
                                              WHERE [ID] = @id_convenio", tran.Connection, tran);
                cmd.Parameters.AddWithValue("@id_convenio", convenio.id);
                cmd.Transaction = tran;
                cmd.ExecuteNonQuery();
                tran.Commit();
            }
            catch (Exception e)
            {
                tran.Rollback();
                throw new Exception("Erro ao Deletar Convenio: " + e.Message);
            }
            finally
            {
                this.FecharConexao();
            }

        }

        public void UPDATE(Convenio convenio)
        {
            try
            {
                this.AbrirConexao();
                cmd = new SqlCommand(@"UPDATE [Convenio] 
                                              SET   [Nome] = @nome,
                                                    [SIGLA] = @sigla,
                                                    [Telefone] = @telefone
                                              WHERE [ID] = @id_convenio", tran.Connection, tran);
                cmd.Parameters.AddWithValue("@id_convenio", convenio.id);
                cmd.Parameters.AddWithValue("@nome", convenio.nome);
                cmd.Parameters.AddWithValue("@sigla", convenio.sigla);
                cmd.Parameters.AddWithValue("@telefone", convenio.telefone);
                cmd.Transaction = tran;
                cmd.ExecuteNonQuery();
                tran.Commit();
            }
            catch (Exception e)
            {
                tran.Rollback();
                throw new Exception("Erro ao Atualizar Convenio: " + e.Message);
            }
            finally
            {
                this.FecharConexao();
            }
        }
        #endregion
        public int ObterCodigo()
        {
            try
            {
                //this.AbrirConexao();
                String query = "SELECT MAX([ID]) FROM [CONVENIO]";
                cmd = new SqlCommand(query, tran.Connection, tran);
                int cod = 0;
                cod = Convert.ToInt32(cmd.ExecuteScalar() == DBNull.Value ? 0 : cmd.ExecuteScalar());
                cod++;
                return cod;
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao obter Codigo" + ex.Message);
            }
        }

    }
}