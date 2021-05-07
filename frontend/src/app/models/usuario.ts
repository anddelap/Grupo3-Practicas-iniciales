export class usuario {
    Usuario      :string
    Nombres   :string
    Apellidos   :string
	Nacimiento   :string
    Correo   :string
	Password :string
	Biografia:string
    Cuenta   :string
    constructor(_Usuario :string, _Nombres   :string, 
        _Apellidos   :string, _Nacimiento   :string, _Correo   :string, _Password :string, _Biografia:string, _Cuenta   :string){
        this.Usuario=_Usuario
        this.Nombres=_Nombres
        this.Apellidos=_Apellidos
        this.Correo=_Correo
        this.Password=_Password
        this.Nacimiento =_Nacimiento
        this.Biografia =_Biografia
        this.Cuenta =_Cuenta

    }
}
