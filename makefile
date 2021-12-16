
srcs := $(shell find -name "*.cpp")
objs := $(srcs :.cpp=.o)
objs := $(objs :src/%=objs/%)

include_paths = /home/nephilim/czj-ws/makefile_learn/makefile_download_project/lean/openssl-1.1.1j/include \ 
				/home/nephilim/czj-ws/makefile_learn/makefile_download_project/lean/curl-7.78.0/include

library_paths = /home/nephilim/czj-ws/makefile_learn/makefile_download_project/lean/openssl-1.1.1j/lib \ 
				/home/nephilim/czj-ws/makefile_learn/makefile_download_project/lean/curl-7.78.0/lib

ld_librarys = curl ssl crypto

# 头文件路径前面加-I，库文件路径前面加-L，链接前面加-l
include_paths := $(include_paths:%=-I%)
library_paths := $(library_paths:%=-L%)
ld_librarys := $(ld_librarys:%=-l%)

compile_flags := -std=c++11 -w -g -O0 $(include_paths)
link_flags := $(library_paths) $(ld_librarys)


