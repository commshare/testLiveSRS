GCC = gcc
CXX = g++
AR = ar
LINK = g++
CXXFLAGS = -ansi -Wall -g -O0 -fPIC

.PHONY: default srs librtmp

default:

#####################################################################################
# the CORE module.
#####################################################################################

# INCS for CORE, headers of module and its depends to compile
CORE_MODULE_INCS = -Isrc/core 
CORE_INCS = -Isrc/core -Iobjs 

# DEPS for CORE, the depends of make schema
CORE_DEPS =  src/core/srs_core.hpp src/core/srs_core_autofree.hpp

# OBJ for CORE, each object file
objs/src/core/srs_core.o: $(CORE_DEPS) src/core/srs_core.cpp 
	$(CXX) -c $(CXXFLAGS) $(CORE_INCS)\
          -o objs/src/core/srs_core.o src/core/srs_core.cpp
objs/src/core/srs_core_autofree.o: $(CORE_DEPS) src/core/srs_core_autofree.cpp 
	$(CXX) -c $(CXXFLAGS) $(CORE_INCS)\
          -o objs/src/core/srs_core_autofree.o src/core/srs_core_autofree.cpp

#####################################################################################
# the KERNEL module.
#####################################################################################

# INCS for KERNEL, headers of module and its depends to compile
KERNEL_MODULE_INCS = -Isrc/kernel 
KERNEL_INCS = -Isrc/kernel $(CORE_MODULE_INCS) -Iobjs 

# DEPS for KERNEL, the depends of make schema
KERNEL_DEPS =  src/kernel/srs_kernel_error.hpp src/kernel/srs_kernel_log.hpp src/kernel/srs_kernel_stream.hpp src/kernel/srs_kernel_buffer.hpp src/kernel/srs_kernel_utility.hpp src/kernel/srs_kernel_flv.hpp src/kernel/srs_kernel_codec.hpp src/kernel/srs_kernel_file.hpp src/kernel/srs_kernel_consts.hpp $(CORE_DEPS) 

# OBJ for KERNEL, each object file
objs/src/kernel/srs_kernel_error.o: $(KERNEL_DEPS) src/kernel/srs_kernel_error.cpp 
	$(CXX) -c $(CXXFLAGS) $(KERNEL_INCS)\
          -o objs/src/kernel/srs_kernel_error.o src/kernel/srs_kernel_error.cpp
objs/src/kernel/srs_kernel_log.o: $(KERNEL_DEPS) src/kernel/srs_kernel_log.cpp 
	$(CXX) -c $(CXXFLAGS) $(KERNEL_INCS)\
          -o objs/src/kernel/srs_kernel_log.o src/kernel/srs_kernel_log.cpp
objs/src/kernel/srs_kernel_stream.o: $(KERNEL_DEPS) src/kernel/srs_kernel_stream.cpp 
	$(CXX) -c $(CXXFLAGS) $(KERNEL_INCS)\
          -o objs/src/kernel/srs_kernel_stream.o src/kernel/srs_kernel_stream.cpp
objs/src/kernel/srs_kernel_buffer.o: $(KERNEL_DEPS) src/kernel/srs_kernel_buffer.cpp 
	$(CXX) -c $(CXXFLAGS) $(KERNEL_INCS)\
          -o objs/src/kernel/srs_kernel_buffer.o src/kernel/srs_kernel_buffer.cpp
objs/src/kernel/srs_kernel_utility.o: $(KERNEL_DEPS) src/kernel/srs_kernel_utility.cpp 
	$(CXX) -c $(CXXFLAGS) $(KERNEL_INCS)\
          -o objs/src/kernel/srs_kernel_utility.o src/kernel/srs_kernel_utility.cpp
objs/src/kernel/srs_kernel_flv.o: $(KERNEL_DEPS) src/kernel/srs_kernel_flv.cpp 
	$(CXX) -c $(CXXFLAGS) $(KERNEL_INCS)\
          -o objs/src/kernel/srs_kernel_flv.o src/kernel/srs_kernel_flv.cpp
objs/src/kernel/srs_kernel_codec.o: $(KERNEL_DEPS) src/kernel/srs_kernel_codec.cpp 
	$(CXX) -c $(CXXFLAGS) $(KERNEL_INCS)\
          -o objs/src/kernel/srs_kernel_codec.o src/kernel/srs_kernel_codec.cpp
objs/src/kernel/srs_kernel_file.o: $(KERNEL_DEPS) src/kernel/srs_kernel_file.cpp 
	$(CXX) -c $(CXXFLAGS) $(KERNEL_INCS)\
          -o objs/src/kernel/srs_kernel_file.o src/kernel/srs_kernel_file.cpp
