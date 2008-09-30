(library (spells time-lib compat)
  (export
    host:time-resolution
    host:current-time 
    host:time-nanosecond 
    host:time-second 
    host:time-gmt-offset)
  (import
    (rnrs base)
    (prefix (only (ikarus) current-time time-nanosecond time-second time-gmt-offset) 
            host:))

  ;; Ikarus uses gettimeofday() which gives microseconds,
  ;; so our resolution is 1000 nanoseconds
  (define host:time-resolution 1000)
)