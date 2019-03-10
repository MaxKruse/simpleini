project "SimpleIni"
	kind "StaticLib"
	language "C"
	
	characterset "Unicode"
	vectorextensions "AVX"

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

	defines 
	{ 
					"_CRT_SECURE_NO_WARNINGS"
	}

	filter "system:windows"
	systemversion "latest"