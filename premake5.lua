project "SimpleIni"
    kind "StaticLib"
    language "C"
    
	targetdir ("../../../bin/" .. outputDir .. "/%{prj.name}")
	objdir ("../../../bin/Intemediates/" .. outputDir .. "/%{prj.name}")

	files
	{
		"*.cpp",
		"*.h",
		"*.hpp"
    }
    
	filter "system:windows"
        systemversion "latest"
        staticruntime "On"
        
		defines 
		{ 
            "_CRT_SECURE_NO_WARNINGS"
		}
    
    filter { "system:windows", "configurations:Release" }
    buildoptions "/MT"