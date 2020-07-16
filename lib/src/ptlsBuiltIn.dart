
import "location.dart";
import "ptlsLabel.dart";
import "ptlsValue.dart";

// ---------------------------------------------------------------------------

class PtlsBuiltIn extends PtlsValue {
  String signature;
  Function handler;

  // -------------------------------------------------------------------------
  
  PtlsBuiltIn(this.signature, this.handler);  

  // -------------------------------------------------------------------------

  PtlsValue getField(String name, Location loc) {
    switch (name) {
      case "!getType":
        return PtlsLabel("PtlsBuiltIn");

      default: super.getField(name, loc); // throws error
    }

    throw false; // should never get here
  }

  // -------------------------------------------------------------------------

  String toString() => "PtlsBuiltIn($signature)";
}
