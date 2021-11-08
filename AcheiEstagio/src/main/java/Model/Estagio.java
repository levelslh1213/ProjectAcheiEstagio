/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Utilitarios.ManipulaData;

/**
 *
 * @author renan
 */
public class Estagio {
    
    //atributos
    private String dtInicio;
    private String dtFim;
    
    private boolean[] diasSemana; //null
    private boolean diasVariados;
    
    private String hrEntrada;
    private String hrSaida;
    private boolean horaVariada;
    
    private int cargaSemanal;
    
    private String atividades;
    
    private double bolsa;
    private String apolice;
    private String seguradora;
            
    public Estagio() {
        inicializaDias();
    }
    
    
    
    
    //métodos
    public void inicializaDias() {
        //0 - sabado
        //1 - domingo
        //2 - segunda
        //3 - terça 
        //6 - sexta
        
        //inicializa vetor
        setDiasSemana(new boolean[7]);
        
        //fori + tab
        for (int i = 0; i < getDiasSemana().length; i++) {
            getDiasSemana()[i] = false;
        }
    }

    public String getDtInicio() {
        return dtInicio;
    }

    public void setDtInicio(String dtInicio) {
        this.dtInicio = formataData(dtInicio);
    }

    public String getDtFim() {
        return dtFim;
    }

    public void setDtFim(String dtFim) {
       this.dtFim = formataData(dtFim);
    }

    public boolean[] getDiasSemana() {
        return diasSemana;
    }

    public void setDiasSemana(boolean[] diasSemana) {
        this.diasSemana = diasSemana;
    }

    public boolean isDiasVariados() {
        return diasVariados;
    }

    public void setDiasVariados(boolean diasVariados) {
        this.diasVariados = diasVariados;
    }

    public String getHrEntrada() {
        return hrEntrada;
    }

    public void setHrEntrada(String hrEntrada) {
        this.hrEntrada = hrEntrada;
    }

    public String getHrSaida() {
        return hrSaida;
    }

    public void setHrSaida(String hrSaida) {
        this.hrSaida = hrSaida;
    }

    public boolean isHoraVariada() {
        return horaVariada;
    }

    public void setHoraVariada(boolean horaVariada) {
        this.horaVariada = horaVariada;
    }

    public int getCargaSemanal() {
        return cargaSemanal;
    }

    public void setCargaSemanal(int cargaSemanal) {
        this.cargaSemanal = cargaSemanal;
    }

    public String getAtividades() {
        return atividades;
    }

    public void setAtividades(String atividades) {
        this.atividades = atividades;
    }
    
    private String formataData(String data) {
        ManipulaData md = new ManipulaData();
        
        String novaData = null;
        
        try {
             novaData = md.formatarData(data);
        } catch (Exception e) { 
            e.printStackTrace();
        }
        
        return novaData;
        
    }
    
    public void setDiaSemana(int dia) {
        diasSemana[dia] = true;
    }

    public double getBolsa() {
        return bolsa;
    }

    public void setBolsa(double bolsa) {
        this.bolsa = bolsa;
    }

    public String getApolice() {
        return apolice;
    }

    public void setApolice(String apolice) {
        this.apolice = apolice;
    }

    public String getSeguradora() {
        return seguradora;
    }

    public void setSeguradora(String seguradores) {
        this.seguradora = seguradores;
    }
    
    
    
}
