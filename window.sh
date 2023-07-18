#!/bin/bash

tmux \
new-session \
'task ; fish'\; \
split-window -v \
'bashtop'\; \
select-pane -t 0 \; \
split-window -h \
'tty-clock -sct'\; \
split-window -h \
'calcurse'\; \
select-pane -t 0 \; \
resize-pane -L 35 \; \
select-pane -t 1 \; \
resize-pane -L 20 \; \
split-window -v \
'vis'\; \
select-pane -t 4 \; \
split-window -h \
'cmus'\; \
