/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author cetecom
 */
@Entity
@Table(name = "Direccion")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Direccion.findAll", query = "SELECT d FROM Direccion d")
    , @NamedQuery(name = "Direccion.findByDireccionID", query = "SELECT d FROM Direccion d WHERE d.direccionID = :direccionID")
    , @NamedQuery(name = "Direccion.findByCalle", query = "SELECT d FROM Direccion d WHERE d.calle = :calle")
    , @NamedQuery(name = "Direccion.findByComuna", query = "SELECT d FROM Direccion d WHERE d.comuna = :comuna")
    , @NamedQuery(name = "Direccion.findByNumero", query = "SELECT d FROM Direccion d WHERE d.numero = :numero")
    , @NamedQuery(name = "Direccion.findByNumeroDpto", query = "SELECT d FROM Direccion d WHERE d.numeroDpto = :numeroDpto")})
public class Direccion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "direccionID")
    private Integer direccionID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Calle")
    private String calle;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Comuna")
    private String comuna;
    @Basic(optional = false)
    @NotNull
    @Column(name = "numero")
    private int numero;
    @Column(name = "numeroDpto")
    private Integer numeroDpto;
    @JoinColumn(name = "Usuario_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Usuario usuarioid;

    public Direccion() {
    }

    public Direccion(Integer direccionID) {
        this.direccionID = direccionID;
    }

    public Direccion(Integer direccionID, String calle, String comuna, int numero) {
        this.direccionID = direccionID;
        this.calle = calle;
        this.comuna = comuna;
        this.numero = numero;
    }

    public Integer getDireccionID() {
        return direccionID;
    }

    public void setDireccionID(Integer direccionID) {
        this.direccionID = direccionID;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getComuna() {
        return comuna;
    }

    public void setComuna(String comuna) {
        this.comuna = comuna;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public Integer getNumeroDpto() {
        return numeroDpto;
    }

    public void setNumeroDpto(Integer numeroDpto) {
        this.numeroDpto = numeroDpto;
    }

    public Usuario getUsuarioid() {
        return usuarioid;
    }

    public void setUsuarioid(Usuario usuarioid) {
        this.usuarioid = usuarioid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (direccionID != null ? direccionID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Direccion)) {
            return false;
        }
        Direccion other = (Direccion) object;
        if ((this.direccionID == null && other.direccionID != null) || (this.direccionID != null && !this.direccionID.equals(other.direccionID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Direccion[ direccionID=" + direccionID + " ]";
    }
    
}
