package prop;

import prop.User;

class Main {
  @:isVar var xyz(get, set): String;

  function get_xyz() { return xyz; }
  function set_xyz(s: String) { return this.xyz = s; }

  function new() {}

  static function main () {
    var m = new Main();
    m.xyz = "hohoho";
    trace(m.xyz);

    var u = new User();
    u.onUpdated(function (u) {
        trace('User updated: $u');
      });
    u.passwordHash = '123';
  }
}