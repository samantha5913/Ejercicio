using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Produccion
{
    public class Calcular
    {
        double metros;
        double Rresultado;
        double minutos;
        double minn;
        double velocidad;
        double TiempoH;
        double TIempoM;
        double TiempoT; 
        double Metro;
        double Valor;
        double Valor2;
        int vel;
        int val;
        int val2;
        int TH;
        int TM;
        int TT;
        int TR; 


        public double Operador(double valor1, double valor2, double valor3, double valor4)
        {
            /// calculo variable ///
            if (valor1 > 0)
            {
                metros = valor1 / valor2;
                minn = valor4 / 1000;
                minutos = metros / 60;
                Rresultado = minutos * 0.1 + minutos + valor3 + minn;
            }
            return Rresultado = Math.Round(Rresultado, 2);
        }

        public double Operador01(double Tmetros, double THInicio, double TMInicio, double THFCambio, double TMFCambio, double THFAjuste, double TMAjuste, double THFin, double TMFin)
        {
            /// calculo variable ///
            if (THInicio > 0)
            {

                Valor = THFAjuste - THInicio;
                Valor2 = TMAjuste - TMInicio;
                TiempoH = THFAjuste - THFin;
                TIempoM = TMFin - TMAjuste / 1000;
                TiempoT = TiempoH + TIempoM;
                velocidad = Tmetros / TiempoT;
                Metro = Tmetros / velocidad; 
                minutos = Metro / 60;
                Rresultado = minutos * 0.1 + minutos + Valor + Valor2;
            }
            return Rresultado = Math.Round(Rresultado, 2);
        }
        public int velocidades(int Tmetros, int THInicio, int TMInicio, int THFAjuste, int TMAjuste, int THFin, int TMFin)
        {
            /// calculo variable ///
            if (THInicio >= 0)
            {

                val = THFAjuste - THInicio;
                val2 = TMAjuste - TMInicio;
                TH = THFin - THFAjuste;
                TR = TH * 60; 
                TM = TMFin - TMAjuste;
                TT = TR + TM;
                vel = Tmetros / TT;

            }
            return vel;
        }
    }
}