#########################
#
# Simple GNU Makefile
# 2016/12/26
#
#########################

src_objs := os_cfg_app.c.obj os_core.c.obj os_dbg.c.obj os_flag.c.obj \
	os_int.c.obj os_mem.c.obj os_msg.c.obj os_mutex.c.obj os_pend_multi.c.obj \
	os_prio.c.obj os_q.c.obj os_sem.c.obj os_stat.c.obj os_task.c.obj \
	os_tick.c.obj os_time.c.obj os_tmr.c.obj os_var.c.obj

.PHONY : all
.PHONY : clean
all : $(src_objs)

%.c.obj : %.c
	arm-none-eabi-gcc $(include_dirs) $(CFLAGS_O3) -c -o $@ $^

clean :
	rm -f *.obj

