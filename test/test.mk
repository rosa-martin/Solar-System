##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=test
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/miggs/coding/c++/test
ProjectPath            :=/home/miggs/coding/c++/test/test
IntermediateDirectory  :=../build-$(ConfigurationName)/test
OutDir                 :=../build-$(ConfigurationName)/test
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=miggs
Date                   :=01/02/22
CodeLitePath           :=/home/miggs/.codelite
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
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)sfml-graphics $(LibrarySwitch)sfml-system $(LibrarySwitch)sfml-window 
ArLibs                 :=  "sfml-graphics" "sfml-system" "sfml-window" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/test/main.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/test/Entity.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/test/EntityHandler.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/test/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/test"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/test"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/test/.d:
	@mkdir -p "../build-$(ConfigurationName)/test"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/test/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/test/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/miggs/coding/c++/test/test/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/test/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/test/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/test/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/test/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/test/main.cpp$(PreprocessSuffix) main.cpp

../build-$(ConfigurationName)/test/Entity.cpp$(ObjectSuffix): Entity.cpp ../build-$(ConfigurationName)/test/Entity.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/miggs/coding/c++/test/test/Entity.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Entity.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/test/Entity.cpp$(DependSuffix): Entity.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/test/Entity.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/test/Entity.cpp$(DependSuffix) -MM Entity.cpp

../build-$(ConfigurationName)/test/Entity.cpp$(PreprocessSuffix): Entity.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/test/Entity.cpp$(PreprocessSuffix) Entity.cpp

../build-$(ConfigurationName)/test/EntityHandler.cpp$(ObjectSuffix): EntityHandler.cpp ../build-$(ConfigurationName)/test/EntityHandler.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/miggs/coding/c++/test/test/EntityHandler.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EntityHandler.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/test/EntityHandler.cpp$(DependSuffix): EntityHandler.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/test/EntityHandler.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/test/EntityHandler.cpp$(DependSuffix) -MM EntityHandler.cpp

../build-$(ConfigurationName)/test/EntityHandler.cpp$(PreprocessSuffix): EntityHandler.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/test/EntityHandler.cpp$(PreprocessSuffix) EntityHandler.cpp


-include ../build-$(ConfigurationName)/test//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