objs/src/kernel/srs_kernel_consts.o: $(KERNEL_DEPS) src/kernel/srs_kernel_consts.cpp 
	$(CXX) -c $(CXXFLAGS) $(KERNEL_INCS)\
          -o objs/src/kernel/srs_kernel_consts.o src/kernel/srs_kernel_consts.cpp

#####################################################################################
# the RTMP module.
#####################################################################################

# INCS for RTMP, headers of module and its depends to compile
RTMP_MODULE_INCS = -Isrc/rtmp 
RTMP_INCS = -Isrc/rtmp $(CORE_MODULE_INCS) $(KERNEL_MODULE_INCS) -Iobjs -Iobjs/openssl/include 

# DEPS for RTMP, the depends of make schema
RTMP_DEPS =  src/rtmp/srs_protocol_amf0.hpp src/rtmp/srs_protocol_io.hpp src/rtmp/srs_protocol_stack.hpp src/rtmp/srs_protocol_rtmp.hpp src/rtmp/srs_protocol_handshake.hpp src/rtmp/srs_protocol_utility.hpp src/rtmp/srs_protocol_msg_array.hpp $(CORE_DEPS)  $(KERNEL_DEPS) 

# OBJ for RTMP, each object file
objs/src/rtmp/srs_protocol_amf0.o: $(RTMP_DEPS) src/rtmp/srs_protocol_amf0.cpp 
	$(CXX) -c $(CXXFLAGS) $(RTMP_INCS)\
          -o objs/src/rtmp/srs_protocol_amf0.o src/rtmp/srs_protocol_amf0.cpp
objs/src/rtmp/srs_protocol_io.o: $(RTMP_DEPS) src/rtmp/srs_protocol_io.cpp 
	$(CXX) -c $(CXXFLAGS) $(RTMP_INCS)\
          -o objs/src/rtmp/srs_protocol_io.o src/rtmp/srs_protocol_io.cpp
objs/src/rtmp/srs_protocol_stack.o: $(RTMP_DEPS) src/rtmp/srs_protocol_stack.cpp 
	$(CXX) -c $(CXXFLAGS) $(RTMP_INCS)\
          -o objs/src/rtmp/srs_protocol_stack.o src/rtmp/srs_protocol_stack.cpp
objs/src/rtmp/srs_protocol_rtmp.o: $(RTMP_DEPS) src/rtmp/srs_protocol_rtmp.cpp 
	$(CXX) -c $(CXXFLAGS) $(RTMP_INCS)\
          -o objs/src/rtmp/srs_protocol_rtmp.o src/rtmp/srs_protocol_rtmp.cpp
objs/src/rtmp/srs_protocol_handshake.o: $(RTMP_DEPS) src/rtmp/srs_protocol_handshake.cpp 
	$(CXX) -c $(CXXFLAGS) $(RTMP_INCS)\
          -o objs/src/rtmp/srs_protocol_handshake.o src/rtmp/srs_protocol_handshake.cpp
objs/src/rtmp/srs_protocol_utility.o: $(RTMP_DEPS) src/rtmp/srs_protocol_utility.cpp 
	$(CXX) -c $(CXXFLAGS) $(RTMP_INCS)\
          -o objs/src/rtmp/srs_protocol_utility.o src/rtmp/srs_protocol_utility.cpp
objs/src/rtmp/srs_protocol_msg_array.o: $(RTMP_DEPS) src/rtmp/srs_protocol_msg_array.cpp 
	$(CXX) -c $(CXXFLAGS) $(RTMP_INCS)\
          -o objs/src/rtmp/srs_protocol_msg_array.o src/rtmp/srs_protocol_msg_array.cpp

#####################################################################################
# the APP module.
#####################################################################################

# INCS for APP, headers of module and its depends to compile
APP_MODULE_INCS = -Isrc/app 
APP_INCS = -Isrc/app $(CORE_MODULE_INCS) $(KERNEL_MODULE_INCS) $(RTMP_MODULE_INCS) -Iobjs/st -Iobjs/hp -Iobjs 

