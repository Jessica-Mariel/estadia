package com.api.ben;

import java.sql.Time;
import java.util.Date;

public class DetallesVenta {
    private int IIDetalle;
    private Date Fecha;
    private String Lugar;
    private Time Hora;

    public int getIIDetalle() {
        return IIDetalle;
    }

    public void setIIDetalle(int IIDetalle) {
        this.IIDetalle = IIDetalle;
    }

    public Date getFecha() {
        return Fecha;
    }

    public void setFecha(Date Fecha) {
        this.Fecha = Fecha;
    }

    public String getLugar() {
        return Lugar;
    }

    public void setLugar(String Lugar) {
        this.Lugar = Lugar;
    }

    public Time getHora() {
        return Hora;
    }

    public void setHora(Time Hora) {
        this.Hora = Hora;
    }
}
