ifeq "$(COQBIN)" ""
  COQBIN=$(dir $(shell which coqtop))/
endif

default_target: Makefile.coq
	+make -f Makefile.coq all

%: Makefile.coq
	+make -f Makefile.coq $@

Makefile.coq: _CoqProject
	$(COQBIN)coq_makefile -f _CoqProject -o Makefile.coq

_CoqProject: ;

clean: Makefile.coq
	+make -f Makefile.coq clean
	rm -f Makefile.coq Makefile.coq.conf .merlin

.PHONY: default_target tests clean