# DEPS for APP, the depends of make schema
APP_DEPS =  src/app/srs_app_server.hpp src/app/srs_app_conn.hpp src/app/srs_app_rtmp_conn.hpp src/app/srs_app_st_socket.hpp src/app/srs_app_source.hpp src/app/srs_app_refer.hpp src/app/srs_app_hls.hpp src/app/srs_app_forward.hpp src/app/srs_app_encoder.hpp src/app/srs_app_http.hpp src/app/srs_app_thread.hpp src/app/srs_app_bandwidth.hpp src/app/srs_app_st.hpp src/app/srs_app_log.hpp src/app/srs_app_config.hpp src/app/srs_app_pithy_print.hpp src/app/srs_app_reload.hpp src/app/srs_app_http_api.hpp src/app/srs_app_http_conn.hpp src/app/srs_app_http_hooks.hpp src/app/srs_app_json.hpp src/app/srs_app_ingest.hpp src/app/srs_app_ffmpeg.hpp src/app/srs_app_utility.hpp src/app/srs_app_dvr.hpp src/app/srs_app_edge.hpp src/app/srs_app_kbps.hpp src/app/srs_app_heartbeat.hpp src/app/srs_app_empty.hpp src/app/srs_app_http_client.hpp src/app/srs_app_avc_aac.hpp $(CORE_DEPS)  $(KERNEL_DEPS)  $(RTMP_DEPS) 

# OBJ for APP, each object file
objs/src/app/srs_app_server.o: $(APP_DEPS) src/app/srs_app_server.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_server.o src/app/srs_app_server.cpp
objs/src/app/srs_app_conn.o: $(APP_DEPS) src/app/srs_app_conn.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_conn.o src/app/srs_app_conn.cpp
objs/src/app/srs_app_rtmp_conn.o: $(APP_DEPS) src/app/srs_app_rtmp_conn.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_rtmp_conn.o src/app/srs_app_rtmp_conn.cpp
objs/src/app/srs_app_st_socket.o: $(APP_DEPS) src/app/srs_app_st_socket.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_st_socket.o src/app/srs_app_st_socket.cpp
objs/src/app/srs_app_source.o: $(APP_DEPS) src/app/srs_app_source.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_source.o src/app/srs_app_source.cpp
objs/src/app/srs_app_refer.o: $(APP_DEPS) src/app/srs_app_refer.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_refer.o src/app/srs_app_refer.cpp
objs/src/app/srs_app_hls.o: $(APP_DEPS) src/app/srs_app_hls.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_hls.o src/app/srs_app_hls.cpp
objs/src/app/srs_app_forward.o: $(APP_DEPS) src/app/srs_app_forward.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_forward.o src/app/srs_app_forward.cpp
objs/src/app/srs_app_encoder.o: $(APP_DEPS) src/app/srs_app_encoder.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_encoder.o src/app/srs_app_encoder.cpp
objs/src/app/srs_app_http.o: $(APP_DEPS) src/app/srs_app_http.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_http.o src/app/srs_app_http.cpp
objs/src/app/srs_app_thread.o: $(APP_DEPS) src/app/srs_app_thread.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_thread.o src/app/srs_app_thread.cpp
objs/src/app/srs_app_bandwidth.o: $(APP_DEPS) src/app/srs_app_bandwidth.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_bandwidth.o src/app/srs_app_bandwidth.cpp
objs/src/app/srs_app_st.o: $(APP_DEPS) src/app/srs_app_st.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_st.o src/app/srs_app_st.cpp
objs/src/app/srs_app_log.o: $(APP_DEPS) src/app/srs_app_log.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_log.o src/app/srs_app_log.cpp
objs/src/app/srs_app_config.o: $(APP_DEPS) src/app/srs_app_config.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_config.o src/app/srs_app_config.cpp
objs/src/app/srs_app_pithy_print.o: $(APP_DEPS) src/app/srs_app_pithy_print.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_pithy_print.o src/app/srs_app_pithy_print.cpp
objs/src/app/srs_app_reload.o: $(APP_DEPS) src/app/srs_app_reload.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_reload.o src/app/srs_app_reload.cpp
objs/src/app/srs_app_http_api.o: $(APP_DEPS) src/app/srs_app_http_api.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_http_api.o src/app/srs_app_http_api.cpp
objs/src/app/srs_app_http_conn.o: $(APP_DEPS) src/app/srs_app_http_conn.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_http_conn.o src/app/srs_app_http_conn.cpp
objs/src/app/srs_app_http_hooks.o: $(APP_DEPS) src/app/srs_app_http_hooks.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_http_hooks.o src/app/srs_app_http_hooks.cpp
objs/src/app/srs_app_json.o: $(APP_DEPS) src/app/srs_app_json.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_json.o src/app/srs_app_json.cpp
objs/src/app/srs_app_ingest.o: $(APP_DEPS) src/app/srs_app_ingest.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_ingest.o src/app/srs_app_ingest.cpp
objs/src/app/srs_app_ffmpeg.o: $(APP_DEPS) src/app/srs_app_ffmpeg.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_ffmpeg.o src/app/srs_app_ffmpeg.cpp
objs/src/app/srs_app_utility.o: $(APP_DEPS) src/app/srs_app_utility.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_utility.o src/app/srs_app_utility.cpp
objs/src/app/srs_app_dvr.o: $(APP_DEPS) src/app/srs_app_dvr.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_dvr.o src/app/srs_app_dvr.cpp
objs/src/app/srs_app_edge.o: $(APP_DEPS) src/app/srs_app_edge.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_edge.o src/app/srs_app_edge.cpp
objs/src/app/srs_app_kbps.o: $(APP_DEPS) src/app/srs_app_kbps.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_kbps.o src/app/srs_app_kbps.cpp
objs/src/app/srs_app_heartbeat.o: $(APP_DEPS) src/app/srs_app_heartbeat.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_heartbeat.o src/app/srs_app_heartbeat.cpp
objs/src/app/srs_app_empty.o: $(APP_DEPS) src/app/srs_app_empty.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_empty.o src/app/srs_app_empty.cpp
objs/src/app/srs_app_http_client.o: $(APP_DEPS) src/app/srs_app_http_client.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_http_client.o src/app/srs_app_http_client.cpp
objs/src/app/srs_app_avc_aac.o: $(APP_DEPS) src/app/srs_app_avc_aac.cpp 
	$(CXX) -c $(CXXFLAGS) $(APP_INCS)\
          -o objs/src/app/srs_app_avc_aac.o src/app/srs_app_avc_aac.cpp

