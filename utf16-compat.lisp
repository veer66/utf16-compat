;;;; utf16-compat.lisp

(in-package #:utf16-compat)

(defun utf16-len (str)
  (/ (length (string-to-octets str :encoding :UTF-16BE))
     2))

(defun utf16-substr (str s &optional e)
  (let ((e (if (null e)
	       (utf16-len str)
	       e)))
    (-<> str
      (string-to-octets <> :encoding :UTF-16BE)
      (subseq <> (* s 2) (* e 2))
      (octets-to-string <> :encoding :UTF-16BE))))
