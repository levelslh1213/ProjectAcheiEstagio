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
public class Estagiario extends Pessoa{
 
    //atributos
    private int ID;
    private String curso;
    private String professor;
    private String disciplina;
    private int semestre;
    
    //método Construtor
    public Estagiario() {
        
    }    
    
    public Estagiario(String nome) {
    }
    
    //Setter e Getters

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }
    public String getProfessor() {
        return professor;
    }

    public void setProfessor(String professor) {
        this.professor = professor;
    }

    public String getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(String disciplina) {
        this.disciplina = disciplina;
    }

    public int getSemestre() {
        return semestre;
    }

    public void setSemestre(int semestre) {
        this.semestre = semestre;
    }
    
    
}