#####################################################################################
# the LIBS module.
#####################################################################################

# INCS for LIBS, headers of module and its depends to compile
LIBS_MODULE_INCS = -Isrc/libs 
LIBS_INCS = -Isrc/libs $(CORE_MODULE_INCS) $(KERNEL_MODULE_INCS) $(RTMP_MODULE_INCS) -Iobjs 

# DEPS for LIBS, the depends of make schema
LIBS_DEPS =  src/libs/srs_librtmp.hpp src/libs/srs_lib_simple_socket.hpp src/libs/srs_lib_bandwidth.hpp $(CORE_DEPS)  $(KERNEL_DEPS)  $(RTMP_DEPS) 

# OBJ for LIBS, each object file
objs/src/libs/srs_librtmp.o: $(LIBS_DEPS) src/libs/srs_librtmp.cpp 
	$(CXX) -c $(CXXFLAGS) $(LIBS_INCS)\
          -o objs/src/libs/srs_librtmp.o src/libs/srs_librtmp.cpp
objs/src/libs/srs_lib_simple_socket.o: $(LIBS_DEPS) src/libs/srs_lib_simple_socket.cpp 
	$(CXX) -c $(CXXFLAGS) $(LIBS_INCS)\
          -o objs/src/libs/srs_lib_simple_socket.o src/libs/srs_lib_simple_socket.cpp
objs/src/libs/srs_lib_bandwidth.o: $(LIBS_DEPS) src/libs/srs_lib_bandwidth.cpp 
	$(CXX) -c $(CXXFLAGS) $(LIBS_INCS)\
          -o objs/src/libs/srs_lib_bandwidth.o src/libs/srs_lib_bandwidth.cpp

#####################################################################################
# the MAIN module.
#####################################################################################

# INCS for MAIN, headers of module and its depends to compile
MAIN_MODULE_INCS = -Isrc/main 
MAIN_INCS = -Isrc/main $(CORE_MODULE_INCS) $(KERNEL_MODULE_INCS) $(RTMP_MODULE_INCS) $(APP_MODULE_INCS) -Iobjs/st -Iobjs 

# DEPS for MAIN, the depends of make schema
MAIN_DEPS =  $(CORE_DEPS)  $(KERNEL_DEPS)  $(RTMP_DEPS)  $(APP_DEPS) 

# OBJ for MAIN, each object file
objs/src/main/srs_main_server.o: $(MAIN_DEPS) src/main/srs_main_server.cpp 
	$(CXX) -c $(CXXFLAGS) $(MAIN_INCS)\
          -o objs/src/main/srs_main_server.o src/main/srs_main_server.cpp

