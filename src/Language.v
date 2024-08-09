Set Implicit Arguments.

Module Language.
  Section Language.
    Variable E: Type.

    Record t := mk {
      syntax: Type;
      state: Type;

      init: syntax -> state;
      is_terminal: state -> Prop;
      step: forall (e:E) (s1:state) (s2:state), Prop;
    }.
  End Language.
End Language.
