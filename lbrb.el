;;; lbrb.el --- Left Brain Righ Brain

;; Copyright (C) 2017 Chris Barrett

;; Author: Alex Scott <alex@alexscott.net>
;; Package-Requires: ((emacs "24.1"))
;; Version: 0.1.1

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; LBRB code.

;; Org clock customizations

;;; Code:

(require 'org)

(defvar ais/organization-task-id "EDD667DE-FE29-4AF9-9DB0-F5D26AA9F13C")

(defun ais/clock-in-organization-task-as-default ()
  "Document me, please."

  (interactive)
  (org-with-point-at (org-id-find ais/organization-task-id 'marker)
    (org-clock-in '(16))))

(run-with-idle-timer 5 nil 'ais/clock-in-organization-task-as-default)

(provide 'lbrb)

;;; lbrb.el ends here
