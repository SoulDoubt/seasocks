##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=seasocks0x
ConfigurationName      :=Debug
WorkspacePath          :=/home/al/Documents/seasocks0x
ProjectPath            :=/home/al/Documents/seasocks0x/seasocks0x
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Al
Date                   :=28/05/17
CodeLitePath           :=/home/al/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/lib$(ProjectName).a
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="seasocks0x.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -lz
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -std=gnu++0x $(Preprocessors)
CFLAGS   :=  -g $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/Connection.cpp$(ObjectSuffix) $(IntermediateDirectory)/HybiAccept.cpp$(ObjectSuffix) $(IntermediateDirectory)/HybiPacketDecoder.cpp$(ObjectSuffix) $(IntermediateDirectory)/Logger.cpp$(ObjectSuffix) $(IntermediateDirectory)/PageRequest.cpp$(ObjectSuffix) $(IntermediateDirectory)/Response.cpp$(ObjectSuffix) $(IntermediateDirectory)/Server.cpp$(ObjectSuffix) $(IntermediateDirectory)/StringUtil.cpp$(ObjectSuffix) $(IntermediateDirectory)/internal_Base64.cpp$(ObjectSuffix) $(IntermediateDirectory)/md5_md5.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/seasocks_Request.cpp$(ObjectSuffix) $(IntermediateDirectory)/seasocks_ResponseBuilder.cpp$(ObjectSuffix) $(IntermediateDirectory)/seasocks_ResponseCode.cpp$(ObjectSuffix) $(IntermediateDirectory)/seasocks_StreamingResponse.cpp$(ObjectSuffix) $(IntermediateDirectory)/seasocks_SynchronousResponse.cpp$(ObjectSuffix) $(IntermediateDirectory)/seasocks_ZlibContext.cpp$(ObjectSuffix) $(IntermediateDirectory)/seasocks_ZlibContextDisabled.cpp$(ObjectSuffix) $(IntermediateDirectory)/sha1_sha1.cpp$(ObjectSuffix) $(IntermediateDirectory)/util_CrackedUri.cpp$(ObjectSuffix) $(IntermediateDirectory)/util_PathHandler.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/util_RootPageHandler.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(IntermediateDirectory) $(OutputFile)

$(OutputFile): $(Objects)
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(AR) $(ArchiveOutputSwitch)$(OutputFile) @$(ObjectsFileList) $(ArLibs)
	@$(MakeDirCommand) "/home/al/Documents/seasocks0x/.build-debug"
	@echo rebuilt > "/home/al/Documents/seasocks0x/.build-debug/seasocks0x"

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


./Debug:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/Connection.cpp$(ObjectSuffix): Connection.cpp $(IntermediateDirectory)/Connection.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/Connection.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Connection.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Connection.cpp$(DependSuffix): Connection.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Connection.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Connection.cpp$(DependSuffix) -MM Connection.cpp

$(IntermediateDirectory)/Connection.cpp$(PreprocessSuffix): Connection.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Connection.cpp$(PreprocessSuffix) Connection.cpp

$(IntermediateDirectory)/HybiAccept.cpp$(ObjectSuffix): HybiAccept.cpp $(IntermediateDirectory)/HybiAccept.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/HybiAccept.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/HybiAccept.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/HybiAccept.cpp$(DependSuffix): HybiAccept.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/HybiAccept.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/HybiAccept.cpp$(DependSuffix) -MM HybiAccept.cpp

$(IntermediateDirectory)/HybiAccept.cpp$(PreprocessSuffix): HybiAccept.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/HybiAccept.cpp$(PreprocessSuffix) HybiAccept.cpp

$(IntermediateDirectory)/HybiPacketDecoder.cpp$(ObjectSuffix): HybiPacketDecoder.cpp $(IntermediateDirectory)/HybiPacketDecoder.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/HybiPacketDecoder.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/HybiPacketDecoder.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/HybiPacketDecoder.cpp$(DependSuffix): HybiPacketDecoder.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/HybiPacketDecoder.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/HybiPacketDecoder.cpp$(DependSuffix) -MM HybiPacketDecoder.cpp

