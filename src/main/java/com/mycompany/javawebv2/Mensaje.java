
package com.mycompany.javawebv2;

public class Mensaje {
    private int id;
    private String mensajes;
    private String author;
    private String fecha;
    
    public Mensaje(){
    }

    public Mensaje(int id) {
        this.id = id;
    }

    public Mensaje(String mensajes, String author) {
        this.mensajes = mensajes;
        this.author = author;
    }

    public Mensaje(int id, String mensajes, String author) {
        this.id = id;
        this.mensajes = mensajes;
        this.author = author;
    }

    public Mensaje(int id, String mensajes, String author, String fecha) {
        this.id = id;
        this.mensajes = mensajes;
        this.author = author;
        this.fecha = fecha;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMensajes() {
        return mensajes;
    }

    public void setMensajes(String mensajes) {
        this.mensajes = mensajes;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Mensaje{");
        sb.append("id=").append(id);
        sb.append(", mensajes=").append(mensajes);
        sb.append(", author=").append(author);
        sb.append(", fecha=").append(fecha);
        sb.append('}');
        return sb.toString();
    }
    
}
