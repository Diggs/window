# Makefile generated by gb: http://go-gb.googlecode.com
# gb provides configuration-free building and distributing

include $(GOROOT)/src/Make.inc

TARG=window
GOFILES=\
	window.go\

# gb: this is the local install
GBROOT=.

# gb: compile/link against local install
GCIMPORTS+= -I $(GBROOT)/_obj
LDIMPORTS+= -L $(GBROOT)/_obj
# gb: compile/link against GOPATH entries
GOPATHSEP=:
ifeq ($(GOHOSTOS),windows)
GOPATHSEP=;
endif
GCIMPORTS=-I $(subst $(GOPATHSEP),/pkg/$(GOOS)_$(GOARCH) -I , $(GOPATH))/pkg/$(GOOS)_$(GOARCH)
LDIMPORTS=-L $(subst $(GOPATHSEP),/pkg/$(GOOS)_$(GOARCH) -L , $(GOPATH))/pkg/$(GOOS)_$(GOARCH)

package: $(GBROOT)/_obj/$(TARG).a

include $(GOROOT)/src/Make.pkg
