(* Custom option to avoid univer inconsistency. *)
Inductive option (A:Type) : Type :=
  | Some : A -> option A
  | None : option A.

Arguments Some {A} a.
Arguments None {A}.

Definition option_map (A B:Type) (f:A->B) (o : option A) : option B :=
  match o with
    | Some a => @Some B (f a)
    | None => @None B
  end.
