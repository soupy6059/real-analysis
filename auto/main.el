;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("my_preamble" "")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "my_preamble")
   (LaTeX-add-labels
    "defn:inj"
    "defn:surj"
    "defn:bij"
    "axim:choice"
    "thm:CSB"
    "lem:phi_fixed_pt"
    "prop:aleph_null_small"
    "prop:uncountable_reals"
    "defn:continuum"
    "axim:continuum_hypth"
    "defn:cartesian_product"
    "defn:set_power"
    "prop:card_of_powerset"
    "prop:powerset_big"
    "note:infinite_infinities"
    "prop:abs_pp_n_is_abs_r"
    "defn:metric_space"
    "defn:nvs"
    "prop:nvs_have_trivial_metrics"
    "exam:discrete_metric"
    "exam:absolute_value_norm"
    "exam:euclidean_norm"
    "exam:p_norm"
    "exam:infinity_norm"
    "exam:p_norm_on_sequences_of_reals"
    "exam:suprema_norm"
    "exam:p_norm_on_functions"
    "exam:infinity_norm_on_functions"
    "exam:bounded_functions_and_the_infinity_norm_are_a_nvs"
    "exam:cantor_space"
    "exam:hamming_distace"
    "defn:subspace_of_a_metric_space"
    "exam:product_metric"
    "defn:convergence_of_a_sequence"
    "defn:divergence"
    "defn:bounded"
    "defn:open_clsd_balls"
    "prop:bounded_iff_subset_of_closed_ball"
    "prop:cauchy_implies_bounded"
    "defn:complete_complete_metric_banach"
    "coro:closed_sets_attain_sequence_limits"))
 :latex)