$(IntermediateDirectory)/HybiPacketDecoder.cpp$(PreprocessSuffix): HybiPacketDecoder.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/HybiPacketDecoder.cpp$(PreprocessSuffix) HybiPacketDecoder.cpp

$(IntermediateDirectory)/Logger.cpp$(ObjectSuffix): Logger.cpp $(IntermediateDirectory)/Logger.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/Logger.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Logger.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Logger.cpp$(DependSuffix): Logger.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Logger.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Logger.cpp$(DependSuffix) -MM Logger.cpp

$(IntermediateDirectory)/Logger.cpp$(PreprocessSuffix): Logger.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Logger.cpp$(PreprocessSuffix) Logger.cpp

$(IntermediateDirectory)/PageRequest.cpp$(ObjectSuffix): PageRequest.cpp $(IntermediateDirectory)/PageRequest.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/PageRequest.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PageRequest.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/PageRequest.cpp$(DependSuffix): PageRequest.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/PageRequest.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/PageRequest.cpp$(DependSuffix) -MM PageRequest.cpp

$(IntermediateDirectory)/PageRequest.cpp$(PreprocessSuffix): PageRequest.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/PageRequest.cpp$(PreprocessSuffix) PageRequest.cpp

$(IntermediateDirectory)/Response.cpp$(ObjectSuffix): Response.cpp $(IntermediateDirectory)/Response.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/Response.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Response.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Response.cpp$(DependSuffix): Response.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Response.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Response.cpp$(DependSuffix) -MM Response.cpp

$(IntermediateDirectory)/Response.cpp$(PreprocessSuffix): Response.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Response.cpp$(PreprocessSuffix) Response.cpp

$(IntermediateDirectory)/Server.cpp$(ObjectSuffix): Server.cpp $(IntermediateDirectory)/Server.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/Server.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Server.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Server.cpp$(DependSuffix): Server.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Server.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Server.cpp$(DependSuffix) -MM Server.cpp

$(IntermediateDirectory)/Server.cpp$(PreprocessSuffix): Server.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Server.cpp$(PreprocessSuffix) Server.cpp

$(IntermediateDirectory)/StringUtil.cpp$(ObjectSuffix): StringUtil.cpp $(IntermediateDirectory)/StringUtil.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/StringUtil.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/StringUtil.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/StringUtil.cpp$(DependSuffix): StringUtil.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/StringUtil.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/StringUtil.cpp$(DependSuffix) -MM StringUtil.cpp

$(IntermediateDirectory)/StringUtil.cpp$(PreprocessSuffix): StringUtil.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/StringUtil.cpp$(PreprocessSuffix) StringUtil.cpp

$(IntermediateDirectory)/internal_Base64.cpp$(ObjectSuffix): internal/Base64.cpp $(IntermediateDirectory)/internal_Base64.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/internal/Base64.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/internal_Base64.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/internal_Base64.cpp$(DependSuffix): internal/Base64.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/internal_Base64.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/internal_Base64.cpp$(DependSuffix) -MM internal/Base64.cpp

$(IntermediateDirectory)/internal_Base64.cpp$(PreprocessSuffix): internal/Base64.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/internal_Base64.cpp$(PreprocessSuffix) internal/Base64.cpp

$(IntermediateDirectory)/md5_md5.cpp$(ObjectSuffix): md5/md5.cpp $(IntermediateDirectory)/md5_md5.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/md5/md5.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/md5_md5.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/md5_md5.cpp$(DependSuffix): md5/md5.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/md5_md5.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/md5_md5.cpp$(DependSuffix) -MM md5/md5.cpp

$(IntermediateDirectory)/md5_md5.cpp$(PreprocessSuffix): md5/md5.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/md5_md5.cpp$(PreprocessSuffix) md5/md5.cpp

