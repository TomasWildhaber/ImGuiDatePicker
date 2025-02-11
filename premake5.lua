project "ImGuiDatePicker"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
	staticruntime "off"

    targetdir (outputdir .. "$(Configuration)/$(ProjectName)")
	objdir (intoutputdir .. "$(Configuration)/$(ProjectName)")

    files
	{
		"**.hpp",
		"**.cpp",
	}

    includedirs
    {
        "src",
		"$(SolutionDir)vendor/imgui/src",
    }

	links
	{
		"ImGui",
	}

    filter "configurations:Debug"
		defines "DEBUG_CONFIG"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines "RELEASE_CONFIG"
		runtime "Release"
        optimize "on"

    filter "configurations:Distribution"
		defines "DISTRIBUTION_CONFIG"
		runtime "Release"
        optimize "on"