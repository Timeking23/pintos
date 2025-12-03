#ifndef THREADS_FIXED_POINT_H
#define THREADS_FIXED_POINT_H

/* Fixed-point arithmetic for MLFQS scheduler.
   Uses 17.14 fixed-point format (17 bits before decimal, 14 bits after). */

#define FIXED_POINT_F 16384        /* 2^14 */
#define FIXED_POINT_P 17
#define FIXED_POINT_Q 14

/* Convert integer n to fixed point. */
#define INT_TO_FP(n) ((n) * FIXED_POINT_F)

/* Convert fixed point x to integer (rounding toward zero). */
#define FP_TO_INT(x) ((x) / FIXED_POINT_F)

/* Convert fixed point x to integer (rounding to nearest). */
#define FP_TO_NEAREST_INT(x) \
  (((x) >= 0) ? (((x) + FIXED_POINT_F / 2) / FIXED_POINT_F) \
              : (((x) - FIXED_POINT_F / 2) / FIXED_POINT_F))

/* Add two fixed-point numbers. */
#define FP_ADD(x, y) ((x) + (y))

/* Subtract fixed-point number y from x. */
#define FP_SUB(x, y) ((x) - (y))

/* Add integer n to fixed-point number x. */
#define FP_ADD_INT(x, n) ((x) + (n) * FIXED_POINT_F)

/* Subtract integer n from fixed-point number x. */
#define FP_SUB_INT(x, n) ((x) - (n) * FIXED_POINT_F)

/* Multiply two fixed-point numbers. */
#define FP_MUL(x, y) (((int64_t) (x)) * (y) / FIXED_POINT_F)

/* Multiply fixed-point number x by integer n. */
#define FP_MUL_INT(x, n) ((x) * (n))

/* Divide fixed-point number x by fixed-point number y. */
#define FP_DIV(x, y) (((int64_t) (x)) * FIXED_POINT_F / (y))

/* Divide fixed-point number x by integer n. */
#define FP_DIV_INT(x, n) ((x) / (n))

#endif /* threads/fixed-point.h */