$(IntermediateDirectory)/seasocks_Request.cpp$(ObjectSuffix): seasocks/Request.cpp $(IntermediateDirectory)/seasocks_Request.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/seasocks/Request.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/seasocks_Request.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/seasocks_Request.cpp$(DependSuffix): seasocks/Request.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/seasocks_Request.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/seasocks_Request.cpp$(DependSuffix) -MM seasocks/Request.cpp

$(IntermediateDirectory)/seasocks_Request.cpp$(PreprocessSuffix): seasocks/Request.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/seasocks_Request.cpp$(PreprocessSuffix) seasocks/Request.cpp

$(IntermediateDirectory)/seasocks_ResponseBuilder.cpp$(ObjectSuffix): seasocks/ResponseBuilder.cpp $(IntermediateDirectory)/seasocks_ResponseBuilder.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/seasocks/ResponseBuilder.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/seasocks_ResponseBuilder.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/seasocks_ResponseBuilder.cpp$(DependSuffix): seasocks/ResponseBuilder.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/seasocks_ResponseBuilder.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/seasocks_ResponseBuilder.cpp$(DependSuffix) -MM seasocks/ResponseBuilder.cpp

$(IntermediateDirectory)/seasocks_ResponseBuilder.cpp$(PreprocessSuffix): seasocks/ResponseBuilder.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/seasocks_ResponseBuilder.cpp$(PreprocessSuffix) seasocks/ResponseBuilder.cpp

$(IntermediateDirectory)/seasocks_ResponseCode.cpp$(ObjectSuffix): seasocks/ResponseCode.cpp $(IntermediateDirectory)/seasocks_ResponseCode.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/seasocks/ResponseCode.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/seasocks_ResponseCode.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/seasocks_ResponseCode.cpp$(DependSuffix): seasocks/ResponseCode.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/seasocks_ResponseCode.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/seasocks_ResponseCode.cpp$(DependSuffix) -MM seasocks/ResponseCode.cpp

$(IntermediateDirectory)/seasocks_ResponseCode.cpp$(PreprocessSuffix): seasocks/ResponseCode.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/seasocks_ResponseCode.cpp$(PreprocessSuffix) seasocks/ResponseCode.cpp

$(IntermediateDirectory)/seasocks_StreamingResponse.cpp$(ObjectSuffix): seasocks/StreamingResponse.cpp $(IntermediateDirectory)/seasocks_StreamingResponse.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/seasocks/StreamingResponse.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/seasocks_StreamingResponse.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/seasocks_StreamingResponse.cpp$(DependSuffix): seasocks/StreamingResponse.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/seasocks_StreamingResponse.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/seasocks_StreamingResponse.cpp$(DependSuffix) -MM seasocks/StreamingResponse.cpp

$(IntermediateDirectory)/seasocks_StreamingResponse.cpp$(PreprocessSuffix): seasocks/StreamingResponse.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/seasocks_StreamingResponse.cpp$(PreprocessSuffix) seasocks/StreamingResponse.cpp

$(IntermediateDirectory)/seasocks_SynchronousResponse.cpp$(ObjectSuffix): seasocks/SynchronousResponse.cpp $(IntermediateDirectory)/seasocks_SynchronousResponse.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/seasocks/SynchronousResponse.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/seasocks_SynchronousResponse.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/seasocks_SynchronousResponse.cpp$(DependSuffix): seasocks/SynchronousResponse.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/seasocks_SynchronousResponse.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/seasocks_SynchronousResponse.cpp$(DependSuffix) -MM seasocks/SynchronousResponse.cpp

$(IntermediateDirectory)/seasocks_SynchronousResponse.cpp$(PreprocessSuffix): seasocks/SynchronousResponse.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/seasocks_SynchronousResponse.cpp$(PreprocessSuffix) seasocks/SynchronousResponse.cpp

$(IntermediateDirectory)/seasocks_ZlibContext.cpp$(ObjectSuffix): seasocks/ZlibContext.cpp $(IntermediateDirectory)/seasocks_ZlibContext.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/seasocks/ZlibContext.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/seasocks_ZlibContext.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/seasocks_ZlibContext.cpp$(DependSuffix): seasocks/ZlibContext.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/seasocks_ZlibContext.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/seasocks_ZlibContext.cpp$(DependSuffix) -MM seasocks/ZlibContext.cpp

