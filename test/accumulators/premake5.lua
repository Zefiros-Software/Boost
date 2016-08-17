
workspace "Boost"
   configurations { "Test" }

   startproject "Accumulators"

    project "Accumulators"
        kind "ConsoleApp"
        files "accumulators.cpp"

        zpm.uses {
            "Zefiros-Software/GoogleTest",
            "Zefiros-Software/Boost"
        }