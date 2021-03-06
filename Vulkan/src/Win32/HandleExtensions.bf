#if BF_PLATFORM_WINDOWS
using System;

namespace Vulkan
{
	using Vulkan.Win32;
	extension Instance
	{
		public Result CreateWin32SurfaceKHR<Dispatch>(Win32SurfaceCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,SurfaceKHR* pSurface, Dispatch d) where Dispatch : var { return d.vkCreateWin32SurfaceKHR(this,pCreateInfo,pAllocator,pSurface); }
		public Result CreateWin32SurfaceKHR(Win32SurfaceCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,SurfaceKHR* pSurface) => CreateWin32SurfaceKHR<Vulkan.Win32.DispatchLoaderStatic>(pCreateInfo,pAllocator,pSurface,.());
		public Result<SurfaceKHR, Vulkan.Result> CreateWin32SurfaceKHR<Dispatch>(Win32SurfaceCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			SurfaceKHR _ret_val = ?;
			let result = CreateWin32SurfaceKHR(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<SurfaceKHR, Vulkan.Result> CreateWin32SurfaceKHR(Win32SurfaceCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator) => CreateWin32SurfaceKHR<Vulkan.Win32.DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
	}
	extension PhysicalDevice
	{
		public Bool32 GetWin32PresentationSupportKHR<Dispatch>(uint32 queueFamilyIndex, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceWin32PresentationSupportKHR(this,queueFamilyIndex); }
		public Bool32 GetWin32PresentationSupportKHR(uint32 queueFamilyIndex) => GetWin32PresentationSupportKHR<Vulkan.Win32.DispatchLoaderStatic>(queueFamilyIndex,.());
		public Result GetSurfacePresentModes2EXT<Dispatch>(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo,uint32* pPresentModeCount,PresentModeKHR* pPresentModes, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceSurfacePresentModes2EXT(this,pSurfaceInfo,pPresentModeCount,pPresentModes); }
		public Result GetSurfacePresentModes2EXT(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo,uint32* pPresentModeCount,PresentModeKHR* pPresentModes) => GetSurfacePresentModes2EXT<Vulkan.Win32.DispatchLoaderStatic>(pSurfaceInfo,pPresentModeCount,pPresentModes,.());
		public mixin GetSurfacePresentModes2EXT(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo)
		{
			uint32 count = 0;
			GetSurfacePresentModes2EXT(pSurfaceInfo, &count, null);
			PresentModeKHR[] values = scope:: .[count];
			let result = GetSurfacePresentModes2EXT(pSurfaceInfo, &count, values.CArray());
			if(result != .Success) Result<PresentModeKHR[], Vulkan.Result>.Err(result);
			Result<PresentModeKHR[], Vulkan.Result>.Ok(values)
		}
	}
	extension Device
	{
		public Result GetMemoryWin32HandleKHR<Dispatch>(MemoryGetWin32HandleInfoKHR* pGetWin32HandleInfo,HANDLE* pHandle, Dispatch d) where Dispatch : var { return d.vkGetMemoryWin32HandleKHR(this,pGetWin32HandleInfo,pHandle); }
		public Result GetMemoryWin32HandleKHR(MemoryGetWin32HandleInfoKHR* pGetWin32HandleInfo,HANDLE* pHandle) => GetMemoryWin32HandleKHR<Vulkan.Win32.DispatchLoaderStatic>(pGetWin32HandleInfo,pHandle,.());
		public Result<HANDLE, Vulkan.Result> GetMemoryWin32HandleKHR<Dispatch>(MemoryGetWin32HandleInfoKHR* pGetWin32HandleInfo, Dispatch d) where Dispatch : var
		{
			HANDLE _ret_val = ?;
			let result = GetMemoryWin32HandleKHR(pGetWin32HandleInfo, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<HANDLE, Vulkan.Result> GetMemoryWin32HandleKHR(MemoryGetWin32HandleInfoKHR* pGetWin32HandleInfo) => GetMemoryWin32HandleKHR<Vulkan.Win32.DispatchLoaderStatic>(pGetWin32HandleInfo,.());
		public Result GetMemoryWin32HandlePropertiesKHR<Dispatch>(ExternalMemoryHandleTypeFlags handleType,HANDLE handle,MemoryWin32HandlePropertiesKHR* pMemoryWin32HandleProperties, Dispatch d) where Dispatch : var { return d.vkGetMemoryWin32HandlePropertiesKHR(this,handleType,handle,pMemoryWin32HandleProperties); }
		public Result GetMemoryWin32HandlePropertiesKHR(ExternalMemoryHandleTypeFlags handleType,HANDLE handle,MemoryWin32HandlePropertiesKHR* pMemoryWin32HandleProperties) => GetMemoryWin32HandlePropertiesKHR<Vulkan.Win32.DispatchLoaderStatic>(handleType,handle,pMemoryWin32HandleProperties,.());
		public Result<MemoryWin32HandlePropertiesKHR, Vulkan.Result> GetMemoryWin32HandlePropertiesKHR<Dispatch>(ExternalMemoryHandleTypeFlags handleType,HANDLE handle, Dispatch d) where Dispatch : var
		{
			MemoryWin32HandlePropertiesKHR _ret_val = ?;
			let result = GetMemoryWin32HandlePropertiesKHR(handleType,handle, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<MemoryWin32HandlePropertiesKHR, Vulkan.Result> GetMemoryWin32HandlePropertiesKHR(ExternalMemoryHandleTypeFlags handleType,HANDLE handle) => GetMemoryWin32HandlePropertiesKHR<Vulkan.Win32.DispatchLoaderStatic>(handleType,handle,.());
		public Result ImportSemaphoreWin32HandleKHR<Dispatch>(ImportSemaphoreWin32HandleInfoKHR* pImportSemaphoreWin32HandleInfo, Dispatch d) where Dispatch : var { return d.vkImportSemaphoreWin32HandleKHR(this,pImportSemaphoreWin32HandleInfo); }
		public Result ImportSemaphoreWin32HandleKHR(ImportSemaphoreWin32HandleInfoKHR* pImportSemaphoreWin32HandleInfo) => ImportSemaphoreWin32HandleKHR<Vulkan.Win32.DispatchLoaderStatic>(pImportSemaphoreWin32HandleInfo,.());
		public Result GetSemaphoreWin32HandleKHR<Dispatch>(SemaphoreGetWin32HandleInfoKHR* pGetWin32HandleInfo,HANDLE* pHandle, Dispatch d) where Dispatch : var { return d.vkGetSemaphoreWin32HandleKHR(this,pGetWin32HandleInfo,pHandle); }
		public Result GetSemaphoreWin32HandleKHR(SemaphoreGetWin32HandleInfoKHR* pGetWin32HandleInfo,HANDLE* pHandle) => GetSemaphoreWin32HandleKHR<Vulkan.Win32.DispatchLoaderStatic>(pGetWin32HandleInfo,pHandle,.());
		public Result<HANDLE, Vulkan.Result> GetSemaphoreWin32HandleKHR<Dispatch>(SemaphoreGetWin32HandleInfoKHR* pGetWin32HandleInfo, Dispatch d) where Dispatch : var
		{
			HANDLE _ret_val = ?;
			let result = GetSemaphoreWin32HandleKHR(pGetWin32HandleInfo, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<HANDLE, Vulkan.Result> GetSemaphoreWin32HandleKHR(SemaphoreGetWin32HandleInfoKHR* pGetWin32HandleInfo) => GetSemaphoreWin32HandleKHR<Vulkan.Win32.DispatchLoaderStatic>(pGetWin32HandleInfo,.());
		public Result ImportFenceWin32HandleKHR<Dispatch>(ImportFenceWin32HandleInfoKHR* pImportFenceWin32HandleInfo, Dispatch d) where Dispatch : var { return d.vkImportFenceWin32HandleKHR(this,pImportFenceWin32HandleInfo); }
		public Result ImportFenceWin32HandleKHR(ImportFenceWin32HandleInfoKHR* pImportFenceWin32HandleInfo) => ImportFenceWin32HandleKHR<Vulkan.Win32.DispatchLoaderStatic>(pImportFenceWin32HandleInfo,.());
		public Result GetFenceWin32HandleKHR<Dispatch>(FenceGetWin32HandleInfoKHR* pGetWin32HandleInfo,HANDLE* pHandle, Dispatch d) where Dispatch : var { return d.vkGetFenceWin32HandleKHR(this,pGetWin32HandleInfo,pHandle); }
		public Result GetFenceWin32HandleKHR(FenceGetWin32HandleInfoKHR* pGetWin32HandleInfo,HANDLE* pHandle) => GetFenceWin32HandleKHR<Vulkan.Win32.DispatchLoaderStatic>(pGetWin32HandleInfo,pHandle,.());
		public Result<HANDLE, Vulkan.Result> GetFenceWin32HandleKHR<Dispatch>(FenceGetWin32HandleInfoKHR* pGetWin32HandleInfo, Dispatch d) where Dispatch : var
		{
			HANDLE _ret_val = ?;
			let result = GetFenceWin32HandleKHR(pGetWin32HandleInfo, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<HANDLE, Vulkan.Result> GetFenceWin32HandleKHR(FenceGetWin32HandleInfoKHR* pGetWin32HandleInfo) => GetFenceWin32HandleKHR<Vulkan.Win32.DispatchLoaderStatic>(pGetWin32HandleInfo,.());
		public Result GetMemoryWin32HandleNV<Dispatch>(DeviceMemory memory,ExternalMemoryHandleTypeFlagsNV handleType,HANDLE* pHandle, Dispatch d) where Dispatch : var { return d.vkGetMemoryWin32HandleNV(this,memory,handleType,pHandle); }
		public Result GetMemoryWin32HandleNV(DeviceMemory memory,ExternalMemoryHandleTypeFlagsNV handleType,HANDLE* pHandle) => GetMemoryWin32HandleNV<Vulkan.Win32.DispatchLoaderStatic>(memory,handleType,pHandle,.());
		public Result<HANDLE, Vulkan.Result> GetMemoryWin32HandleNV<Dispatch>(DeviceMemory memory,ExternalMemoryHandleTypeFlagsNV handleType, Dispatch d) where Dispatch : var
		{
			HANDLE _ret_val = ?;
			let result = GetMemoryWin32HandleNV(memory,handleType, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<HANDLE, Vulkan.Result> GetMemoryWin32HandleNV(DeviceMemory memory,ExternalMemoryHandleTypeFlagsNV handleType) => GetMemoryWin32HandleNV<Vulkan.Win32.DispatchLoaderStatic>(memory,handleType,.());
		public Result AcquireFullScreenExclusiveModeEXT<Dispatch>(SwapchainKHR swapchain, Dispatch d) where Dispatch : var { return d.vkAcquireFullScreenExclusiveModeEXT(this,swapchain); }
		public Result AcquireFullScreenExclusiveModeEXT(SwapchainKHR swapchain) => AcquireFullScreenExclusiveModeEXT<Vulkan.Win32.DispatchLoaderStatic>(swapchain,.());
		public Result ReleaseFullScreenExclusiveModeEXT<Dispatch>(SwapchainKHR swapchain, Dispatch d) where Dispatch : var { return d.vkReleaseFullScreenExclusiveModeEXT(this,swapchain); }
		public Result ReleaseFullScreenExclusiveModeEXT(SwapchainKHR swapchain) => ReleaseFullScreenExclusiveModeEXT<Vulkan.Win32.DispatchLoaderStatic>(swapchain,.());
		public Result GetGroupSurfacePresentModes2EXT<Dispatch>(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo,DeviceGroupPresentModeFlagsKHR* pModes, Dispatch d) where Dispatch : var { return d.vkGetDeviceGroupSurfacePresentModes2EXT(this,pSurfaceInfo,pModes); }
		public Result GetGroupSurfacePresentModes2EXT(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo,DeviceGroupPresentModeFlagsKHR* pModes) => GetGroupSurfacePresentModes2EXT<Vulkan.Win32.DispatchLoaderStatic>(pSurfaceInfo,pModes,.());
		public Result<DeviceGroupPresentModeFlagsKHR, Vulkan.Result> GetGroupSurfacePresentModes2EXT<Dispatch>(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, Dispatch d) where Dispatch : var
		{
			DeviceGroupPresentModeFlagsKHR _ret_val = ?;
			let result = GetGroupSurfacePresentModes2EXT(pSurfaceInfo, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<DeviceGroupPresentModeFlagsKHR, Vulkan.Result> GetGroupSurfacePresentModes2EXT(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo) => GetGroupSurfacePresentModes2EXT<Vulkan.Win32.DispatchLoaderStatic>(pSurfaceInfo,.());
	}
}
#endif