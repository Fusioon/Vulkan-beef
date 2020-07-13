using SDL2;
using System;
using Vulkan;
using System.Collections;

namespace Example
{
	class VulkanExample
	{
		public override Result<bool> Initialize()
		{
			if (SDL.Init(SDL.InitFlag.Video) < 0)
			{
				return HandleSDLError();
			}
#if BF_PLATFORM_WINDOWS
			SDL.VERSION(out _windowInfo.version);
#endif

			_window = SDL.CreateWindow(
				"Vulkan example",
				SDL.WindowPos.Centered,
				SDL.WindowPos.Centered,
				640,
				480,
				SDL.WindowFlags.Shown
				| SDL.WindowFlags.Vulkan
				
			);
			if (_window == null)
			{
				return HandleSDLError();
			}

			uint32 extensionCount = ?;
			SDL.Vulkan_GetInstanceExtensions(_window, out extensionCount, null);
			
			var extensionNames = new List<char8*>(extensionCount);
			for (var i = 0; i < extensionCount; ++i)
			{
				extensionNames.Add("");
			}

			SDL.Vulkan_GetInstanceExtensions(_window, out extensionCount, extensionNames.Ptr);

			_instanceCreateInfo.pApplicationInfo = &_appInfo;
			_instanceCreateInfo.enabledLayerCount = 0;
			_instanceCreateInfo.ppEnabledLayerNames = null;
			_instanceCreateInfo.enabledExtensionCount = extensionCount;
			_instanceCreateInfo.ppEnabledExtensionNames = extensionNames.Ptr;

			delete extensionNames;

			if (Vulkan.vkCreateInstance(&_instanceCreateInfo, null, &_instance) != .Success)
			{
				return HandleVulkanError();
			}

#if BF_PLATFORM_WINDOWS
			_winSurfaceCreateInfo = Vulkan.Win32.Win32SurfaceCreateInfoKHR();
			if (!SDL.GetWindowWMInfo(_window, ref _windowInfo))
			{
				return HandleSDLError();
			}

			_winSurfaceCreateInfo.hwnd = _windowInfo.info.win.window;
			let hmodule = Windows.GetModuleHandleA(null);
			if (hmodule.IsInvalid)
			{
				return .Err;
			}
			_winSurfaceCreateInfo.hinstance = (Windows.HInstance)hmodule;
			
			if (Vulkan.Win32.CreateWin32SurfaceKHR(_instance, &_winSurfaceCreateInfo, null, &_surface) != .Success)
			{
				return HandleVulkanError();
			}
#else
			if (!SDL.Vulkan_CreateSurface(_window, (SDL.VkInstance)_instance, out _surface))
			{
				return HandleSDLError();
			}
#endif

			return base.Initialize();
		}

		private SDL.Window* _window;
		private SDL.SDL_SysWMinfo _windowInfo;

		private Vulkan.Win32.Win32SurfaceCreateInfoKHR _winSurfaceCreateInfo;
		private Vulkan.ApplicationInfo _appInfo;
		private Vulkan.Instance _instance;
		private Vulkan.InstanceCreateInfo _instanceCreateInfo;

		private Result<bool> HandleVulkanError()
		{
			Console.Error.WriteLine("Something went wrong with Vulkan");
			return .Err;
		}
#if BF_PLATFORM_WINDOWS
		private Vulkan.SurfaceKHR _surface;
#else
		private SDL.VkSurfaceKHR _surface;
#endif

		private const int UNINITIALIZED_SURFACE = 0;

		private Result<bool> HandleSDLError()
		{
			Console.Error.WriteLine(scope:: String(SDL.GetError()));
			return .Err;
		}

		public ~this()
		{
			if (_surface != UNINITIALIZED_SURFACE)
			{
				Vulkan.vkDestroySurfaceKHR(_instance, (Vulkan.SurfaceKHR)_surface, null);
			}
			Vulkan.vkDestroyInstance(_instance, null);
			SDL.DestroyWindow(_window);
			SDL.Quit();
		}
	}
}
