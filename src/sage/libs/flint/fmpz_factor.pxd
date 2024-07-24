# distutils: libraries = flint
# distutils: depends = flint/fmpz_factor.h

################################################################################
# This file is auto-generated by the script
#   SAGE_ROOT/src/sage_setup/autogen/flint_autogen.py.
# From the commit 3e2c3a3e091106a25ca9c6fba28e02f2cbcd654a
# Do not modify by hand! Fix and rerun the script instead.
################################################################################

from libc.stdio cimport FILE
from sage.libs.gmp.types cimport *
from sage.libs.mpfr.types cimport *
from sage.libs.flint.types cimport *

cdef extern from "flint_wrap.h":
    void fmpz_factor_init(fmpz_factor_t factor) noexcept
    void fmpz_factor_clear(fmpz_factor_t factor) noexcept
    void _fmpz_factor_append_ui(fmpz_factor_t factor, mp_limb_t p, ulong exp) noexcept
    void _fmpz_factor_append(fmpz_factor_t factor, const fmpz_t p, ulong exp) noexcept
    void fmpz_factor(fmpz_factor_t factor, const fmpz_t n) noexcept
    int fmpz_factor_smooth(fmpz_factor_t factor, const fmpz_t n, slong bits, int proved) noexcept
    void fmpz_factor_si(fmpz_factor_t factor, slong n) noexcept
    int fmpz_factor_trial_range(fmpz_factor_t factor, const fmpz_t n, ulong start, ulong num_primes) noexcept
    int fmpz_factor_trial(fmpz_factor_t factor, const fmpz_t n, slong num_primes) noexcept
    void fmpz_factor_refine(fmpz_factor_t res, const fmpz_factor_t f) noexcept
    void fmpz_factor_expand_iterative(fmpz_t n, const fmpz_factor_t factor) noexcept
    int fmpz_factor_pp1(fmpz_t factor, const fmpz_t n, ulong B1, ulong B2_sqrt, ulong c) noexcept
    int fmpz_factor_pollard_brent_single(fmpz_t p_factor, fmpz_t n_in, fmpz_t yi, fmpz_t ai, mp_limb_t max_iters) noexcept
    int fmpz_factor_pollard_brent(fmpz_t factor, flint_rand_t state, fmpz_t n, mp_limb_t max_tries, mp_limb_t max_iters) noexcept
    void fmpz_factor_ecm_init(ecm_t ecm_inf, mp_limb_t sz) noexcept
    void fmpz_factor_ecm_clear(ecm_t ecm_inf) noexcept
    void fmpz_factor_ecm_addmod(mp_ptr a, mp_ptr b, mp_ptr c, mp_ptr n, mp_limb_t n_size) noexcept
    void fmpz_factor_ecm_submod(mp_ptr x, mp_ptr a, mp_ptr b, mp_ptr n, mp_limb_t n_size) noexcept
    void fmpz_factor_ecm_double(mp_ptr x, mp_ptr z, mp_ptr x0, mp_ptr z0, mp_ptr n, ecm_t ecm_inf) noexcept
    void fmpz_factor_ecm_add(mp_ptr x, mp_ptr z, mp_ptr x1, mp_ptr z1, mp_ptr x2, mp_ptr z2, mp_ptr x0, mp_ptr z0, mp_ptr n, ecm_t ecm_inf) noexcept
    void fmpz_factor_ecm_mul_montgomery_ladder(mp_ptr x, mp_ptr z, mp_ptr x0, mp_ptr z0, mp_limb_t k, mp_ptr n, ecm_t ecm_inf) noexcept
    int fmpz_factor_ecm_select_curve(mp_ptr f, mp_ptr sigma, mp_ptr n, ecm_t ecm_inf) noexcept
    int fmpz_factor_ecm_stage_I(mp_ptr f, const mp_limb_t * prime_array, mp_limb_t num, mp_limb_t B1, mp_ptr n, ecm_t ecm_inf) noexcept
    int fmpz_factor_ecm_stage_II(mp_ptr f, mp_limb_t B1, mp_limb_t B2, mp_limb_t P, mp_ptr n, ecm_t ecm_inf) noexcept
    int fmpz_factor_ecm(fmpz_t f, mp_limb_t curves, mp_limb_t B1, mp_limb_t B2, flint_rand_t state, const fmpz_t n_in) noexcept