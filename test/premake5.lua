
workspace "Boost"
   configurations { "Test" }

   startproject "Boost"

    project "Boost"
        kind "ConsoleApp"
        files "accumulators.cpp"

        zpm.uses {
            "Zefiros-Software/GoogleTest",
            "Zefiros-Software/Boost"
        }