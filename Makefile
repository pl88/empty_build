#Set this to @ to keep the makefile quiet$
ifndef SILENCE
	SILENCE = @
endif
#---- Outputs ----#
COMPONENT_NAME = empty_project
TARGET_LIB = \
	lib/lib$(COMPONENT_NAME).a
	
TEST_TARGET = \
	$(COMPONENT_NAME)_tests

#--- Inputs ----#
PROJECT_HOME_DIR = .
CPP_PLATFORM = Gcc

CPPUTEST_USE_EXTENSIONS = Y
CPPUTEST_WARNINGFLAGS += -Wall 
CPPUTEST_WARNINGFLAGS += -Werror 
CPPUTEST_WARNINGFLAGS += -Wswitch-default 
CPPUTEST_WARNINGFLAGS += -Wswitch-enum  
CPPUTEST_WARNINGFLAGS += -Wno-self-assign
CPPUTEST_CFLAGS += -std=c++11
CPPUTEST_CFLAGS += -Wextra 
CPPUTEST_CFLAGS += -pedantic 
CPPUTEST_CFLAGS += -Wstrict-prototypes

SRC_DIRS = \
	src/\

TEST_SRC_DIRS = \
	tests \
	mocks
	
INCLUDE_DIRS =\
  $(CPPUTEST_HOME)/include/\
  interface\
  mocks

ifeq ($(CPPUTEST_HOME),)
$(info CPPUTEST_HOME not set! See README.txt)
else  
include $(CPPUTEST_HOME)/build/MakefileWorker.mk
endif