# build objs/srs
srs: objs/srs
objs/srs: objs/src/core/srs_core.o objs/src/core/srs_core_autofree.o objs/src/kernel/srs_kernel_error.o objs/src/kernel/srs_kernel_log.o objs/src/kernel/srs_kernel_stream.o objs/src/kernel/srs_kernel_buffer.o objs/src/kernel/srs_kernel_utility.o objs/src/kernel/srs_kernel_flv.o objs/src/kernel/srs_kernel_codec.o objs/src/kernel/srs_kernel_file.o objs/src/kernel/srs_kernel_consts.o objs/src/rtmp/srs_protocol_amf0.o objs/src/rtmp/srs_protocol_io.o objs/src/rtmp/srs_protocol_stack.o objs/src/rtmp/srs_protocol_rtmp.o objs/src/rtmp/srs_protocol_handshake.o objs/src/rtmp/srs_protocol_utility.o objs/src/rtmp/srs_protocol_msg_array.o objs/src/app/srs_app_server.o objs/src/app/srs_app_conn.o objs/src/app/srs_app_rtmp_conn.o objs/src/app/srs_app_st_socket.o objs/src/app/srs_app_source.o objs/src/app/srs_app_refer.o objs/src/app/srs_app_hls.o objs/src/app/srs_app_forward.o objs/src/app/srs_app_encoder.o objs/src/app/srs_app_http.o objs/src/app/srs_app_thread.o objs/src/app/srs_app_bandwidth.o objs/src/app/srs_app_st.o objs/src/app/srs_app_log.o objs/src/app/srs_app_config.o objs/src/app/srs_app_pithy_print.o objs/src/app/srs_app_reload.o objs/src/app/srs_app_http_api.o objs/src/app/srs_app_http_conn.o objs/src/app/srs_app_http_hooks.o objs/src/app/srs_app_json.o objs/src/app/srs_app_ingest.o objs/src/app/srs_app_ffmpeg.o objs/src/app/srs_app_utility.o objs/src/app/srs_app_dvr.o objs/src/app/srs_app_edge.o objs/src/app/srs_app_kbps.o objs/src/app/srs_app_heartbeat.o objs/src/app/srs_app_empty.o objs/src/app/srs_app_http_client.o objs/src/app/srs_app_avc_aac.o objs/src/main/srs_main_server.o 
	$(LINK) -o objs/srs objs/src/core/srs_core.o objs/src/core/srs_core_autofree.o objs/src/kernel/srs_kernel_error.o objs/src/kernel/srs_kernel_log.o objs/src/kernel/srs_kernel_stream.o objs/src/kernel/srs_kernel_buffer.o objs/src/kernel/srs_kernel_utility.o objs/src/kernel/srs_kernel_flv.o objs/src/kernel/srs_kernel_codec.o objs/src/kernel/srs_kernel_file.o objs/src/kernel/srs_kernel_consts.o objs/src/rtmp/srs_protocol_amf0.o objs/src/rtmp/srs_protocol_io.o objs/src/rtmp/srs_protocol_stack.o objs/src/rtmp/srs_protocol_rtmp.o objs/src/rtmp/srs_protocol_handshake.o objs/src/rtmp/srs_protocol_utility.o objs/src/rtmp/srs_protocol_msg_array.o objs/src/app/srs_app_server.o objs/src/app/srs_app_conn.o objs/src/app/srs_app_rtmp_conn.o objs/src/app/srs_app_st_socket.o objs/src/app/srs_app_source.o objs/src/app/srs_app_refer.o objs/src/app/srs_app_hls.o objs/src/app/srs_app_forward.o objs/src/app/srs_app_encoder.o objs/src/app/srs_app_http.o objs/src/app/srs_app_thread.o objs/src/app/srs_app_bandwidth.o objs/src/app/srs_app_st.o objs/src/app/srs_app_log.o objs/src/app/srs_app_config.o objs/src/app/srs_app_pithy_print.o objs/src/app/srs_app_reload.o objs/src/app/srs_app_http_api.o objs/src/app/srs_app_http_conn.o objs/src/app/srs_app_http_hooks.o objs/src/app/srs_app_json.o objs/src/app/srs_app_ingest.o objs/src/app/srs_app_ffmpeg.o objs/src/app/srs_app_utility.o objs/src/app/srs_app_dvr.o objs/src/app/srs_app_edge.o objs/src/app/srs_app_kbps.o objs/src/app/srs_app_heartbeat.o objs/src/app/srs_app_empty.o objs/src/app/srs_app_http_client.o objs/src/app/srs_app_avc_aac.o objs/src/main/srs_main_server.o objs/st/libst.a objs/hp/libhttp_parser.a objs/openssl/lib/libssl.a objs/openssl/lib/libcrypto.a -ldl -static
