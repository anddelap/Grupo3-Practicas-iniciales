export default class DatoJuego {
    constructor(nomb, descrip, linkC, anio, idCons) {
      this.nomb = nomb;
      this.descrip = descrip;
      this.linkC = linkC;
      this.anio = anio;
      this.idCons = idCons;
      
    }
    //por si se necesitan los objetos en formato de diccionario
    formarDiccionario () {
        var diccionarioo = {
            nombre : this.nomb,
            descripcion: this.descrip,
            cartucho: this.linkC,
            fecha: this.anio,
            consola: this.idCons
        }
        
        return diccio;
      }

      getNombre() {
        return this.nomb;
      }

      getDescripcion() {
        return this.descrip;
      }

      getCartucho() {
        return this.linkC;
      }

      getFecha() {
        return this.anio;
      }

      getConsola() {
        return this.idCons;
      }
  }

