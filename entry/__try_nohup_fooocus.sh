source ./__export_global_cfg.sh \
	&& eval "$(conda shell.bash hook)" \
	&& conda activate $CONDA_ENV \
	&& nohup bash $LAST_BOOTSTRAP > log/stdout_`date +%s`.log 2> log/stderr_`date +%s`.log
