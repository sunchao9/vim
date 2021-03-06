/* fileio.c */
int readfile(char_u *fname, char_u *sfname, linenr_T from, linenr_T lines_to_skip, linenr_T lines_to_read, exarg_T *eap, int flags);
int is_dev_fd_file(char_u *fname);
int prep_exarg(exarg_T *eap, buf_T *buf);
void set_file_options(int set_options, exarg_T *eap);
void set_forced_fenc(exarg_T *eap);
int check_file_readonly(char_u *fname, int perm);
int buf_write(buf_T *buf, char_u *fname, char_u *sfname, linenr_T start, linenr_T end, exarg_T *eap, int append, int forceit, int reset_changed, int filtering);
int vim_fsync(int fd);
void msg_add_fname(buf_T *buf, char_u *fname);
void msg_add_lines(int insert_space, long lnum, off_T nchars);
char_u *shorten_fname1(char_u *full_path);
char_u *shorten_fname(char_u *full_path, char_u *dir_name);
void shorten_buf_fname(buf_T *buf, char_u *dirname, int force);
void shorten_fnames(int force);
void shorten_filenames(char_u **fnames, int count);
char_u *modname(char_u *fname, char_u *ext, int prepend_dot);
char_u *buf_modname(int shortname, char_u *fname, char_u *ext, int prepend_dot);
int vim_fgets(char_u *buf, int size, FILE *fp);
int vim_rename(char_u *from, char_u *to);
int check_timestamps(int focus);
int buf_check_timestamp(buf_T *buf, int focus);
void buf_reload(buf_T *buf, int orig_mode);
void buf_store_time(buf_T *buf, stat_T *st, char_u *fname);
void write_lnum_adjust(linenr_T offset);
int readdir_core(garray_T *gap, char_u *path, void *context, int (*checkitem)(void *context, char_u *name));
int delete_recursive(char_u *name);
void vim_deltempdir(void);
char_u *vim_tempname(int extra_char, int keep);
void forward_slash(char_u *fname);
int match_file_pat(char_u *pattern, regprog_T **prog, char_u *fname, char_u *sfname, char_u *tail, int allow_dirs);
int match_file_list(char_u *list, char_u *sfname, char_u *ffname);
char_u *file_pat_to_reg_pat(char_u *pat, char_u *pat_end, char *allow_dirs, int no_bslash);
long read_eintr(int fd, void *buf, size_t bufsize);
long write_eintr(int fd, void *buf, size_t bufsize);
/* vim: set ft=c : */
