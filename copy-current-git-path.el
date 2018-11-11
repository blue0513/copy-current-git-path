;;; copy-current-git-path --- Copy relative current path from Git dir to clipboard

;;; Commentary:

;; Load this script
;;
;;   (require 'copy-current-git-path)
;;
;; Execute the command under the git controlled project
;;
;;   `M-x copy-current-git-path`

;;; Code:

(defun get-git-filepath ()
  "Get relative current path from git dir."
  (let* ((path buffer-file-name)
	 (root (file-truename (vc-git-root path))))
    (let ((filepath-from-git-root (file-relative-name path root)))
      (message filepath-from-git-root))))

(defun copy-current-git-path ()
  "Copy relative current path from git dir to clipboard."
  (interactive)
  (let ((path (get-git-filepath)))
    (when path
      (message "copied path: %s" path)
      (kill-new  path))))

;; * provide

(provide 'faker)

;;; copy-current-git-path.el ends here
