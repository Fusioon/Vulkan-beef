# Vulkan-bf
`Vulkan-bf` is a wrapper for the Vulkan API written for Beef.

# Quick Start *(using Beef IDE)*
1. Install the [Vulkan SDK](https://www.lunarg.com/vulkan-sdk/).
2. Download `Vulkan-bf` into the BeefLibs folder of your Beef install.
3. Restart the Beef IDE
4. Right-click on your workspace and select **Add from Installed** and choose `Vulkan`.
5. Add `Vulkan` as a dependency of your project.
6. Include the Vulkan libs in the **Additional Lib Paths**. The Libs are present in the `Lib` directory wherever the Vulkan SDK installed.

## How was this made?
The `Program.cs` included in the repo was used to generate the Vulkan wrappers.