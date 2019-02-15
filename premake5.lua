project "SimpleIni"
    kind "StaticLib"
    language "C"
  
	staticruntime "On"

	targetdir ("../../../bin/" .. outputDir .. "/%{prj.name}")
	objdir ("../../../bin/Intemediates/" .. outputDir .. "/%{prj.name}")

	files
	{
		"*.cpp",
		"*.c",
		"*.h",
		"*.hpp"
    }
    
	filter "system:windows"
        systemversion "latest"
        
		defines 
		{ 
            "_CRT_SECURE_NO_WARNINGS"
		}
    
    filter { "system:windows", "configurations:Release" }