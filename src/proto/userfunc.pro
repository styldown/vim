/* userfunc.c */
void func_init(void);
hashtab_T *func_tbl_get(void);
char_u *get_lambda_name(void);
char_u *register_cfunc(cfunc_T cb, cfunc_free_T cb_free, void *state);
int get_lambda_tv(char_u **arg, typval_T *rettv, int types_optional, evalarg_T *evalarg);
char_u *deref_func_name(char_u *name, int *lenp, partial_T **partialp, type_T **type, int no_autoload);
void emsg_funcname(char *ermsg, char_u *name);
int get_func_tv(char_u *name, int len, typval_T *rettv, char_u **arg, evalarg_T *evalarg, funcexe_T *funcexe);
char_u *fname_trans_sid(char_u *name, char_u *fname_buf, char_u **tofree, int *error);
ufunc_T *find_func_even_dead(char_u *name, int is_global, cctx_T *cctx);
ufunc_T *find_func(char_u *name, int is_global, cctx_T *cctx);
int func_is_global(ufunc_T *ufunc);
int func_name_refcount(char_u *name);
int copy_func(char_u *lambda, char_u *global, ectx_T *ectx);
int funcdepth_increment(void);
void funcdepth_decrement(void);
int funcdepth_get(void);
void funcdepth_restore(int depth);
int check_user_func_argcount(ufunc_T *fp, int argcount);
int call_user_func_check(ufunc_T *fp, int argcount, typval_T *argvars, typval_T *rettv, funcexe_T *funcexe, dict_T *selfdict);
void save_funccal(funccal_entry_T *entry);
void restore_funccal(void);
funccall_T *get_current_funccal(void);
void delete_script_functions(int sid);
void free_all_functions(void);
int builtin_function(char_u *name, int len);
int func_call(char_u *name, typval_T *args, partial_T *partial, dict_T *selfdict, typval_T *rettv);
int get_callback_depth(void);
int call_callback(callback_T *callback, int len, typval_T *rettv, int argcount, typval_T *argvars);
void user_func_error(int error, char_u *name);
int call_func(char_u *funcname, int len, typval_T *rettv, int argcount_in, typval_T *argvars_in, funcexe_T *funcexe);
char_u *printable_func_name(ufunc_T *fp);
char_u *trans_function_name(char_u **pp, int *is_global, int skip, int flags, funcdict_T *fdp, partial_T **partial, type_T **type);
char_u *untrans_function_name(char_u *name);
char_u *save_function_name(char_u **name, int *is_global, int skip, int flags, funcdict_T *fudi);
void list_functions(regmatch_T *regmatch);
ufunc_T *define_function(exarg_T *eap, char_u *name_arg);
void ex_function(exarg_T *eap);
void ex_defcompile(exarg_T *eap);
int eval_fname_script(char_u *p);
int translated_function_exists(char_u *name, int is_global);
int has_varargs(ufunc_T *ufunc);
int function_exists(char_u *name, int no_deref);
char_u *get_expanded_name(char_u *name, int check);
char_u *get_user_func_name(expand_T *xp, int idx);
void ex_delfunction(exarg_T *eap);
void func_unref(char_u *name);
void func_ptr_unref(ufunc_T *fp);
void func_ref(char_u *name);
void func_ptr_ref(ufunc_T *fp);
void ex_return(exarg_T *eap);
void ex_call(exarg_T *eap);
int do_return(exarg_T *eap, int reanimate, int is_cmd, void *rettv);
void discard_pending_return(void *rettv);
char_u *get_return_cmd(void *rettv);
char_u *get_func_line(int c, void *cookie, int indent, getline_opt_T options);
int func_has_ended(void *cookie);
int func_has_abort(void *cookie);
dict_T *make_partial(dict_T *selfdict_in, typval_T *rettv);
char_u *func_name(void *cookie);
linenr_T *func_breakpoint(void *cookie);
int *func_dbg_tick(void *cookie);
int func_level(void *cookie);
int current_func_returned(void);
int free_unref_funccal(int copyID, int testing);
hashtab_T *get_funccal_local_ht(void);
dictitem_T *get_funccal_local_var(void);
hashtab_T *get_funccal_args_ht(void);
dictitem_T *get_funccal_args_var(void);
void list_func_vars(int *first);
dict_T *get_current_funccal_dict(hashtab_T *ht);
hashitem_T *find_hi_in_scoped_ht(char_u *name, hashtab_T **pht);
dictitem_T *find_var_in_scoped_ht(char_u *name, int no_autoload);
int set_ref_in_previous_funccal(int copyID);
int set_ref_in_call_stack(int copyID);
int set_ref_in_functions(int copyID);
int set_ref_in_func_args(int copyID);
int set_ref_in_func(char_u *name, ufunc_T *fp_in, int copyID);
/* vim: set ft=c : */
