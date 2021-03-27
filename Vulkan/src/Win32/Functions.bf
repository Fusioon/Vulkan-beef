#if BF_PLATFORM_WINDOWS
using System;

namespace Vulkan.Win32 
{
	public static 
	{
		[CLink]
		public static extern Result vkCreateWin32SurfaceKHR(Instance instance, Win32SurfaceCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface);

		[CLink]
		public static extern Bool32 vkGetPhysicalDeviceWin32PresentationSupportKHR(PhysicalDevice physicalDevice, uint32 queueFamilyIndex);

		[CLink]
		public static extern Result vkGetMemoryWin32HandleKHR(Device device, MemoryGetWin32HandleInfoKHR* pGetWin32HandleInfo, HANDLE* pHandle);

		[CLink]
		public static extern Result vkGetMemoryWin32HandlePropertiesKHR(Device device, ExternalMemoryHandleTypeFlags handleType, HANDLE handle, MemoryWin32HandlePropertiesKHR* pMemoryWin32HandleProperties);

		[CLink]
		public static extern Result vkImportSemaphoreWin32HandleKHR(Device device, ImportSemaphoreWin32HandleInfoKHR* pImportSemaphoreWin32HandleInfo);

		[CLink]
		public static extern Result vkGetSemaphoreWin32HandleKHR(Device device, SemaphoreGetWin32HandleInfoKHR* pGetWin32HandleInfo, HANDLE* pHandle);

		[CLink]
		public static extern Result vkImportFenceWin32HandleKHR(Device device, ImportFenceWin32HandleInfoKHR* pImportFenceWin32HandleInfo);

		[CLink]
		public static extern Result vkGetFenceWin32HandleKHR(Device device, FenceGetWin32HandleInfoKHR* pGetWin32HandleInfo, HANDLE* pHandle);

		[CLink]
		public static extern Result vkGetMemoryWin32HandleNV(Device device, DeviceMemory memory, ExternalMemoryHandleTypeFlagsNV handleType, HANDLE* pHandle);

		[CLink]
		public static extern Result vkGetPhysicalDeviceSurfacePresentModes2EXT(PhysicalDevice physicalDevice, PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, uint32* pPresentModeCount, PresentModeKHR* pPresentModes);

		[CLink]
		public static extern Result vkAcquireFullScreenExclusiveModeEXT(Device device, SwapchainKHR swapchain);

		[CLink]
		public static extern Result vkReleaseFullScreenExclusiveModeEXT(Device device, SwapchainKHR swapchain);

		[CLink]
		public static extern Result vkGetDeviceGroupSurfacePresentModes2EXT(Device device, PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, DeviceGroupPresentModeFlagsKHR* pModes);


}
}
#endif