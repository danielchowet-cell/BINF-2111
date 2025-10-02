#!/usr/bin/env bash
# Print each amino acid and its character length

amino_acids=(Methionine Leucine Cysteine Alanine Valine Tyrosine Proline)

for aa in "${amino_acids[@]}"; do
  echo "$aa : ${#aa}"
done
