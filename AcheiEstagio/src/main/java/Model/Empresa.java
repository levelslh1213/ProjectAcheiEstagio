/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author renan
 */
public class Empresa {

    //atributos
    private String razaoSocial;
    private Endereco endereco;
    private String telefone;
    private String cnpj;

    public Empresa(String razaoSocial, Endereco endereco, String telefone, String cnpj) {
        setRazaoSocial(razaoSocial);
        this.endereco = endereco;
        this.telefone = telefone;
        this.cnpj = cnpj;
    }

    public Empresa() {
        
    }
    
    
    
    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial.toUpperCase();
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
    
    
}
