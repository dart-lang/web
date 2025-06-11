sealed class Config {
  factory Config.idl() = IDLConfig;
  factory Config.decl() = DeclarationConfig;
}

class IDLConfig extends Config {

}

class DeclarationConfig extends Config {
  
}