package prop;

class Model {
  
}

class User extends Model {
  public function new() {
    this._updated = [];
  }

  var _updated: Array<User -> Void>;
  public function onUpdated(f: User -> Void) {
    _updated.push(f);
  }

  @:isVar var email(default, default): String;
  @:isVar var name(default, default): String;

  @:isVar public var passwordHash(default, set): String;
  function set_passwordHash(s: String) {
    // invoke update callback
    this.passwordHash = s;
    for (f in _updated) {
      f(this);
    }
    return s;
  }

}
