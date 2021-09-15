package com.api.ben;

public class Json {

private Venta venta;
private DetallesVenta detallesventa;
private Ticket ticket;

    public Venta getVenta(){
        return venta;
    }

    public void setVenta (Venta venta){
        this.venta = venta;
    }
    public DetallesVenta getDetallesventa() {
        return detallesventa;
    }

    public void setDetallesventa(DetallesVenta detallesventa) {
        this.detallesventa = detallesventa;
    }

    public Ticket getTicket() {
        return ticket;
    }

    public void setTicket(Ticket ticket) {
        this.ticket = ticket;
    }

}