$(IntermediateDirectory)/seasocks_ZlibContext.cpp$(PreprocessSuffix): seasocks/ZlibContext.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/seasocks_ZlibContext.cpp$(PreprocessSuffix) seasocks/ZlibContext.cpp

$(IntermediateDirectory)/seasocks_ZlibContextDisabled.cpp$(ObjectSuffix): seasocks/ZlibContextDisabled.cpp $(IntermediateDirectory)/seasocks_ZlibContextDisabled.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/seasocks/ZlibContextDisabled.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/seasocks_ZlibContextDisabled.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/seasocks_ZlibContextDisabled.cpp$(DependSuffix): seasocks/ZlibContextDisabled.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/seasocks_ZlibContextDisabled.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/seasocks_ZlibContextDisabled.cpp$(DependSuffix) -MM seasocks/ZlibContextDisabled.cpp

$(IntermediateDirectory)/seasocks_ZlibContextDisabled.cpp$(PreprocessSuffix): seasocks/ZlibContextDisabled.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/seasocks_ZlibContextDisabled.cpp$(PreprocessSuffix) seasocks/ZlibContextDisabled.cpp

$(IntermediateDirectory)/sha1_sha1.cpp$(ObjectSuffix): sha1/sha1.cpp $(IntermediateDirectory)/sha1_sha1.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/sha1/sha1.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/sha1_sha1.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/sha1_sha1.cpp$(DependSuffix): sha1/sha1.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/sha1_sha1.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/sha1_sha1.cpp$(DependSuffix) -MM sha1/sha1.cpp

$(IntermediateDirectory)/sha1_sha1.cpp$(PreprocessSuffix): sha1/sha1.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/sha1_sha1.cpp$(PreprocessSuffix) sha1/sha1.cpp

$(IntermediateDirectory)/util_CrackedUri.cpp$(ObjectSuffix): util/CrackedUri.cpp $(IntermediateDirectory)/util_CrackedUri.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/util/CrackedUri.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/util_CrackedUri.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/util_CrackedUri.cpp$(DependSuffix): util/CrackedUri.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/util_CrackedUri.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/util_CrackedUri.cpp$(DependSuffix) -MM util/CrackedUri.cpp

$(IntermediateDirectory)/util_CrackedUri.cpp$(PreprocessSuffix): util/CrackedUri.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/util_CrackedUri.cpp$(PreprocessSuffix) util/CrackedUri.cpp

$(IntermediateDirectory)/util_PathHandler.cpp$(ObjectSuffix): util/PathHandler.cpp $(IntermediateDirectory)/util_PathHandler.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/util/PathHandler.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/util_PathHandler.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/util_PathHandler.cpp$(DependSuffix): util/PathHandler.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/util_PathHandler.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/util_PathHandler.cpp$(DependSuffix) -MM util/PathHandler.cpp

$(IntermediateDirectory)/util_PathHandler.cpp$(PreprocessSuffix): util/PathHandler.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/util_PathHandler.cpp$(PreprocessSuffix) util/PathHandler.cpp

$(IntermediateDirectory)/util_RootPageHandler.cpp$(ObjectSuffix): util/RootPageHandler.cpp $(IntermediateDirectory)/util_RootPageHandler.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/al/Documents/seasocks0x/seasocks0x/util/RootPageHandler.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/util_RootPageHandler.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/util_RootPageHandler.cpp$(DependSuffix): util/RootPageHandler.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/util_RootPageHandler.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/util_RootPageHandler.cpp$(DependSuffix) -MM util/RootPageHandler.cpp

$(IntermediateDirectory)/util_RootPageHandler.cpp$(PreprocessSuffix): util/RootPageHandler.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/util_RootPageHandler.cpp$(PreprocessSuffix) util/RootPageHandler.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


