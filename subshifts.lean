import data.real.basic
import data.matrix.basic
import topology.basic

noncomputable theory

universes u
/-variables {I : Type} [fintype I]-/
/-variables {A : matrix I I ℤ}-/

namespace subshifts

def trans_mat {I : Type} [fintype I] (A : matrix I I ℤ) := 
  ∀ i : I, ∀ j : I, (A i j = 0) ∨ (A i j = 1)
  ∧ ∀ i : I, ∃ j : I, A i j = 1
  ∧ ∀ j : I, ∃ i : I, A i j = 1

def irred_trans_mat {I : Type} [fintype I] (A : matrix I I ℤ) := 
  trans_mat A 
  ∧ ∀ i : I, ∀ j : I, ∃ n ≥ 0, (A^n) i j ≥ 1

def prim_trans_mat {I : Type} [fintype I] (A : matrix I I ℤ) := 
  trans_mat A 
  ∧ ∃ n ≥ 0, ∀ i : I, ∀ j : I, (A^n) i j ≥ 1


#check trans_mat

/-structure top_dyn_sys (X : matrix I I ℤ) (d)-/


end subshifts
