project "ImGuizmo"
	kind "StaticLib"
	language "C++"

    targetdir("bin/%{prj.name}/" .. outputdir )
    objdir("bin-int/%{prj.name}/" .. outputdir )

	files
	{
		"ImGuizmo.h",
		"ImGuizmo.cpp",
	}

	includedirs
	{
		"../ImGui",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
        
    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:MemoryProfile"
	  	runtime "Release"
	  	optimize "on"

	filter "configurations:Development"
		runtime "Release"
		optimize "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"