package jsInclude;


class Main {
  static function main() {
    MyJsLib.f("Call f using extern class.");
  }

  private static function __init__() {
#if embed_js
    untyped __js__(";");
    haxe.macro.Compiler.includeFile("jsInclude/test.js");
#end
  }
}