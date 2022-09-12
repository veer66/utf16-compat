;;;; utf16-compat.asd

(asdf:defsystem #:utf16-compat
  :description "UTF-16 compatible functions"
  :author "Vee Satayamas <vsatayamas@gmail.com>"
  :license  "GPL-3"
  :version "0.0.1"
  :serial t
  :depends-on (#:babel #:arrow-macros)
  :components ((:file "package")
               (:file "utf16-compat")))
