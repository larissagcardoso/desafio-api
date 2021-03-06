﻿using NUnit.Framework;
using RestSharp;
using DesafioTestesApi.Bases;
using DesafioTestesApi.Requests.Tarefas;


namespace DesafioTestesApi.Tests.Tarefas
{
    [TestFixture]
    public class ObterTarefasMonitoradaPorMimTests : TestBase
    {
        [Test]
        [Parallelizable]
        public void DadosValidos()
        {
            #region Parameters

            string filter_id = "monitored";
            //Resultado esperado
            string statusCodeEsperado = "OK";
            #endregion

            ObterTarefasMonitoradaPorMimRequest obterTarefasMonitoradaPorMimRequest = new ObterTarefasMonitoradaPorMimRequest(filter_id);
            IRestResponse<dynamic> response = obterTarefasMonitoradaPorMimRequest.ExecuteRequest();

 
                Assert.AreEqual(statusCodeEsperado, response.StatusCode.ToString());

        }

        [Test]
        [Parallelizable]
        public void DadosInvalidosFiltroMonitoramento()
        {
            #region Parameters
            string filter_id = "testes1";

            //Resultado esperado
            string statusCodeEsperado = "OK";
            string status_code = "404";
            string fault_string = "Unknown filter 'testes1'";
            #endregion

            ObterTarefasMonitoradaPorMimRequest obterTarefasMonitoradaPorMimRequest = new ObterTarefasMonitoradaPorMimRequest(filter_id);
            IRestResponse<dynamic> response = obterTarefasMonitoradaPorMimRequest.ExecuteRequest();

            Assert.Multiple(() =>
            {
                Assert.AreEqual(statusCodeEsperado, response.StatusCode.ToString());
                Assert.AreEqual(status_code, response.Data["issues"]["status_code"].ToString());
                Assert.AreEqual(fault_string, response.Data["issues"]["fault_string"].ToString());

            });
        }

    }
}
