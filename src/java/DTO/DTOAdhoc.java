
package DTO;


public class DTOAdhoc 
{
    private String tituloTicket;
    private String linkTicket;
    private String estado;
    private String estadoAdhoc;

    public DTOAdhoc(String tituloTicket, String linkTicket, String estado, String estadoAdhoc) {
        this.tituloTicket = tituloTicket;
        this.linkTicket = linkTicket;
        this.estado = estado;
        this.estadoAdhoc = estadoAdhoc;
    }

    public String getTituloTicket() {
        return tituloTicket;
    }

    public void setTituloTicket(String tituloTicket) {
        this.tituloTicket = tituloTicket;
    }

    public String getLinkTicket() {
        return linkTicket;
    }

    public void setLinkTicket(String linkTicket) {
        this.linkTicket = linkTicket;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getEstadoAdhoc() {
        return estadoAdhoc;
    }

    public void setEstadoAdhoc(String estadoAdhoc) {
        this.estadoAdhoc = estadoAdhoc;
    }
    
    
    
}
