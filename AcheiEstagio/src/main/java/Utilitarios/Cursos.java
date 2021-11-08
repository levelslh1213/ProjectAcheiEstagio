/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilitarios;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

/**
 *
 * @author renan
 */
public class Cursos {
    
    //vetor exemplo 01
    /*
    String[] cursos = {
        "Ciência da Computação",
        "Jogos Digitais",
        "Direito"
    };*/
    
    //vetor exemplo 02
    /*
    String[] cursos;
    
    
    public void preencherCursos() {
        cursos = new String[3]; //inicializar
        
        //atribuir valor
        cursos[0] = "Ciência da Computação";
        cursos[1] = "Jogos Digitais";
        cursos[2] = "Direito";
    }
    */
    
    
    public ArrayList<String> cursos = new ArrayList();
    public ArrayList<String> disciplinas = new ArrayList();
    
    //método Construtor
    public Cursos() {
        preencherCursos();
        preencherDisciplinas();
    }
    
    public void preencherCursos() {
        cursos.add("Ciência da Computação");
        cursos.add("Jogos Digitais");
        cursos.add("Direito");
    }
    
    public void preencherDisciplinas() {
        disciplinas.add("Pesq. da Prática em Ciência da Computação I");
        disciplinas.add("Pesq. da Prática em Ciência da Computação II");
        disciplinas.add("Pesq. da Prática em Ciência da Computação III");
    }
    
    
    
    
    
    
}
