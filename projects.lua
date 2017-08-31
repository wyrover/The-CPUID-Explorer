BOOK_CODE_PATH = "E:/book-code"
THIRD_PARTY = "E:/book-code/3rdparty"
WORK_PATH = os.getcwd()
includeexternal (BOOK_CODE_PATH .. "/premake-vs-include.lua")




workspace(path.getname(os.realpath(".")))
    language "C++"
    location "build/%{_ACTION}/%{wks.name}"    
    if _ACTION == "vs2015" then
        toolset "v140_xp"
    elseif _ACTION == "vs2013" then
        toolset "v120_xp"
    end






    create_mfc_project("CPUID", "mvp_tips/CPUID")
        characterset "MBCS"
        removefiles
        {
            "**/ExtendedCPU1AMD.cpp",
            "**/cpuidbasic1captions.CPP"
        }

        