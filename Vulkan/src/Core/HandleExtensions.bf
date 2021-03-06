using System;

namespace Vulkan
{
	extension Instance
	{
		public void Destroy<Dispatch>(AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyInstance(this,pAllocator); }
		public void Destroy(AllocationCallbacks* pAllocator) => Destroy<DispatchLoaderStatic>(pAllocator,.());
		public Result EnumeratePhysicalDevices<Dispatch>(uint32* pPhysicalDeviceCount,PhysicalDevice* pPhysicalDevices, Dispatch d) where Dispatch : var { return d.vkEnumeratePhysicalDevices(this,pPhysicalDeviceCount,pPhysicalDevices); }
		public Result EnumeratePhysicalDevices(uint32* pPhysicalDeviceCount,PhysicalDevice* pPhysicalDevices) => EnumeratePhysicalDevices<DispatchLoaderStatic>(pPhysicalDeviceCount,pPhysicalDevices,.());
		public mixin EnumeratePhysicalDevices()
		{
			uint32 count = 0;
			EnumeratePhysicalDevices( &count, null);
			PhysicalDevice[] values = scope:: .[count];
			let result = EnumeratePhysicalDevices( &count, values.CArray());
			if(result != .Success) Result<PhysicalDevice[], Vulkan.Result>.Err(result);
			Result<PhysicalDevice[], Vulkan.Result>.Ok(values)
		}
		public PFN_vkVoidFunction GetProcAddr<Dispatch>(char8* pName, Dispatch d) where Dispatch : var { return d.vkGetInstanceProcAddr(this,pName); }
		public PFN_vkVoidFunction GetProcAddr(char8* pName) => GetProcAddr<DispatchLoaderStatic>(pName,.());
		public Result EnumeratePhysicalDeviceGroups<Dispatch>(uint32* pPhysicalDeviceGroupCount,PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties, Dispatch d) where Dispatch : var { return d.vkEnumeratePhysicalDeviceGroups(this,pPhysicalDeviceGroupCount,pPhysicalDeviceGroupProperties); }
		public Result EnumeratePhysicalDeviceGroups(uint32* pPhysicalDeviceGroupCount,PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties) => EnumeratePhysicalDeviceGroups<DispatchLoaderStatic>(pPhysicalDeviceGroupCount,pPhysicalDeviceGroupProperties,.());
		public mixin EnumeratePhysicalDeviceGroups()
		{
			uint32 count = 0;
			EnumeratePhysicalDeviceGroups( &count, null);
			PhysicalDeviceGroupProperties[] values = scope:: .[count];
			let result = EnumeratePhysicalDeviceGroups( &count, values.CArray());
			if(result != .Success) Result<PhysicalDeviceGroupProperties[], Vulkan.Result>.Err(result);
			Result<PhysicalDeviceGroupProperties[], Vulkan.Result>.Ok(values)
		}
		public void DestroySurfaceKHR<Dispatch>(SurfaceKHR surface,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroySurfaceKHR(this,surface,pAllocator); }
		public void DestroySurfaceKHR(SurfaceKHR surface,AllocationCallbacks* pAllocator) => DestroySurfaceKHR<DispatchLoaderStatic>(surface,pAllocator,.());
		public Result CreateDisplayPlaneSurfaceKHR<Dispatch>(DisplaySurfaceCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,SurfaceKHR* pSurface, Dispatch d) where Dispatch : var { return d.vkCreateDisplayPlaneSurfaceKHR(this,pCreateInfo,pAllocator,pSurface); }
		public Result CreateDisplayPlaneSurfaceKHR(DisplaySurfaceCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,SurfaceKHR* pSurface) => CreateDisplayPlaneSurfaceKHR<DispatchLoaderStatic>(pCreateInfo,pAllocator,pSurface,.());
		public Result<SurfaceKHR, Vulkan.Result> CreateDisplayPlaneSurfaceKHR<Dispatch>(DisplaySurfaceCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			SurfaceKHR _ret_val = ?;
			let result = CreateDisplayPlaneSurfaceKHR(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<SurfaceKHR, Vulkan.Result> CreateDisplayPlaneSurfaceKHR(DisplaySurfaceCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator) => CreateDisplayPlaneSurfaceKHR<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public Result EnumeratePhysicalDeviceGroupsKHR<Dispatch>(uint32* pPhysicalDeviceGroupCount,PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties, Dispatch d) where Dispatch : var { return d.vkEnumeratePhysicalDeviceGroupsKHR(this,pPhysicalDeviceGroupCount,pPhysicalDeviceGroupProperties); }
		public Result EnumeratePhysicalDeviceGroupsKHR(uint32* pPhysicalDeviceGroupCount,PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties) => EnumeratePhysicalDeviceGroupsKHR<DispatchLoaderStatic>(pPhysicalDeviceGroupCount,pPhysicalDeviceGroupProperties,.());
		public mixin EnumeratePhysicalDeviceGroupsKHR()
		{
			uint32 count = 0;
			EnumeratePhysicalDeviceGroupsKHR( &count, null);
			PhysicalDeviceGroupProperties[] values = scope:: .[count];
			let result = EnumeratePhysicalDeviceGroupsKHR( &count, values.CArray());
			if(result != .Success) Result<PhysicalDeviceGroupProperties[], Vulkan.Result>.Err(result);
			Result<PhysicalDeviceGroupProperties[], Vulkan.Result>.Ok(values)
		}
		public Result CreateDebugReportCallbackEXT<Dispatch>(DebugReportCallbackCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,DebugReportCallbackEXT* pCallback, Dispatch d) where Dispatch : var { return d.vkCreateDebugReportCallbackEXT(this,pCreateInfo,pAllocator,pCallback); }
		public Result CreateDebugReportCallbackEXT(DebugReportCallbackCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,DebugReportCallbackEXT* pCallback) => CreateDebugReportCallbackEXT<DispatchLoaderStatic>(pCreateInfo,pAllocator,pCallback,.());
		public Result<DebugReportCallbackEXT, Vulkan.Result> CreateDebugReportCallbackEXT<Dispatch>(DebugReportCallbackCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			DebugReportCallbackEXT _ret_val = ?;
			let result = CreateDebugReportCallbackEXT(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<DebugReportCallbackEXT, Vulkan.Result> CreateDebugReportCallbackEXT(DebugReportCallbackCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator) => CreateDebugReportCallbackEXT<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyDebugReportCallbackEXT<Dispatch>(DebugReportCallbackEXT callback,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyDebugReportCallbackEXT(this,callback,pAllocator); }
		public void DestroyDebugReportCallbackEXT(DebugReportCallbackEXT callback,AllocationCallbacks* pAllocator) => DestroyDebugReportCallbackEXT<DispatchLoaderStatic>(callback,pAllocator,.());
		public void DebugReportMessageEXT<Dispatch>(DebugReportFlagsEXT flags,DebugReportObjectTypeEXT objectType,uint64 object,uint location,int32 messageCode,char8* pLayerPrefix,char8* pMessage, Dispatch d) where Dispatch : var { d.vkDebugReportMessageEXT(this,flags,objectType,object,location,messageCode,pLayerPrefix,pMessage); }
		public void DebugReportMessageEXT(DebugReportFlagsEXT flags,DebugReportObjectTypeEXT objectType,uint64 object,uint location,int32 messageCode,char8* pLayerPrefix,char8* pMessage) => DebugReportMessageEXT<DispatchLoaderStatic>(flags,objectType,object,location,messageCode,pLayerPrefix,pMessage,.());
		public Result CreateDebugUtilsMessengerEXT<Dispatch>(DebugUtilsMessengerCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,DebugUtilsMessengerEXT* pMessenger, Dispatch d) where Dispatch : var { return d.vkCreateDebugUtilsMessengerEXT(this,pCreateInfo,pAllocator,pMessenger); }
		public Result CreateDebugUtilsMessengerEXT(DebugUtilsMessengerCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,DebugUtilsMessengerEXT* pMessenger) => CreateDebugUtilsMessengerEXT<DispatchLoaderStatic>(pCreateInfo,pAllocator,pMessenger,.());
		public Result<DebugUtilsMessengerEXT, Vulkan.Result> CreateDebugUtilsMessengerEXT<Dispatch>(DebugUtilsMessengerCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			DebugUtilsMessengerEXT _ret_val = ?;
			let result = CreateDebugUtilsMessengerEXT(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<DebugUtilsMessengerEXT, Vulkan.Result> CreateDebugUtilsMessengerEXT(DebugUtilsMessengerCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator) => CreateDebugUtilsMessengerEXT<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyDebugUtilsMessengerEXT<Dispatch>(DebugUtilsMessengerEXT messenger,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyDebugUtilsMessengerEXT(this,messenger,pAllocator); }
		public void DestroyDebugUtilsMessengerEXT(DebugUtilsMessengerEXT messenger,AllocationCallbacks* pAllocator) => DestroyDebugUtilsMessengerEXT<DispatchLoaderStatic>(messenger,pAllocator,.());
		public void SubmitDebugUtilsMessageEXT<Dispatch>(DebugUtilsMessageSeverityFlagsEXT messageSeverity,DebugUtilsMessageTypeFlagsEXT messageTypes,DebugUtilsMessengerCallbackDataEXT* pCallbackData, Dispatch d) where Dispatch : var { d.vkSubmitDebugUtilsMessageEXT(this,messageSeverity,messageTypes,pCallbackData); }
		public void SubmitDebugUtilsMessageEXT(DebugUtilsMessageSeverityFlagsEXT messageSeverity,DebugUtilsMessageTypeFlagsEXT messageTypes,DebugUtilsMessengerCallbackDataEXT* pCallbackData) => SubmitDebugUtilsMessageEXT<DispatchLoaderStatic>(messageSeverity,messageTypes,pCallbackData,.());
		public Result CreateHeadlessSurfaceEXT<Dispatch>(HeadlessSurfaceCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,SurfaceKHR* pSurface, Dispatch d) where Dispatch : var { return d.vkCreateHeadlessSurfaceEXT(this,pCreateInfo,pAllocator,pSurface); }
		public Result CreateHeadlessSurfaceEXT(HeadlessSurfaceCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,SurfaceKHR* pSurface) => CreateHeadlessSurfaceEXT<DispatchLoaderStatic>(pCreateInfo,pAllocator,pSurface,.());
		public Result<SurfaceKHR, Vulkan.Result> CreateHeadlessSurfaceEXT<Dispatch>(HeadlessSurfaceCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			SurfaceKHR _ret_val = ?;
			let result = CreateHeadlessSurfaceEXT(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<SurfaceKHR, Vulkan.Result> CreateHeadlessSurfaceEXT(HeadlessSurfaceCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator) => CreateHeadlessSurfaceEXT<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
	}
	extension PhysicalDevice
	{
		public void GetFeatures<Dispatch>(PhysicalDeviceFeatures* pFeatures, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceFeatures(this,pFeatures); }
		public void GetFeatures(PhysicalDeviceFeatures* pFeatures) => GetFeatures<DispatchLoaderStatic>(pFeatures,.());
		public PhysicalDeviceFeatures GetFeatures<Dispatch>( Dispatch d) where Dispatch : var
		{
			PhysicalDeviceFeatures _ret_val = ?;
			GetFeatures( &_ret_val, d);
			return _ret_val;
		}
		public PhysicalDeviceFeatures GetFeatures() => GetFeatures<DispatchLoaderStatic>(.());
		public void GetFormatProperties<Dispatch>(Format format,FormatProperties* pFormatProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceFormatProperties(this,format,pFormatProperties); }
		public void GetFormatProperties(Format format,FormatProperties* pFormatProperties) => GetFormatProperties<DispatchLoaderStatic>(format,pFormatProperties,.());
		public FormatProperties GetFormatProperties<Dispatch>(Format format, Dispatch d) where Dispatch : var
		{
			FormatProperties _ret_val = ?;
			GetFormatProperties(format, &_ret_val, d);
			return _ret_val;
		}
		public FormatProperties GetFormatProperties(Format format) => GetFormatProperties<DispatchLoaderStatic>(format,.());
		public Result GetImageFormatProperties<Dispatch>(Format format,ImageType type,ImageTiling tiling,ImageUsageFlags usage,ImageCreateFlags flags,ImageFormatProperties* pImageFormatProperties, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceImageFormatProperties(this,format,type,tiling,usage,flags,pImageFormatProperties); }
		public Result GetImageFormatProperties(Format format,ImageType type,ImageTiling tiling,ImageUsageFlags usage,ImageCreateFlags flags,ImageFormatProperties* pImageFormatProperties) => GetImageFormatProperties<DispatchLoaderStatic>(format,type,tiling,usage,flags,pImageFormatProperties,.());
		public Result<ImageFormatProperties, Vulkan.Result> GetImageFormatProperties<Dispatch>(Format format,ImageType type,ImageTiling tiling,ImageUsageFlags usage,ImageCreateFlags flags, Dispatch d) where Dispatch : var
		{
			ImageFormatProperties _ret_val = ?;
			let result = GetImageFormatProperties(format,type,tiling,usage,flags, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<ImageFormatProperties, Vulkan.Result> GetImageFormatProperties(Format format,ImageType type,ImageTiling tiling,ImageUsageFlags usage,ImageCreateFlags flags) => GetImageFormatProperties<DispatchLoaderStatic>(format,type,tiling,usage,flags,.());
		public void GetProperties<Dispatch>(PhysicalDeviceProperties* pProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceProperties(this,pProperties); }
		public void GetProperties(PhysicalDeviceProperties* pProperties) => GetProperties<DispatchLoaderStatic>(pProperties,.());
		public PhysicalDeviceProperties GetProperties<Dispatch>( Dispatch d) where Dispatch : var
		{
			PhysicalDeviceProperties _ret_val = ?;
			GetProperties( &_ret_val, d);
			return _ret_val;
		}
		public PhysicalDeviceProperties GetProperties() => GetProperties<DispatchLoaderStatic>(.());
		public void GetQueueFamilyProperties<Dispatch>(uint32* pQueueFamilyPropertyCount,QueueFamilyProperties* pQueueFamilyProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceQueueFamilyProperties(this,pQueueFamilyPropertyCount,pQueueFamilyProperties); }
		public void GetQueueFamilyProperties(uint32* pQueueFamilyPropertyCount,QueueFamilyProperties* pQueueFamilyProperties) => GetQueueFamilyProperties<DispatchLoaderStatic>(pQueueFamilyPropertyCount,pQueueFamilyProperties,.());
		public mixin GetQueueFamilyProperties()
		{
			uint32 count = 0;
			GetQueueFamilyProperties( &count, null);
			QueueFamilyProperties[] values = scope:: .[count];
			GetQueueFamilyProperties( &count, values.CArray());
			values
		}
		public void GetMemoryProperties<Dispatch>(PhysicalDeviceMemoryProperties* pMemoryProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceMemoryProperties(this,pMemoryProperties); }
		public void GetMemoryProperties(PhysicalDeviceMemoryProperties* pMemoryProperties) => GetMemoryProperties<DispatchLoaderStatic>(pMemoryProperties,.());
		public PhysicalDeviceMemoryProperties GetMemoryProperties<Dispatch>( Dispatch d) where Dispatch : var
		{
			PhysicalDeviceMemoryProperties _ret_val = ?;
			GetMemoryProperties( &_ret_val, d);
			return _ret_val;
		}
		public PhysicalDeviceMemoryProperties GetMemoryProperties() => GetMemoryProperties<DispatchLoaderStatic>(.());
		public Result CreateDevice<Dispatch>(DeviceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Device* pDevice, Dispatch d) where Dispatch : var { return d.vkCreateDevice(this,pCreateInfo,pAllocator,pDevice); }
		public Result CreateDevice(DeviceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Device* pDevice) => CreateDevice<DispatchLoaderStatic>(pCreateInfo,pAllocator,pDevice,.());
		public Result<Device, Vulkan.Result> CreateDevice<Dispatch>(DeviceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Device _ret_val = ?;
			let result = CreateDevice(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<Device, Vulkan.Result> CreateDevice(DeviceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateDevice<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public Result EnumerateDeviceExtensionProperties<Dispatch>(char8* pLayerName,uint32* pPropertyCount,ExtensionProperties* pProperties, Dispatch d) where Dispatch : var { return d.vkEnumerateDeviceExtensionProperties(this,pLayerName,pPropertyCount,pProperties); }
		public Result EnumerateDeviceExtensionProperties(char8* pLayerName,uint32* pPropertyCount,ExtensionProperties* pProperties) => EnumerateDeviceExtensionProperties<DispatchLoaderStatic>(pLayerName,pPropertyCount,pProperties,.());
		public mixin EnumerateDeviceExtensionProperties(char8* pLayerName)
		{
			uint32 count = 0;
			EnumerateDeviceExtensionProperties(pLayerName, &count, null);
			ExtensionProperties[] values = scope:: .[count];
			let result = EnumerateDeviceExtensionProperties(pLayerName, &count, values.CArray());
			if(result != .Success) Result<ExtensionProperties[], Vulkan.Result>.Err(result);
			Result<ExtensionProperties[], Vulkan.Result>.Ok(values)
		}
		public Result EnumerateDeviceLayerProperties<Dispatch>(uint32* pPropertyCount,LayerProperties* pProperties, Dispatch d) where Dispatch : var { return d.vkEnumerateDeviceLayerProperties(this,pPropertyCount,pProperties); }
		public Result EnumerateDeviceLayerProperties(uint32* pPropertyCount,LayerProperties* pProperties) => EnumerateDeviceLayerProperties<DispatchLoaderStatic>(pPropertyCount,pProperties,.());
		public mixin EnumerateDeviceLayerProperties()
		{
			uint32 count = 0;
			EnumerateDeviceLayerProperties( &count, null);
			LayerProperties[] values = scope:: .[count];
			let result = EnumerateDeviceLayerProperties( &count, values.CArray());
			if(result != .Success) Result<LayerProperties[], Vulkan.Result>.Err(result);
			Result<LayerProperties[], Vulkan.Result>.Ok(values)
		}
		public void GetSparseImageFormatProperties<Dispatch>(Format format,ImageType type,SampleCountFlags samples,ImageUsageFlags usage,ImageTiling tiling,uint32* pPropertyCount,SparseImageFormatProperties* pProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceSparseImageFormatProperties(this,format,type,samples,usage,tiling,pPropertyCount,pProperties); }
		public void GetSparseImageFormatProperties(Format format,ImageType type,SampleCountFlags samples,ImageUsageFlags usage,ImageTiling tiling,uint32* pPropertyCount,SparseImageFormatProperties* pProperties) => GetSparseImageFormatProperties<DispatchLoaderStatic>(format,type,samples,usage,tiling,pPropertyCount,pProperties,.());
		public mixin GetSparseImageFormatProperties(Format format,ImageType type,SampleCountFlags samples,ImageUsageFlags usage,ImageTiling tiling)
		{
			uint32 count = 0;
			GetSparseImageFormatProperties(format,type,samples,usage,tiling, &count, null);
			SparseImageFormatProperties[] values = scope:: .[count];
			GetSparseImageFormatProperties(format,type,samples,usage,tiling, &count, values.CArray());
			values
		}
		public void GetFeatures2<Dispatch>(PhysicalDeviceFeatures2* pFeatures, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceFeatures2(this,pFeatures); }
		public void GetFeatures2(PhysicalDeviceFeatures2* pFeatures) => GetFeatures2<DispatchLoaderStatic>(pFeatures,.());
		public PhysicalDeviceFeatures2 GetFeatures2<Dispatch>( Dispatch d) where Dispatch : var
		{
			PhysicalDeviceFeatures2 _ret_val = ?;
			GetFeatures2( &_ret_val, d);
			return _ret_val;
		}
		public PhysicalDeviceFeatures2 GetFeatures2() => GetFeatures2<DispatchLoaderStatic>(.());
		public void GetProperties2<Dispatch>(PhysicalDeviceProperties2* pProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceProperties2(this,pProperties); }
		public void GetProperties2(PhysicalDeviceProperties2* pProperties) => GetProperties2<DispatchLoaderStatic>(pProperties,.());
		public PhysicalDeviceProperties2 GetProperties2<Dispatch>( Dispatch d) where Dispatch : var
		{
			PhysicalDeviceProperties2 _ret_val = ?;
			GetProperties2( &_ret_val, d);
			return _ret_val;
		}
		public PhysicalDeviceProperties2 GetProperties2() => GetProperties2<DispatchLoaderStatic>(.());
		public void GetFormatProperties2<Dispatch>(Format format,FormatProperties2* pFormatProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceFormatProperties2(this,format,pFormatProperties); }
		public void GetFormatProperties2(Format format,FormatProperties2* pFormatProperties) => GetFormatProperties2<DispatchLoaderStatic>(format,pFormatProperties,.());
		public FormatProperties2 GetFormatProperties2<Dispatch>(Format format, Dispatch d) where Dispatch : var
		{
			FormatProperties2 _ret_val = ?;
			GetFormatProperties2(format, &_ret_val, d);
			return _ret_val;
		}
		public FormatProperties2 GetFormatProperties2(Format format) => GetFormatProperties2<DispatchLoaderStatic>(format,.());
		public Result GetImageFormatProperties2<Dispatch>(PhysicalDeviceImageFormatInfo2* pImageFormatInfo,ImageFormatProperties2* pImageFormatProperties, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceImageFormatProperties2(this,pImageFormatInfo,pImageFormatProperties); }
		public Result GetImageFormatProperties2(PhysicalDeviceImageFormatInfo2* pImageFormatInfo,ImageFormatProperties2* pImageFormatProperties) => GetImageFormatProperties2<DispatchLoaderStatic>(pImageFormatInfo,pImageFormatProperties,.());
		public Result<ImageFormatProperties2, Vulkan.Result> GetImageFormatProperties2<Dispatch>(PhysicalDeviceImageFormatInfo2* pImageFormatInfo, Dispatch d) where Dispatch : var
		{
			ImageFormatProperties2 _ret_val = ?;
			let result = GetImageFormatProperties2(pImageFormatInfo, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<ImageFormatProperties2, Vulkan.Result> GetImageFormatProperties2(PhysicalDeviceImageFormatInfo2* pImageFormatInfo) => GetImageFormatProperties2<DispatchLoaderStatic>(pImageFormatInfo,.());
		public void GetQueueFamilyProperties2<Dispatch>(uint32* pQueueFamilyPropertyCount,QueueFamilyProperties2* pQueueFamilyProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceQueueFamilyProperties2(this,pQueueFamilyPropertyCount,pQueueFamilyProperties); }
		public void GetQueueFamilyProperties2(uint32* pQueueFamilyPropertyCount,QueueFamilyProperties2* pQueueFamilyProperties) => GetQueueFamilyProperties2<DispatchLoaderStatic>(pQueueFamilyPropertyCount,pQueueFamilyProperties,.());
		public mixin GetQueueFamilyProperties2()
		{
			uint32 count = 0;
			GetQueueFamilyProperties2( &count, null);
			QueueFamilyProperties2[] values = scope:: .[count];
			GetQueueFamilyProperties2( &count, values.CArray());
			values
		}
		public void GetMemoryProperties2<Dispatch>(PhysicalDeviceMemoryProperties2* pMemoryProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceMemoryProperties2(this,pMemoryProperties); }
		public void GetMemoryProperties2(PhysicalDeviceMemoryProperties2* pMemoryProperties) => GetMemoryProperties2<DispatchLoaderStatic>(pMemoryProperties,.());
		public PhysicalDeviceMemoryProperties2 GetMemoryProperties2<Dispatch>( Dispatch d) where Dispatch : var
		{
			PhysicalDeviceMemoryProperties2 _ret_val = ?;
			GetMemoryProperties2( &_ret_val, d);
			return _ret_val;
		}
		public PhysicalDeviceMemoryProperties2 GetMemoryProperties2() => GetMemoryProperties2<DispatchLoaderStatic>(.());
		public void GetSparseImageFormatProperties2<Dispatch>(PhysicalDeviceSparseImageFormatInfo2* pFormatInfo,uint32* pPropertyCount,SparseImageFormatProperties2* pProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceSparseImageFormatProperties2(this,pFormatInfo,pPropertyCount,pProperties); }
		public void GetSparseImageFormatProperties2(PhysicalDeviceSparseImageFormatInfo2* pFormatInfo,uint32* pPropertyCount,SparseImageFormatProperties2* pProperties) => GetSparseImageFormatProperties2<DispatchLoaderStatic>(pFormatInfo,pPropertyCount,pProperties,.());
		public mixin GetSparseImageFormatProperties2(PhysicalDeviceSparseImageFormatInfo2* pFormatInfo)
		{
			uint32 count = 0;
			GetSparseImageFormatProperties2(pFormatInfo, &count, null);
			SparseImageFormatProperties2[] values = scope:: .[count];
			GetSparseImageFormatProperties2(pFormatInfo, &count, values.CArray());
			values
		}
		public void GetExternalBufferProperties<Dispatch>(PhysicalDeviceExternalBufferInfo* pExternalBufferInfo,ExternalBufferProperties* pExternalBufferProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceExternalBufferProperties(this,pExternalBufferInfo,pExternalBufferProperties); }
		public void GetExternalBufferProperties(PhysicalDeviceExternalBufferInfo* pExternalBufferInfo,ExternalBufferProperties* pExternalBufferProperties) => GetExternalBufferProperties<DispatchLoaderStatic>(pExternalBufferInfo,pExternalBufferProperties,.());
		public ExternalBufferProperties GetExternalBufferProperties<Dispatch>(PhysicalDeviceExternalBufferInfo* pExternalBufferInfo, Dispatch d) where Dispatch : var
		{
			ExternalBufferProperties _ret_val = ?;
			GetExternalBufferProperties(pExternalBufferInfo, &_ret_val, d);
			return _ret_val;
		}
		public ExternalBufferProperties GetExternalBufferProperties(PhysicalDeviceExternalBufferInfo* pExternalBufferInfo) => GetExternalBufferProperties<DispatchLoaderStatic>(pExternalBufferInfo,.());
		public void GetExternalFenceProperties<Dispatch>(PhysicalDeviceExternalFenceInfo* pExternalFenceInfo,ExternalFenceProperties* pExternalFenceProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceExternalFenceProperties(this,pExternalFenceInfo,pExternalFenceProperties); }
		public void GetExternalFenceProperties(PhysicalDeviceExternalFenceInfo* pExternalFenceInfo,ExternalFenceProperties* pExternalFenceProperties) => GetExternalFenceProperties<DispatchLoaderStatic>(pExternalFenceInfo,pExternalFenceProperties,.());
		public ExternalFenceProperties GetExternalFenceProperties<Dispatch>(PhysicalDeviceExternalFenceInfo* pExternalFenceInfo, Dispatch d) where Dispatch : var
		{
			ExternalFenceProperties _ret_val = ?;
			GetExternalFenceProperties(pExternalFenceInfo, &_ret_val, d);
			return _ret_val;
		}
		public ExternalFenceProperties GetExternalFenceProperties(PhysicalDeviceExternalFenceInfo* pExternalFenceInfo) => GetExternalFenceProperties<DispatchLoaderStatic>(pExternalFenceInfo,.());
		public void GetExternalSemaphoreProperties<Dispatch>(PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo,ExternalSemaphoreProperties* pExternalSemaphoreProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceExternalSemaphoreProperties(this,pExternalSemaphoreInfo,pExternalSemaphoreProperties); }
		public void GetExternalSemaphoreProperties(PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo,ExternalSemaphoreProperties* pExternalSemaphoreProperties) => GetExternalSemaphoreProperties<DispatchLoaderStatic>(pExternalSemaphoreInfo,pExternalSemaphoreProperties,.());
		public ExternalSemaphoreProperties GetExternalSemaphoreProperties<Dispatch>(PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo, Dispatch d) where Dispatch : var
		{
			ExternalSemaphoreProperties _ret_val = ?;
			GetExternalSemaphoreProperties(pExternalSemaphoreInfo, &_ret_val, d);
			return _ret_val;
		}
		public ExternalSemaphoreProperties GetExternalSemaphoreProperties(PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo) => GetExternalSemaphoreProperties<DispatchLoaderStatic>(pExternalSemaphoreInfo,.());
		public Result GetSurfaceSupportKHR<Dispatch>(uint32 queueFamilyIndex,SurfaceKHR surface,Bool32* pSupported, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceSurfaceSupportKHR(this,queueFamilyIndex,surface,pSupported); }
		public Result GetSurfaceSupportKHR(uint32 queueFamilyIndex,SurfaceKHR surface,Bool32* pSupported) => GetSurfaceSupportKHR<DispatchLoaderStatic>(queueFamilyIndex,surface,pSupported,.());
		public Result<Bool32, Vulkan.Result> GetSurfaceSupportKHR<Dispatch>(uint32 queueFamilyIndex,SurfaceKHR surface, Dispatch d) where Dispatch : var
		{
			Bool32 _ret_val = ?;
			let result = GetSurfaceSupportKHR(queueFamilyIndex,surface, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<Bool32, Vulkan.Result> GetSurfaceSupportKHR(uint32 queueFamilyIndex,SurfaceKHR surface) => GetSurfaceSupportKHR<DispatchLoaderStatic>(queueFamilyIndex,surface,.());
		public Result GetSurfaceCapabilitiesKHR<Dispatch>(SurfaceKHR surface,SurfaceCapabilitiesKHR* pSurfaceCapabilities, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceSurfaceCapabilitiesKHR(this,surface,pSurfaceCapabilities); }
		public Result GetSurfaceCapabilitiesKHR(SurfaceKHR surface,SurfaceCapabilitiesKHR* pSurfaceCapabilities) => GetSurfaceCapabilitiesKHR<DispatchLoaderStatic>(surface,pSurfaceCapabilities,.());
		public Result<SurfaceCapabilitiesKHR, Vulkan.Result> GetSurfaceCapabilitiesKHR<Dispatch>(SurfaceKHR surface, Dispatch d) where Dispatch : var
		{
			SurfaceCapabilitiesKHR _ret_val = ?;
			let result = GetSurfaceCapabilitiesKHR(surface, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<SurfaceCapabilitiesKHR, Vulkan.Result> GetSurfaceCapabilitiesKHR(SurfaceKHR surface) => GetSurfaceCapabilitiesKHR<DispatchLoaderStatic>(surface,.());
		public Result GetSurfaceFormatsKHR<Dispatch>(SurfaceKHR surface,uint32* pSurfaceFormatCount,SurfaceFormatKHR* pSurfaceFormats, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceSurfaceFormatsKHR(this,surface,pSurfaceFormatCount,pSurfaceFormats); }
		public Result GetSurfaceFormatsKHR(SurfaceKHR surface,uint32* pSurfaceFormatCount,SurfaceFormatKHR* pSurfaceFormats) => GetSurfaceFormatsKHR<DispatchLoaderStatic>(surface,pSurfaceFormatCount,pSurfaceFormats,.());
		public mixin GetSurfaceFormatsKHR(SurfaceKHR surface)
		{
			uint32 count = 0;
			GetSurfaceFormatsKHR(surface, &count, null);
			SurfaceFormatKHR[] values = scope:: .[count];
			let result = GetSurfaceFormatsKHR(surface, &count, values.CArray());
			if(result != .Success) Result<SurfaceFormatKHR[], Vulkan.Result>.Err(result);
			Result<SurfaceFormatKHR[], Vulkan.Result>.Ok(values)
		}
		public Result GetSurfacePresentModesKHR<Dispatch>(SurfaceKHR surface,uint32* pPresentModeCount,PresentModeKHR* pPresentModes, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceSurfacePresentModesKHR(this,surface,pPresentModeCount,pPresentModes); }
		public Result GetSurfacePresentModesKHR(SurfaceKHR surface,uint32* pPresentModeCount,PresentModeKHR* pPresentModes) => GetSurfacePresentModesKHR<DispatchLoaderStatic>(surface,pPresentModeCount,pPresentModes,.());
		public mixin GetSurfacePresentModesKHR(SurfaceKHR surface)
		{
			uint32 count = 0;
			GetSurfacePresentModesKHR(surface, &count, null);
			PresentModeKHR[] values = scope:: .[count];
			let result = GetSurfacePresentModesKHR(surface, &count, values.CArray());
			if(result != .Success) Result<PresentModeKHR[], Vulkan.Result>.Err(result);
			Result<PresentModeKHR[], Vulkan.Result>.Ok(values)
		}
		public Result GetPresentRectanglesKHR<Dispatch>(SurfaceKHR surface,uint32* pRectCount,Rect2D* pRects, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDevicePresentRectanglesKHR(this,surface,pRectCount,pRects); }
		public Result GetPresentRectanglesKHR(SurfaceKHR surface,uint32* pRectCount,Rect2D* pRects) => GetPresentRectanglesKHR<DispatchLoaderStatic>(surface,pRectCount,pRects,.());
		public mixin GetPresentRectanglesKHR(SurfaceKHR surface)
		{
			uint32 count = 0;
			GetPresentRectanglesKHR(surface, &count, null);
			Rect2D[] values = scope:: .[count];
			let result = GetPresentRectanglesKHR(surface, &count, values.CArray());
			if(result != .Success) Result<Rect2D[], Vulkan.Result>.Err(result);
			Result<Rect2D[], Vulkan.Result>.Ok(values)
		}
		public Result GetDisplayPropertiesKHR<Dispatch>(uint32* pPropertyCount,DisplayPropertiesKHR* pProperties, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceDisplayPropertiesKHR(this,pPropertyCount,pProperties); }
		public Result GetDisplayPropertiesKHR(uint32* pPropertyCount,DisplayPropertiesKHR* pProperties) => GetDisplayPropertiesKHR<DispatchLoaderStatic>(pPropertyCount,pProperties,.());
		public mixin GetDisplayPropertiesKHR()
		{
			uint32 count = 0;
			GetDisplayPropertiesKHR( &count, null);
			DisplayPropertiesKHR[] values = scope:: .[count];
			let result = GetDisplayPropertiesKHR( &count, values.CArray());
			if(result != .Success) Result<DisplayPropertiesKHR[], Vulkan.Result>.Err(result);
			Result<DisplayPropertiesKHR[], Vulkan.Result>.Ok(values)
		}
		public Result GetDisplayPlanePropertiesKHR<Dispatch>(uint32* pPropertyCount,DisplayPlanePropertiesKHR* pProperties, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceDisplayPlanePropertiesKHR(this,pPropertyCount,pProperties); }
		public Result GetDisplayPlanePropertiesKHR(uint32* pPropertyCount,DisplayPlanePropertiesKHR* pProperties) => GetDisplayPlanePropertiesKHR<DispatchLoaderStatic>(pPropertyCount,pProperties,.());
		public mixin GetDisplayPlanePropertiesKHR()
		{
			uint32 count = 0;
			GetDisplayPlanePropertiesKHR( &count, null);
			DisplayPlanePropertiesKHR[] values = scope:: .[count];
			let result = GetDisplayPlanePropertiesKHR( &count, values.CArray());
			if(result != .Success) Result<DisplayPlanePropertiesKHR[], Vulkan.Result>.Err(result);
			Result<DisplayPlanePropertiesKHR[], Vulkan.Result>.Ok(values)
		}
		public Result GetDisplayPlaneSupportedDisplaysKHR<Dispatch>(uint32 planeIndex,uint32* pDisplayCount,DisplayKHR* pDisplays, Dispatch d) where Dispatch : var { return d.vkGetDisplayPlaneSupportedDisplaysKHR(this,planeIndex,pDisplayCount,pDisplays); }
		public Result GetDisplayPlaneSupportedDisplaysKHR(uint32 planeIndex,uint32* pDisplayCount,DisplayKHR* pDisplays) => GetDisplayPlaneSupportedDisplaysKHR<DispatchLoaderStatic>(planeIndex,pDisplayCount,pDisplays,.());
		public mixin GetDisplayPlaneSupportedDisplaysKHR(uint32 planeIndex)
		{
			uint32 count = 0;
			GetDisplayPlaneSupportedDisplaysKHR(planeIndex, &count, null);
			DisplayKHR[] values = scope:: .[count];
			let result = GetDisplayPlaneSupportedDisplaysKHR(planeIndex, &count, values.CArray());
			if(result != .Success) Result<DisplayKHR[], Vulkan.Result>.Err(result);
			Result<DisplayKHR[], Vulkan.Result>.Ok(values)
		}
		public Result GetDisplayModePropertiesKHR<Dispatch>(DisplayKHR display,uint32* pPropertyCount,DisplayModePropertiesKHR* pProperties, Dispatch d) where Dispatch : var { return d.vkGetDisplayModePropertiesKHR(this,display,pPropertyCount,pProperties); }
		public Result GetDisplayModePropertiesKHR(DisplayKHR display,uint32* pPropertyCount,DisplayModePropertiesKHR* pProperties) => GetDisplayModePropertiesKHR<DispatchLoaderStatic>(display,pPropertyCount,pProperties,.());
		public mixin GetDisplayModePropertiesKHR(DisplayKHR display)
		{
			uint32 count = 0;
			GetDisplayModePropertiesKHR(display, &count, null);
			DisplayModePropertiesKHR[] values = scope:: .[count];
			let result = GetDisplayModePropertiesKHR(display, &count, values.CArray());
			if(result != .Success) Result<DisplayModePropertiesKHR[], Vulkan.Result>.Err(result);
			Result<DisplayModePropertiesKHR[], Vulkan.Result>.Ok(values)
		}
		public Result CreateDisplayModeKHR<Dispatch>(DisplayKHR display,DisplayModeCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,DisplayModeKHR* pMode, Dispatch d) where Dispatch : var { return d.vkCreateDisplayModeKHR(this,display,pCreateInfo,pAllocator,pMode); }
		public Result CreateDisplayModeKHR(DisplayKHR display,DisplayModeCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,DisplayModeKHR* pMode) => CreateDisplayModeKHR<DispatchLoaderStatic>(display,pCreateInfo,pAllocator,pMode,.());
		public Result<DisplayModeKHR, Vulkan.Result> CreateDisplayModeKHR<Dispatch>(DisplayKHR display,DisplayModeCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			DisplayModeKHR _ret_val = ?;
			let result = CreateDisplayModeKHR(display,pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<DisplayModeKHR, Vulkan.Result> CreateDisplayModeKHR(DisplayKHR display,DisplayModeCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator) => CreateDisplayModeKHR<DispatchLoaderStatic>(display,pCreateInfo,pAllocator,.());
		public Result GetDisplayPlaneCapabilitiesKHR<Dispatch>(DisplayModeKHR mode,uint32 planeIndex,DisplayPlaneCapabilitiesKHR* pCapabilities, Dispatch d) where Dispatch : var { return d.vkGetDisplayPlaneCapabilitiesKHR(this,mode,planeIndex,pCapabilities); }
		public Result GetDisplayPlaneCapabilitiesKHR(DisplayModeKHR mode,uint32 planeIndex,DisplayPlaneCapabilitiesKHR* pCapabilities) => GetDisplayPlaneCapabilitiesKHR<DispatchLoaderStatic>(mode,planeIndex,pCapabilities,.());
		public Result<DisplayPlaneCapabilitiesKHR, Vulkan.Result> GetDisplayPlaneCapabilitiesKHR<Dispatch>(DisplayModeKHR mode,uint32 planeIndex, Dispatch d) where Dispatch : var
		{
			DisplayPlaneCapabilitiesKHR _ret_val = ?;
			let result = GetDisplayPlaneCapabilitiesKHR(mode,planeIndex, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<DisplayPlaneCapabilitiesKHR, Vulkan.Result> GetDisplayPlaneCapabilitiesKHR(DisplayModeKHR mode,uint32 planeIndex) => GetDisplayPlaneCapabilitiesKHR<DispatchLoaderStatic>(mode,planeIndex,.());
		public void GetFeatures2KHR<Dispatch>(PhysicalDeviceFeatures2* pFeatures, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceFeatures2KHR(this,pFeatures); }
		public void GetFeatures2KHR(PhysicalDeviceFeatures2* pFeatures) => GetFeatures2KHR<DispatchLoaderStatic>(pFeatures,.());
		public PhysicalDeviceFeatures2 GetFeatures2KHR<Dispatch>( Dispatch d) where Dispatch : var
		{
			PhysicalDeviceFeatures2 _ret_val = ?;
			GetFeatures2KHR( &_ret_val, d);
			return _ret_val;
		}
		public PhysicalDeviceFeatures2 GetFeatures2KHR() => GetFeatures2KHR<DispatchLoaderStatic>(.());
		public void GetProperties2KHR<Dispatch>(PhysicalDeviceProperties2* pProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceProperties2KHR(this,pProperties); }
		public void GetProperties2KHR(PhysicalDeviceProperties2* pProperties) => GetProperties2KHR<DispatchLoaderStatic>(pProperties,.());
		public PhysicalDeviceProperties2 GetProperties2KHR<Dispatch>( Dispatch d) where Dispatch : var
		{
			PhysicalDeviceProperties2 _ret_val = ?;
			GetProperties2KHR( &_ret_val, d);
			return _ret_val;
		}
		public PhysicalDeviceProperties2 GetProperties2KHR() => GetProperties2KHR<DispatchLoaderStatic>(.());
		public void GetFormatProperties2KHR<Dispatch>(Format format,FormatProperties2* pFormatProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceFormatProperties2KHR(this,format,pFormatProperties); }
		public void GetFormatProperties2KHR(Format format,FormatProperties2* pFormatProperties) => GetFormatProperties2KHR<DispatchLoaderStatic>(format,pFormatProperties,.());
		public FormatProperties2 GetFormatProperties2KHR<Dispatch>(Format format, Dispatch d) where Dispatch : var
		{
			FormatProperties2 _ret_val = ?;
			GetFormatProperties2KHR(format, &_ret_val, d);
			return _ret_val;
		}
		public FormatProperties2 GetFormatProperties2KHR(Format format) => GetFormatProperties2KHR<DispatchLoaderStatic>(format,.());
		public Result GetImageFormatProperties2KHR<Dispatch>(PhysicalDeviceImageFormatInfo2* pImageFormatInfo,ImageFormatProperties2* pImageFormatProperties, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceImageFormatProperties2KHR(this,pImageFormatInfo,pImageFormatProperties); }
		public Result GetImageFormatProperties2KHR(PhysicalDeviceImageFormatInfo2* pImageFormatInfo,ImageFormatProperties2* pImageFormatProperties) => GetImageFormatProperties2KHR<DispatchLoaderStatic>(pImageFormatInfo,pImageFormatProperties,.());
		public Result<ImageFormatProperties2, Vulkan.Result> GetImageFormatProperties2KHR<Dispatch>(PhysicalDeviceImageFormatInfo2* pImageFormatInfo, Dispatch d) where Dispatch : var
		{
			ImageFormatProperties2 _ret_val = ?;
			let result = GetImageFormatProperties2KHR(pImageFormatInfo, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<ImageFormatProperties2, Vulkan.Result> GetImageFormatProperties2KHR(PhysicalDeviceImageFormatInfo2* pImageFormatInfo) => GetImageFormatProperties2KHR<DispatchLoaderStatic>(pImageFormatInfo,.());
		public void GetQueueFamilyProperties2KHR<Dispatch>(uint32* pQueueFamilyPropertyCount,QueueFamilyProperties2* pQueueFamilyProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceQueueFamilyProperties2KHR(this,pQueueFamilyPropertyCount,pQueueFamilyProperties); }
		public void GetQueueFamilyProperties2KHR(uint32* pQueueFamilyPropertyCount,QueueFamilyProperties2* pQueueFamilyProperties) => GetQueueFamilyProperties2KHR<DispatchLoaderStatic>(pQueueFamilyPropertyCount,pQueueFamilyProperties,.());
		public mixin GetQueueFamilyProperties2KHR()
		{
			uint32 count = 0;
			GetQueueFamilyProperties2KHR( &count, null);
			QueueFamilyProperties2[] values = scope:: .[count];
			GetQueueFamilyProperties2KHR( &count, values.CArray());
			values
		}
		public void GetMemoryProperties2KHR<Dispatch>(PhysicalDeviceMemoryProperties2* pMemoryProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceMemoryProperties2KHR(this,pMemoryProperties); }
		public void GetMemoryProperties2KHR(PhysicalDeviceMemoryProperties2* pMemoryProperties) => GetMemoryProperties2KHR<DispatchLoaderStatic>(pMemoryProperties,.());
		public PhysicalDeviceMemoryProperties2 GetMemoryProperties2KHR<Dispatch>( Dispatch d) where Dispatch : var
		{
			PhysicalDeviceMemoryProperties2 _ret_val = ?;
			GetMemoryProperties2KHR( &_ret_val, d);
			return _ret_val;
		}
		public PhysicalDeviceMemoryProperties2 GetMemoryProperties2KHR() => GetMemoryProperties2KHR<DispatchLoaderStatic>(.());
		public void GetSparseImageFormatProperties2KHR<Dispatch>(PhysicalDeviceSparseImageFormatInfo2* pFormatInfo,uint32* pPropertyCount,SparseImageFormatProperties2* pProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceSparseImageFormatProperties2KHR(this,pFormatInfo,pPropertyCount,pProperties); }
		public void GetSparseImageFormatProperties2KHR(PhysicalDeviceSparseImageFormatInfo2* pFormatInfo,uint32* pPropertyCount,SparseImageFormatProperties2* pProperties) => GetSparseImageFormatProperties2KHR<DispatchLoaderStatic>(pFormatInfo,pPropertyCount,pProperties,.());
		public mixin GetSparseImageFormatProperties2KHR(PhysicalDeviceSparseImageFormatInfo2* pFormatInfo)
		{
			uint32 count = 0;
			GetSparseImageFormatProperties2KHR(pFormatInfo, &count, null);
			SparseImageFormatProperties2[] values = scope:: .[count];
			GetSparseImageFormatProperties2KHR(pFormatInfo, &count, values.CArray());
			values
		}
		public void GetExternalBufferPropertiesKHR<Dispatch>(PhysicalDeviceExternalBufferInfo* pExternalBufferInfo,ExternalBufferProperties* pExternalBufferProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceExternalBufferPropertiesKHR(this,pExternalBufferInfo,pExternalBufferProperties); }
		public void GetExternalBufferPropertiesKHR(PhysicalDeviceExternalBufferInfo* pExternalBufferInfo,ExternalBufferProperties* pExternalBufferProperties) => GetExternalBufferPropertiesKHR<DispatchLoaderStatic>(pExternalBufferInfo,pExternalBufferProperties,.());
		public ExternalBufferProperties GetExternalBufferPropertiesKHR<Dispatch>(PhysicalDeviceExternalBufferInfo* pExternalBufferInfo, Dispatch d) where Dispatch : var
		{
			ExternalBufferProperties _ret_val = ?;
			GetExternalBufferPropertiesKHR(pExternalBufferInfo, &_ret_val, d);
			return _ret_val;
		}
		public ExternalBufferProperties GetExternalBufferPropertiesKHR(PhysicalDeviceExternalBufferInfo* pExternalBufferInfo) => GetExternalBufferPropertiesKHR<DispatchLoaderStatic>(pExternalBufferInfo,.());
		public void GetExternalSemaphorePropertiesKHR<Dispatch>(PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo,ExternalSemaphoreProperties* pExternalSemaphoreProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceExternalSemaphorePropertiesKHR(this,pExternalSemaphoreInfo,pExternalSemaphoreProperties); }
		public void GetExternalSemaphorePropertiesKHR(PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo,ExternalSemaphoreProperties* pExternalSemaphoreProperties) => GetExternalSemaphorePropertiesKHR<DispatchLoaderStatic>(pExternalSemaphoreInfo,pExternalSemaphoreProperties,.());
		public ExternalSemaphoreProperties GetExternalSemaphorePropertiesKHR<Dispatch>(PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo, Dispatch d) where Dispatch : var
		{
			ExternalSemaphoreProperties _ret_val = ?;
			GetExternalSemaphorePropertiesKHR(pExternalSemaphoreInfo, &_ret_val, d);
			return _ret_val;
		}
		public ExternalSemaphoreProperties GetExternalSemaphorePropertiesKHR(PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo) => GetExternalSemaphorePropertiesKHR<DispatchLoaderStatic>(pExternalSemaphoreInfo,.());
		public void GetExternalFencePropertiesKHR<Dispatch>(PhysicalDeviceExternalFenceInfo* pExternalFenceInfo,ExternalFenceProperties* pExternalFenceProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceExternalFencePropertiesKHR(this,pExternalFenceInfo,pExternalFenceProperties); }
		public void GetExternalFencePropertiesKHR(PhysicalDeviceExternalFenceInfo* pExternalFenceInfo,ExternalFenceProperties* pExternalFenceProperties) => GetExternalFencePropertiesKHR<DispatchLoaderStatic>(pExternalFenceInfo,pExternalFenceProperties,.());
		public ExternalFenceProperties GetExternalFencePropertiesKHR<Dispatch>(PhysicalDeviceExternalFenceInfo* pExternalFenceInfo, Dispatch d) where Dispatch : var
		{
			ExternalFenceProperties _ret_val = ?;
			GetExternalFencePropertiesKHR(pExternalFenceInfo, &_ret_val, d);
			return _ret_val;
		}
		public ExternalFenceProperties GetExternalFencePropertiesKHR(PhysicalDeviceExternalFenceInfo* pExternalFenceInfo) => GetExternalFencePropertiesKHR<DispatchLoaderStatic>(pExternalFenceInfo,.());
		public Result EnumerateQueueFamilyPerformanceQueryCountersKHR<Dispatch>(uint32 queueFamilyIndex,uint32* pCounterCount,PerformanceCounterKHR* pCounters,PerformanceCounterDescriptionKHR* pCounterDescriptions, Dispatch d) where Dispatch : var { return d.vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(this,queueFamilyIndex,pCounterCount,pCounters,pCounterDescriptions); }
		public Result EnumerateQueueFamilyPerformanceQueryCountersKHR(uint32 queueFamilyIndex,uint32* pCounterCount,PerformanceCounterKHR* pCounters,PerformanceCounterDescriptionKHR* pCounterDescriptions) => EnumerateQueueFamilyPerformanceQueryCountersKHR<DispatchLoaderStatic>(queueFamilyIndex,pCounterCount,pCounters,pCounterDescriptions,.());
		public void GetQueueFamilyPerformanceQueryPassesKHR<Dispatch>(QueryPoolPerformanceCreateInfoKHR* pPerformanceQueryCreateInfo,uint32* pNumPasses, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(this,pPerformanceQueryCreateInfo,pNumPasses); }
		public void GetQueueFamilyPerformanceQueryPassesKHR(QueryPoolPerformanceCreateInfoKHR* pPerformanceQueryCreateInfo,uint32* pNumPasses) => GetQueueFamilyPerformanceQueryPassesKHR<DispatchLoaderStatic>(pPerformanceQueryCreateInfo,pNumPasses,.());
		public uint32 GetQueueFamilyPerformanceQueryPassesKHR<Dispatch>(QueryPoolPerformanceCreateInfoKHR* pPerformanceQueryCreateInfo, Dispatch d) where Dispatch : var
		{
			uint32 _ret_val = ?;
			GetQueueFamilyPerformanceQueryPassesKHR(pPerformanceQueryCreateInfo, &_ret_val, d);
			return _ret_val;
		}
		public uint32 GetQueueFamilyPerformanceQueryPassesKHR(QueryPoolPerformanceCreateInfoKHR* pPerformanceQueryCreateInfo) => GetQueueFamilyPerformanceQueryPassesKHR<DispatchLoaderStatic>(pPerformanceQueryCreateInfo,.());
		public Result GetSurfaceCapabilities2KHR<Dispatch>(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo,SurfaceCapabilities2KHR* pSurfaceCapabilities, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceSurfaceCapabilities2KHR(this,pSurfaceInfo,pSurfaceCapabilities); }
		public Result GetSurfaceCapabilities2KHR(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo,SurfaceCapabilities2KHR* pSurfaceCapabilities) => GetSurfaceCapabilities2KHR<DispatchLoaderStatic>(pSurfaceInfo,pSurfaceCapabilities,.());
		public Result<SurfaceCapabilities2KHR, Vulkan.Result> GetSurfaceCapabilities2KHR<Dispatch>(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, Dispatch d) where Dispatch : var
		{
			SurfaceCapabilities2KHR _ret_val = ?;
			let result = GetSurfaceCapabilities2KHR(pSurfaceInfo, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<SurfaceCapabilities2KHR, Vulkan.Result> GetSurfaceCapabilities2KHR(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo) => GetSurfaceCapabilities2KHR<DispatchLoaderStatic>(pSurfaceInfo,.());
		public Result GetSurfaceFormats2KHR<Dispatch>(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo,uint32* pSurfaceFormatCount,SurfaceFormat2KHR* pSurfaceFormats, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceSurfaceFormats2KHR(this,pSurfaceInfo,pSurfaceFormatCount,pSurfaceFormats); }
		public Result GetSurfaceFormats2KHR(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo,uint32* pSurfaceFormatCount,SurfaceFormat2KHR* pSurfaceFormats) => GetSurfaceFormats2KHR<DispatchLoaderStatic>(pSurfaceInfo,pSurfaceFormatCount,pSurfaceFormats,.());
		public mixin GetSurfaceFormats2KHR(PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo)
		{
			uint32 count = 0;
			GetSurfaceFormats2KHR(pSurfaceInfo, &count, null);
			SurfaceFormat2KHR[] values = scope:: .[count];
			let result = GetSurfaceFormats2KHR(pSurfaceInfo, &count, values.CArray());
			if(result != .Success) Result<SurfaceFormat2KHR[], Vulkan.Result>.Err(result);
			Result<SurfaceFormat2KHR[], Vulkan.Result>.Ok(values)
		}
		public Result GetDisplayProperties2KHR<Dispatch>(uint32* pPropertyCount,DisplayProperties2KHR* pProperties, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceDisplayProperties2KHR(this,pPropertyCount,pProperties); }
		public Result GetDisplayProperties2KHR(uint32* pPropertyCount,DisplayProperties2KHR* pProperties) => GetDisplayProperties2KHR<DispatchLoaderStatic>(pPropertyCount,pProperties,.());
		public mixin GetDisplayProperties2KHR()
		{
			uint32 count = 0;
			GetDisplayProperties2KHR( &count, null);
			DisplayProperties2KHR[] values = scope:: .[count];
			let result = GetDisplayProperties2KHR( &count, values.CArray());
			if(result != .Success) Result<DisplayProperties2KHR[], Vulkan.Result>.Err(result);
			Result<DisplayProperties2KHR[], Vulkan.Result>.Ok(values)
		}
		public Result GetDisplayPlaneProperties2KHR<Dispatch>(uint32* pPropertyCount,DisplayPlaneProperties2KHR* pProperties, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceDisplayPlaneProperties2KHR(this,pPropertyCount,pProperties); }
		public Result GetDisplayPlaneProperties2KHR(uint32* pPropertyCount,DisplayPlaneProperties2KHR* pProperties) => GetDisplayPlaneProperties2KHR<DispatchLoaderStatic>(pPropertyCount,pProperties,.());
		public mixin GetDisplayPlaneProperties2KHR()
		{
			uint32 count = 0;
			GetDisplayPlaneProperties2KHR( &count, null);
			DisplayPlaneProperties2KHR[] values = scope:: .[count];
			let result = GetDisplayPlaneProperties2KHR( &count, values.CArray());
			if(result != .Success) Result<DisplayPlaneProperties2KHR[], Vulkan.Result>.Err(result);
			Result<DisplayPlaneProperties2KHR[], Vulkan.Result>.Ok(values)
		}
		public Result GetDisplayModeProperties2KHR<Dispatch>(DisplayKHR display,uint32* pPropertyCount,DisplayModeProperties2KHR* pProperties, Dispatch d) where Dispatch : var { return d.vkGetDisplayModeProperties2KHR(this,display,pPropertyCount,pProperties); }
		public Result GetDisplayModeProperties2KHR(DisplayKHR display,uint32* pPropertyCount,DisplayModeProperties2KHR* pProperties) => GetDisplayModeProperties2KHR<DispatchLoaderStatic>(display,pPropertyCount,pProperties,.());
		public mixin GetDisplayModeProperties2KHR(DisplayKHR display)
		{
			uint32 count = 0;
			GetDisplayModeProperties2KHR(display, &count, null);
			DisplayModeProperties2KHR[] values = scope:: .[count];
			let result = GetDisplayModeProperties2KHR(display, &count, values.CArray());
			if(result != .Success) Result<DisplayModeProperties2KHR[], Vulkan.Result>.Err(result);
			Result<DisplayModeProperties2KHR[], Vulkan.Result>.Ok(values)
		}
		public Result GetDisplayPlaneCapabilities2KHR<Dispatch>(DisplayPlaneInfo2KHR* pDisplayPlaneInfo,DisplayPlaneCapabilities2KHR* pCapabilities, Dispatch d) where Dispatch : var { return d.vkGetDisplayPlaneCapabilities2KHR(this,pDisplayPlaneInfo,pCapabilities); }
		public Result GetDisplayPlaneCapabilities2KHR(DisplayPlaneInfo2KHR* pDisplayPlaneInfo,DisplayPlaneCapabilities2KHR* pCapabilities) => GetDisplayPlaneCapabilities2KHR<DispatchLoaderStatic>(pDisplayPlaneInfo,pCapabilities,.());
		public Result<DisplayPlaneCapabilities2KHR, Vulkan.Result> GetDisplayPlaneCapabilities2KHR<Dispatch>(DisplayPlaneInfo2KHR* pDisplayPlaneInfo, Dispatch d) where Dispatch : var
		{
			DisplayPlaneCapabilities2KHR _ret_val = ?;
			let result = GetDisplayPlaneCapabilities2KHR(pDisplayPlaneInfo, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<DisplayPlaneCapabilities2KHR, Vulkan.Result> GetDisplayPlaneCapabilities2KHR(DisplayPlaneInfo2KHR* pDisplayPlaneInfo) => GetDisplayPlaneCapabilities2KHR<DispatchLoaderStatic>(pDisplayPlaneInfo,.());
		public Result GetExternalImageFormatPropertiesNV<Dispatch>(Format format,ImageType type,ImageTiling tiling,ImageUsageFlags usage,ImageCreateFlags flags,ExternalMemoryHandleTypeFlagsNV externalHandleType,ExternalImageFormatPropertiesNV* pExternalImageFormatProperties, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceExternalImageFormatPropertiesNV(this,format,type,tiling,usage,flags,externalHandleType,pExternalImageFormatProperties); }
		public Result GetExternalImageFormatPropertiesNV(Format format,ImageType type,ImageTiling tiling,ImageUsageFlags usage,ImageCreateFlags flags,ExternalMemoryHandleTypeFlagsNV externalHandleType,ExternalImageFormatPropertiesNV* pExternalImageFormatProperties) => GetExternalImageFormatPropertiesNV<DispatchLoaderStatic>(format,type,tiling,usage,flags,externalHandleType,pExternalImageFormatProperties,.());
		public Result<ExternalImageFormatPropertiesNV, Vulkan.Result> GetExternalImageFormatPropertiesNV<Dispatch>(Format format,ImageType type,ImageTiling tiling,ImageUsageFlags usage,ImageCreateFlags flags,ExternalMemoryHandleTypeFlagsNV externalHandleType, Dispatch d) where Dispatch : var
		{
			ExternalImageFormatPropertiesNV _ret_val = ?;
			let result = GetExternalImageFormatPropertiesNV(format,type,tiling,usage,flags,externalHandleType, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<ExternalImageFormatPropertiesNV, Vulkan.Result> GetExternalImageFormatPropertiesNV(Format format,ImageType type,ImageTiling tiling,ImageUsageFlags usage,ImageCreateFlags flags,ExternalMemoryHandleTypeFlagsNV externalHandleType) => GetExternalImageFormatPropertiesNV<DispatchLoaderStatic>(format,type,tiling,usage,flags,externalHandleType,.());
		public Result ReleaseDisplayEXT<Dispatch>(DisplayKHR display, Dispatch d) where Dispatch : var { return d.vkReleaseDisplayEXT(this,display); }
		public Result ReleaseDisplayEXT(DisplayKHR display) => ReleaseDisplayEXT<DispatchLoaderStatic>(display,.());
		public Result GetSurfaceCapabilities2EXT<Dispatch>(SurfaceKHR surface,SurfaceCapabilities2EXT* pSurfaceCapabilities, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceSurfaceCapabilities2EXT(this,surface,pSurfaceCapabilities); }
		public Result GetSurfaceCapabilities2EXT(SurfaceKHR surface,SurfaceCapabilities2EXT* pSurfaceCapabilities) => GetSurfaceCapabilities2EXT<DispatchLoaderStatic>(surface,pSurfaceCapabilities,.());
		public Result<SurfaceCapabilities2EXT, Vulkan.Result> GetSurfaceCapabilities2EXT<Dispatch>(SurfaceKHR surface, Dispatch d) where Dispatch : var
		{
			SurfaceCapabilities2EXT _ret_val = ?;
			let result = GetSurfaceCapabilities2EXT(surface, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<SurfaceCapabilities2EXT, Vulkan.Result> GetSurfaceCapabilities2EXT(SurfaceKHR surface) => GetSurfaceCapabilities2EXT<DispatchLoaderStatic>(surface,.());
		public void GetMultisamplePropertiesEXT<Dispatch>(SampleCountFlags samples,MultisamplePropertiesEXT* pMultisampleProperties, Dispatch d) where Dispatch : var { d.vkGetPhysicalDeviceMultisamplePropertiesEXT(this,samples,pMultisampleProperties); }
		public void GetMultisamplePropertiesEXT(SampleCountFlags samples,MultisamplePropertiesEXT* pMultisampleProperties) => GetMultisamplePropertiesEXT<DispatchLoaderStatic>(samples,pMultisampleProperties,.());
		public MultisamplePropertiesEXT GetMultisamplePropertiesEXT<Dispatch>(SampleCountFlags samples, Dispatch d) where Dispatch : var
		{
			MultisamplePropertiesEXT _ret_val = ?;
			GetMultisamplePropertiesEXT(samples, &_ret_val, d);
			return _ret_val;
		}
		public MultisamplePropertiesEXT GetMultisamplePropertiesEXT(SampleCountFlags samples) => GetMultisamplePropertiesEXT<DispatchLoaderStatic>(samples,.());
		public Result GetCalibrateableTimeDomainsEXT<Dispatch>(uint32* pTimeDomainCount,TimeDomainEXT* pTimeDomains, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(this,pTimeDomainCount,pTimeDomains); }
		public Result GetCalibrateableTimeDomainsEXT(uint32* pTimeDomainCount,TimeDomainEXT* pTimeDomains) => GetCalibrateableTimeDomainsEXT<DispatchLoaderStatic>(pTimeDomainCount,pTimeDomains,.());
		public mixin GetCalibrateableTimeDomainsEXT()
		{
			uint32 count = 0;
			GetCalibrateableTimeDomainsEXT( &count, null);
			TimeDomainEXT[] values = scope:: .[count];
			let result = GetCalibrateableTimeDomainsEXT( &count, values.CArray());
			if(result != .Success) Result<TimeDomainEXT[], Vulkan.Result>.Err(result);
			Result<TimeDomainEXT[], Vulkan.Result>.Ok(values)
		}
		public Result GetToolPropertiesEXT<Dispatch>(uint32* pToolCount,PhysicalDeviceToolPropertiesEXT* pToolProperties, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceToolPropertiesEXT(this,pToolCount,pToolProperties); }
		public Result GetToolPropertiesEXT(uint32* pToolCount,PhysicalDeviceToolPropertiesEXT* pToolProperties) => GetToolPropertiesEXT<DispatchLoaderStatic>(pToolCount,pToolProperties,.());
		public mixin GetToolPropertiesEXT()
		{
			uint32 count = 0;
			GetToolPropertiesEXT( &count, null);
			PhysicalDeviceToolPropertiesEXT[] values = scope:: .[count];
			let result = GetToolPropertiesEXT( &count, values.CArray());
			if(result != .Success) Result<PhysicalDeviceToolPropertiesEXT[], Vulkan.Result>.Err(result);
			Result<PhysicalDeviceToolPropertiesEXT[], Vulkan.Result>.Ok(values)
		}
		public Result GetCooperativeMatrixPropertiesNV<Dispatch>(uint32* pPropertyCount,CooperativeMatrixPropertiesNV* pProperties, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(this,pPropertyCount,pProperties); }
		public Result GetCooperativeMatrixPropertiesNV(uint32* pPropertyCount,CooperativeMatrixPropertiesNV* pProperties) => GetCooperativeMatrixPropertiesNV<DispatchLoaderStatic>(pPropertyCount,pProperties,.());
		public mixin GetCooperativeMatrixPropertiesNV()
		{
			uint32 count = 0;
			GetCooperativeMatrixPropertiesNV( &count, null);
			CooperativeMatrixPropertiesNV[] values = scope:: .[count];
			let result = GetCooperativeMatrixPropertiesNV( &count, values.CArray());
			if(result != .Success) Result<CooperativeMatrixPropertiesNV[], Vulkan.Result>.Err(result);
			Result<CooperativeMatrixPropertiesNV[], Vulkan.Result>.Ok(values)
		}
		public Result GetSupportedFramebufferMixedSamplesCombinationsNV<Dispatch>(uint32* pCombinationCount,FramebufferMixedSamplesCombinationNV* pCombinations, Dispatch d) where Dispatch : var { return d.vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(this,pCombinationCount,pCombinations); }
		public Result GetSupportedFramebufferMixedSamplesCombinationsNV(uint32* pCombinationCount,FramebufferMixedSamplesCombinationNV* pCombinations) => GetSupportedFramebufferMixedSamplesCombinationsNV<DispatchLoaderStatic>(pCombinationCount,pCombinations,.());
		public mixin GetSupportedFramebufferMixedSamplesCombinationsNV()
		{
			uint32 count = 0;
			GetSupportedFramebufferMixedSamplesCombinationsNV( &count, null);
			FramebufferMixedSamplesCombinationNV[] values = scope:: .[count];
			let result = GetSupportedFramebufferMixedSamplesCombinationsNV( &count, values.CArray());
			if(result != .Success) Result<FramebufferMixedSamplesCombinationNV[], Vulkan.Result>.Err(result);
			Result<FramebufferMixedSamplesCombinationNV[], Vulkan.Result>.Ok(values)
		}
	}
	extension Device
	{
		public PFN_vkVoidFunction GetProcAddr<Dispatch>(char8* pName, Dispatch d) where Dispatch : var { return d.vkGetDeviceProcAddr(this,pName); }
		public PFN_vkVoidFunction GetProcAddr(char8* pName) => GetProcAddr<DispatchLoaderStatic>(pName,.());
		public void Destroy<Dispatch>(AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyDevice(this,pAllocator); }
		public void Destroy(AllocationCallbacks* pAllocator) => Destroy<DispatchLoaderStatic>(pAllocator,.());
		public void GetQueue<Dispatch>(uint32 queueFamilyIndex,uint32 queueIndex,Queue* pQueue, Dispatch d) where Dispatch : var { d.vkGetDeviceQueue(this,queueFamilyIndex,queueIndex,pQueue); }
		public void GetQueue(uint32 queueFamilyIndex,uint32 queueIndex,Queue* pQueue) => GetQueue<DispatchLoaderStatic>(queueFamilyIndex,queueIndex,pQueue,.());
		public Queue GetQueue<Dispatch>(uint32 queueFamilyIndex,uint32 queueIndex, Dispatch d) where Dispatch : var
		{
			Queue _ret_val = ?;
			GetQueue(queueFamilyIndex,queueIndex, &_ret_val, d);
			return _ret_val;
		}
		public Queue GetQueue(uint32 queueFamilyIndex,uint32 queueIndex) => GetQueue<DispatchLoaderStatic>(queueFamilyIndex,queueIndex,.());
		public Result WaitIdle<Dispatch>( Dispatch d) where Dispatch : var { return d.vkDeviceWaitIdle(this); }
		public Result WaitIdle() => WaitIdle<DispatchLoaderStatic>(.());
		public Result AllocateMemory<Dispatch>(MemoryAllocateInfo* pAllocateInfo,AllocationCallbacks* pAllocator,DeviceMemory* pMemory, Dispatch d) where Dispatch : var { return d.vkAllocateMemory(this,pAllocateInfo,pAllocator,pMemory); }
		public Result AllocateMemory(MemoryAllocateInfo* pAllocateInfo,AllocationCallbacks* pAllocator,DeviceMemory* pMemory) => AllocateMemory<DispatchLoaderStatic>(pAllocateInfo,pAllocator,pMemory,.());
		public void FreeMemory<Dispatch>(DeviceMemory memory,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkFreeMemory(this,memory,pAllocator); }
		public void FreeMemory(DeviceMemory memory,AllocationCallbacks* pAllocator) => FreeMemory<DispatchLoaderStatic>(memory,pAllocator,.());
		public Result MapMemory<Dispatch>(DeviceMemory memory,DeviceSize offset,DeviceSize size,MemoryMapFlags flags,void** ppData, Dispatch d) where Dispatch : var { return d.vkMapMemory(this,memory,offset,size,flags,ppData); }
		public Result MapMemory(DeviceMemory memory,DeviceSize offset,DeviceSize size,MemoryMapFlags flags,void** ppData) => MapMemory<DispatchLoaderStatic>(memory,offset,size,flags,ppData,.());
		public void UnmapMemory<Dispatch>(DeviceMemory memory, Dispatch d) where Dispatch : var { d.vkUnmapMemory(this,memory); }
		public void UnmapMemory(DeviceMemory memory) => UnmapMemory<DispatchLoaderStatic>(memory,.());
		public Result FlushMappedMemoryRanges<Dispatch>(uint32 memoryRangeCount,MappedMemoryRange* pMemoryRanges, Dispatch d) where Dispatch : var { return d.vkFlushMappedMemoryRanges(this,memoryRangeCount,pMemoryRanges); }
		public Result FlushMappedMemoryRanges(uint32 memoryRangeCount,MappedMemoryRange* pMemoryRanges) => FlushMappedMemoryRanges<DispatchLoaderStatic>(memoryRangeCount,pMemoryRanges,.());
		public Result InvalidateMappedMemoryRanges<Dispatch>(uint32 memoryRangeCount,MappedMemoryRange* pMemoryRanges, Dispatch d) where Dispatch : var { return d.vkInvalidateMappedMemoryRanges(this,memoryRangeCount,pMemoryRanges); }
		public Result InvalidateMappedMemoryRanges(uint32 memoryRangeCount,MappedMemoryRange* pMemoryRanges) => InvalidateMappedMemoryRanges<DispatchLoaderStatic>(memoryRangeCount,pMemoryRanges,.());
		public void GetMemoryCommitment<Dispatch>(DeviceMemory memory,DeviceSize* pCommittedMemoryInBytes, Dispatch d) where Dispatch : var { d.vkGetDeviceMemoryCommitment(this,memory,pCommittedMemoryInBytes); }
		public void GetMemoryCommitment(DeviceMemory memory,DeviceSize* pCommittedMemoryInBytes) => GetMemoryCommitment<DispatchLoaderStatic>(memory,pCommittedMemoryInBytes,.());
		public DeviceSize GetMemoryCommitment<Dispatch>(DeviceMemory memory, Dispatch d) where Dispatch : var
		{
			DeviceSize _ret_val = ?;
			GetMemoryCommitment(memory, &_ret_val, d);
			return _ret_val;
		}
		public DeviceSize GetMemoryCommitment(DeviceMemory memory) => GetMemoryCommitment<DispatchLoaderStatic>(memory,.());
		public Result BindBufferMemory<Dispatch>(Buffer buffer,DeviceMemory memory,DeviceSize memoryOffset, Dispatch d) where Dispatch : var { return d.vkBindBufferMemory(this,buffer,memory,memoryOffset); }
		public Result BindBufferMemory(Buffer buffer,DeviceMemory memory,DeviceSize memoryOffset) => BindBufferMemory<DispatchLoaderStatic>(buffer,memory,memoryOffset,.());
		public Result BindImageMemory<Dispatch>(Image image,DeviceMemory memory,DeviceSize memoryOffset, Dispatch d) where Dispatch : var { return d.vkBindImageMemory(this,image,memory,memoryOffset); }
		public Result BindImageMemory(Image image,DeviceMemory memory,DeviceSize memoryOffset) => BindImageMemory<DispatchLoaderStatic>(image,memory,memoryOffset,.());
		public void GetBufferMemoryRequirements<Dispatch>(Buffer buffer,MemoryRequirements* pMemoryRequirements, Dispatch d) where Dispatch : var { d.vkGetBufferMemoryRequirements(this,buffer,pMemoryRequirements); }
		public void GetBufferMemoryRequirements(Buffer buffer,MemoryRequirements* pMemoryRequirements) => GetBufferMemoryRequirements<DispatchLoaderStatic>(buffer,pMemoryRequirements,.());
		public MemoryRequirements GetBufferMemoryRequirements<Dispatch>(Buffer buffer, Dispatch d) where Dispatch : var
		{
			MemoryRequirements _ret_val = ?;
			GetBufferMemoryRequirements(buffer, &_ret_val, d);
			return _ret_val;
		}
		public MemoryRequirements GetBufferMemoryRequirements(Buffer buffer) => GetBufferMemoryRequirements<DispatchLoaderStatic>(buffer,.());
		public void GetImageMemoryRequirements<Dispatch>(Image image,MemoryRequirements* pMemoryRequirements, Dispatch d) where Dispatch : var { d.vkGetImageMemoryRequirements(this,image,pMemoryRequirements); }
		public void GetImageMemoryRequirements(Image image,MemoryRequirements* pMemoryRequirements) => GetImageMemoryRequirements<DispatchLoaderStatic>(image,pMemoryRequirements,.());
		public MemoryRequirements GetImageMemoryRequirements<Dispatch>(Image image, Dispatch d) where Dispatch : var
		{
			MemoryRequirements _ret_val = ?;
			GetImageMemoryRequirements(image, &_ret_val, d);
			return _ret_val;
		}
		public MemoryRequirements GetImageMemoryRequirements(Image image) => GetImageMemoryRequirements<DispatchLoaderStatic>(image,.());
		public void GetImageSparseMemoryRequirements<Dispatch>(Image image,uint32* pSparseMemoryRequirementCount,SparseImageMemoryRequirements* pSparseMemoryRequirements, Dispatch d) where Dispatch : var { d.vkGetImageSparseMemoryRequirements(this,image,pSparseMemoryRequirementCount,pSparseMemoryRequirements); }
		public void GetImageSparseMemoryRequirements(Image image,uint32* pSparseMemoryRequirementCount,SparseImageMemoryRequirements* pSparseMemoryRequirements) => GetImageSparseMemoryRequirements<DispatchLoaderStatic>(image,pSparseMemoryRequirementCount,pSparseMemoryRequirements,.());
		public mixin GetImageSparseMemoryRequirements(Image image)
		{
			uint32 count = 0;
			GetImageSparseMemoryRequirements(image, &count, null);
			SparseImageMemoryRequirements[] values = scope:: .[count];
			GetImageSparseMemoryRequirements(image, &count, values.CArray());
			values
		}
		public Result CreateFence<Dispatch>(FenceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Fence* pFence, Dispatch d) where Dispatch : var { return d.vkCreateFence(this,pCreateInfo,pAllocator,pFence); }
		public Result CreateFence(FenceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Fence* pFence) => CreateFence<DispatchLoaderStatic>(pCreateInfo,pAllocator,pFence,.());
		public Result<Fence, Vulkan.Result> CreateFence<Dispatch>(FenceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Fence _ret_val = ?;
			let result = CreateFence(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<Fence, Vulkan.Result> CreateFence(FenceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateFence<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyFence<Dispatch>(Fence fence,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyFence(this,fence,pAllocator); }
		public void DestroyFence(Fence fence,AllocationCallbacks* pAllocator) => DestroyFence<DispatchLoaderStatic>(fence,pAllocator,.());
		public Result ResetFences<Dispatch>(uint32 fenceCount,Fence* pFences, Dispatch d) where Dispatch : var { return d.vkResetFences(this,fenceCount,pFences); }
		public Result ResetFences(uint32 fenceCount,Fence* pFences) => ResetFences<DispatchLoaderStatic>(fenceCount,pFences,.());
		public Result GetFenceStatus<Dispatch>(Fence fence, Dispatch d) where Dispatch : var { return d.vkGetFenceStatus(this,fence); }
		public Result GetFenceStatus(Fence fence) => GetFenceStatus<DispatchLoaderStatic>(fence,.());
		public Result WaitForFences<Dispatch>(uint32 fenceCount,Fence* pFences,Bool32 waitAll,uint64 timeout, Dispatch d) where Dispatch : var { return d.vkWaitForFences(this,fenceCount,pFences,waitAll,timeout); }
		public Result WaitForFences(uint32 fenceCount,Fence* pFences,Bool32 waitAll,uint64 timeout) => WaitForFences<DispatchLoaderStatic>(fenceCount,pFences,waitAll,timeout,.());
		public Result CreateSemaphore<Dispatch>(SemaphoreCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Semaphore* pSemaphore, Dispatch d) where Dispatch : var { return d.vkCreateSemaphore(this,pCreateInfo,pAllocator,pSemaphore); }
		public Result CreateSemaphore(SemaphoreCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Semaphore* pSemaphore) => CreateSemaphore<DispatchLoaderStatic>(pCreateInfo,pAllocator,pSemaphore,.());
		public Result<Semaphore, Vulkan.Result> CreateSemaphore<Dispatch>(SemaphoreCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Semaphore _ret_val = ?;
			let result = CreateSemaphore(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<Semaphore, Vulkan.Result> CreateSemaphore(SemaphoreCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateSemaphore<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroySemaphore<Dispatch>(Semaphore semaphore,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroySemaphore(this,semaphore,pAllocator); }
		public void DestroySemaphore(Semaphore semaphore,AllocationCallbacks* pAllocator) => DestroySemaphore<DispatchLoaderStatic>(semaphore,pAllocator,.());
		public Result CreateEvent<Dispatch>(EventCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Event* pEvent, Dispatch d) where Dispatch : var { return d.vkCreateEvent(this,pCreateInfo,pAllocator,pEvent); }
		public Result CreateEvent(EventCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Event* pEvent) => CreateEvent<DispatchLoaderStatic>(pCreateInfo,pAllocator,pEvent,.());
		public Result<Event, Vulkan.Result> CreateEvent<Dispatch>(EventCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Event _ret_val = ?;
			let result = CreateEvent(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<Event, Vulkan.Result> CreateEvent(EventCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateEvent<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyEvent<Dispatch>(Event event,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyEvent(this,event,pAllocator); }
		public void DestroyEvent(Event event,AllocationCallbacks* pAllocator) => DestroyEvent<DispatchLoaderStatic>(event,pAllocator,.());
		public Result GetEventStatus<Dispatch>(Event event, Dispatch d) where Dispatch : var { return d.vkGetEventStatus(this,event); }
		public Result GetEventStatus(Event event) => GetEventStatus<DispatchLoaderStatic>(event,.());
		public Result SetEvent<Dispatch>(Event event, Dispatch d) where Dispatch : var { return d.vkSetEvent(this,event); }
		public Result SetEvent(Event event) => SetEvent<DispatchLoaderStatic>(event,.());
		public Result ResetEvent<Dispatch>(Event event, Dispatch d) where Dispatch : var { return d.vkResetEvent(this,event); }
		public Result ResetEvent(Event event) => ResetEvent<DispatchLoaderStatic>(event,.());
		public Result CreateQueryPool<Dispatch>(QueryPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,QueryPool* pQueryPool, Dispatch d) where Dispatch : var { return d.vkCreateQueryPool(this,pCreateInfo,pAllocator,pQueryPool); }
		public Result CreateQueryPool(QueryPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,QueryPool* pQueryPool) => CreateQueryPool<DispatchLoaderStatic>(pCreateInfo,pAllocator,pQueryPool,.());
		public Result<QueryPool, Vulkan.Result> CreateQueryPool<Dispatch>(QueryPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			QueryPool _ret_val = ?;
			let result = CreateQueryPool(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<QueryPool, Vulkan.Result> CreateQueryPool(QueryPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateQueryPool<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyQueryPool<Dispatch>(QueryPool queryPool,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyQueryPool(this,queryPool,pAllocator); }
		public void DestroyQueryPool(QueryPool queryPool,AllocationCallbacks* pAllocator) => DestroyQueryPool<DispatchLoaderStatic>(queryPool,pAllocator,.());
		public Result GetQueryPoolResults<Dispatch>(QueryPool queryPool,uint32 firstQuery,uint32 queryCount,uint dataSize,void* pData,DeviceSize stride,QueryResultFlags flags, Dispatch d) where Dispatch : var { return d.vkGetQueryPoolResults(this,queryPool,firstQuery,queryCount,dataSize,pData,stride,flags); }
		public Result GetQueryPoolResults(QueryPool queryPool,uint32 firstQuery,uint32 queryCount,uint dataSize,void* pData,DeviceSize stride,QueryResultFlags flags) => GetQueryPoolResults<DispatchLoaderStatic>(queryPool,firstQuery,queryCount,dataSize,pData,stride,flags,.());
		public Result CreateBuffer<Dispatch>(BufferCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Buffer* pBuffer, Dispatch d) where Dispatch : var { return d.vkCreateBuffer(this,pCreateInfo,pAllocator,pBuffer); }
		public Result CreateBuffer(BufferCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Buffer* pBuffer) => CreateBuffer<DispatchLoaderStatic>(pCreateInfo,pAllocator,pBuffer,.());
		public Result<Buffer, Vulkan.Result> CreateBuffer<Dispatch>(BufferCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Buffer _ret_val = ?;
			let result = CreateBuffer(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<Buffer, Vulkan.Result> CreateBuffer(BufferCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateBuffer<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyBuffer<Dispatch>(Buffer buffer,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyBuffer(this,buffer,pAllocator); }
		public void DestroyBuffer(Buffer buffer,AllocationCallbacks* pAllocator) => DestroyBuffer<DispatchLoaderStatic>(buffer,pAllocator,.());
		public Result CreateBufferView<Dispatch>(BufferViewCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,BufferView* pView, Dispatch d) where Dispatch : var { return d.vkCreateBufferView(this,pCreateInfo,pAllocator,pView); }
		public Result CreateBufferView(BufferViewCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,BufferView* pView) => CreateBufferView<DispatchLoaderStatic>(pCreateInfo,pAllocator,pView,.());
		public Result<BufferView, Vulkan.Result> CreateBufferView<Dispatch>(BufferViewCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			BufferView _ret_val = ?;
			let result = CreateBufferView(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<BufferView, Vulkan.Result> CreateBufferView(BufferViewCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateBufferView<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyBufferView<Dispatch>(BufferView bufferView,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyBufferView(this,bufferView,pAllocator); }
		public void DestroyBufferView(BufferView bufferView,AllocationCallbacks* pAllocator) => DestroyBufferView<DispatchLoaderStatic>(bufferView,pAllocator,.());
		public Result CreateImage<Dispatch>(ImageCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Image* pImage, Dispatch d) where Dispatch : var { return d.vkCreateImage(this,pCreateInfo,pAllocator,pImage); }
		public Result CreateImage(ImageCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Image* pImage) => CreateImage<DispatchLoaderStatic>(pCreateInfo,pAllocator,pImage,.());
		public Result<Image, Vulkan.Result> CreateImage<Dispatch>(ImageCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Image _ret_val = ?;
			let result = CreateImage(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<Image, Vulkan.Result> CreateImage(ImageCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateImage<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyImage<Dispatch>(Image image,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyImage(this,image,pAllocator); }
		public void DestroyImage(Image image,AllocationCallbacks* pAllocator) => DestroyImage<DispatchLoaderStatic>(image,pAllocator,.());
		public void GetImageSubresourceLayout<Dispatch>(Image image,ImageSubresource* pSubresource,SubresourceLayout* pLayout, Dispatch d) where Dispatch : var { d.vkGetImageSubresourceLayout(this,image,pSubresource,pLayout); }
		public void GetImageSubresourceLayout(Image image,ImageSubresource* pSubresource,SubresourceLayout* pLayout) => GetImageSubresourceLayout<DispatchLoaderStatic>(image,pSubresource,pLayout,.());
		public SubresourceLayout GetImageSubresourceLayout<Dispatch>(Image image,ImageSubresource* pSubresource, Dispatch d) where Dispatch : var
		{
			SubresourceLayout _ret_val = ?;
			GetImageSubresourceLayout(image,pSubresource, &_ret_val, d);
			return _ret_val;
		}
		public SubresourceLayout GetImageSubresourceLayout(Image image,ImageSubresource* pSubresource) => GetImageSubresourceLayout<DispatchLoaderStatic>(image,pSubresource,.());
		public Result CreateImageView<Dispatch>(ImageViewCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,ImageView* pView, Dispatch d) where Dispatch : var { return d.vkCreateImageView(this,pCreateInfo,pAllocator,pView); }
		public Result CreateImageView(ImageViewCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,ImageView* pView) => CreateImageView<DispatchLoaderStatic>(pCreateInfo,pAllocator,pView,.());
		public Result<ImageView, Vulkan.Result> CreateImageView<Dispatch>(ImageViewCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			ImageView _ret_val = ?;
			let result = CreateImageView(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<ImageView, Vulkan.Result> CreateImageView(ImageViewCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateImageView<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyImageView<Dispatch>(ImageView imageView,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyImageView(this,imageView,pAllocator); }
		public void DestroyImageView(ImageView imageView,AllocationCallbacks* pAllocator) => DestroyImageView<DispatchLoaderStatic>(imageView,pAllocator,.());
		public Result CreateShaderModule<Dispatch>(ShaderModuleCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,ShaderModule* pShaderModule, Dispatch d) where Dispatch : var { return d.vkCreateShaderModule(this,pCreateInfo,pAllocator,pShaderModule); }
		public Result CreateShaderModule(ShaderModuleCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,ShaderModule* pShaderModule) => CreateShaderModule<DispatchLoaderStatic>(pCreateInfo,pAllocator,pShaderModule,.());
		public Result<ShaderModule, Vulkan.Result> CreateShaderModule<Dispatch>(ShaderModuleCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			ShaderModule _ret_val = ?;
			let result = CreateShaderModule(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<ShaderModule, Vulkan.Result> CreateShaderModule(ShaderModuleCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateShaderModule<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyShaderModule<Dispatch>(ShaderModule shaderModule,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyShaderModule(this,shaderModule,pAllocator); }
		public void DestroyShaderModule(ShaderModule shaderModule,AllocationCallbacks* pAllocator) => DestroyShaderModule<DispatchLoaderStatic>(shaderModule,pAllocator,.());
		public Result CreatePipelineCache<Dispatch>(PipelineCacheCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,PipelineCache* pPipelineCache, Dispatch d) where Dispatch : var { return d.vkCreatePipelineCache(this,pCreateInfo,pAllocator,pPipelineCache); }
		public Result CreatePipelineCache(PipelineCacheCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,PipelineCache* pPipelineCache) => CreatePipelineCache<DispatchLoaderStatic>(pCreateInfo,pAllocator,pPipelineCache,.());
		public Result<PipelineCache, Vulkan.Result> CreatePipelineCache<Dispatch>(PipelineCacheCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			PipelineCache _ret_val = ?;
			let result = CreatePipelineCache(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<PipelineCache, Vulkan.Result> CreatePipelineCache(PipelineCacheCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreatePipelineCache<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyPipelineCache<Dispatch>(PipelineCache pipelineCache,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyPipelineCache(this,pipelineCache,pAllocator); }
		public void DestroyPipelineCache(PipelineCache pipelineCache,AllocationCallbacks* pAllocator) => DestroyPipelineCache<DispatchLoaderStatic>(pipelineCache,pAllocator,.());
		public Result GetPipelineCacheData<Dispatch>(PipelineCache pipelineCache,uint* pDataSize,void* pData, Dispatch d) where Dispatch : var { return d.vkGetPipelineCacheData(this,pipelineCache,pDataSize,pData); }
		public Result GetPipelineCacheData(PipelineCache pipelineCache,uint* pDataSize,void* pData) => GetPipelineCacheData<DispatchLoaderStatic>(pipelineCache,pDataSize,pData,.());
		public Result MergePipelineCaches<Dispatch>(PipelineCache dstCache,uint32 srcCacheCount,PipelineCache* pSrcCaches, Dispatch d) where Dispatch : var { return d.vkMergePipelineCaches(this,dstCache,srcCacheCount,pSrcCaches); }
		public Result MergePipelineCaches(PipelineCache dstCache,uint32 srcCacheCount,PipelineCache* pSrcCaches) => MergePipelineCaches<DispatchLoaderStatic>(dstCache,srcCacheCount,pSrcCaches,.());
		public Result CreateGraphicsPipelines<Dispatch>(PipelineCache pipelineCache,uint32 createInfoCount,GraphicsPipelineCreateInfo* pCreateInfos,AllocationCallbacks* pAllocator,Pipeline* pPipelines, Dispatch d) where Dispatch : var { return d.vkCreateGraphicsPipelines(this,pipelineCache,createInfoCount,pCreateInfos,pAllocator,pPipelines); }
		public Result CreateGraphicsPipelines(PipelineCache pipelineCache,uint32 createInfoCount,GraphicsPipelineCreateInfo* pCreateInfos,AllocationCallbacks* pAllocator,Pipeline* pPipelines) => CreateGraphicsPipelines<DispatchLoaderStatic>(pipelineCache,createInfoCount,pCreateInfos,pAllocator,pPipelines,.());
		public Result<Pipeline, Vulkan.Result> CreateGraphicsPipelines<Dispatch>(PipelineCache pipelineCache,uint32 createInfoCount,GraphicsPipelineCreateInfo* pCreateInfos,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Pipeline _ret_val = ?;
			let result = CreateGraphicsPipelines(pipelineCache,createInfoCount,pCreateInfos,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<Pipeline, Vulkan.Result> CreateGraphicsPipelines(PipelineCache pipelineCache,uint32 createInfoCount,GraphicsPipelineCreateInfo* pCreateInfos,AllocationCallbacks* pAllocator) => CreateGraphicsPipelines<DispatchLoaderStatic>(pipelineCache,createInfoCount,pCreateInfos,pAllocator,.());
		public Result CreateComputePipelines<Dispatch>(PipelineCache pipelineCache,uint32 createInfoCount,ComputePipelineCreateInfo* pCreateInfos,AllocationCallbacks* pAllocator,Pipeline* pPipelines, Dispatch d) where Dispatch : var { return d.vkCreateComputePipelines(this,pipelineCache,createInfoCount,pCreateInfos,pAllocator,pPipelines); }
		public Result CreateComputePipelines(PipelineCache pipelineCache,uint32 createInfoCount,ComputePipelineCreateInfo* pCreateInfos,AllocationCallbacks* pAllocator,Pipeline* pPipelines) => CreateComputePipelines<DispatchLoaderStatic>(pipelineCache,createInfoCount,pCreateInfos,pAllocator,pPipelines,.());
		public Result<Pipeline, Vulkan.Result> CreateComputePipelines<Dispatch>(PipelineCache pipelineCache,uint32 createInfoCount,ComputePipelineCreateInfo* pCreateInfos,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Pipeline _ret_val = ?;
			let result = CreateComputePipelines(pipelineCache,createInfoCount,pCreateInfos,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<Pipeline, Vulkan.Result> CreateComputePipelines(PipelineCache pipelineCache,uint32 createInfoCount,ComputePipelineCreateInfo* pCreateInfos,AllocationCallbacks* pAllocator) => CreateComputePipelines<DispatchLoaderStatic>(pipelineCache,createInfoCount,pCreateInfos,pAllocator,.());
		public void DestroyPipeline<Dispatch>(Pipeline pipeline,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyPipeline(this,pipeline,pAllocator); }
		public void DestroyPipeline(Pipeline pipeline,AllocationCallbacks* pAllocator) => DestroyPipeline<DispatchLoaderStatic>(pipeline,pAllocator,.());
		public Result CreatePipelineLayout<Dispatch>(PipelineLayoutCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,PipelineLayout* pPipelineLayout, Dispatch d) where Dispatch : var { return d.vkCreatePipelineLayout(this,pCreateInfo,pAllocator,pPipelineLayout); }
		public Result CreatePipelineLayout(PipelineLayoutCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,PipelineLayout* pPipelineLayout) => CreatePipelineLayout<DispatchLoaderStatic>(pCreateInfo,pAllocator,pPipelineLayout,.());
		public Result<PipelineLayout, Vulkan.Result> CreatePipelineLayout<Dispatch>(PipelineLayoutCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			PipelineLayout _ret_val = ?;
			let result = CreatePipelineLayout(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<PipelineLayout, Vulkan.Result> CreatePipelineLayout(PipelineLayoutCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreatePipelineLayout<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyPipelineLayout<Dispatch>(PipelineLayout pipelineLayout,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyPipelineLayout(this,pipelineLayout,pAllocator); }
		public void DestroyPipelineLayout(PipelineLayout pipelineLayout,AllocationCallbacks* pAllocator) => DestroyPipelineLayout<DispatchLoaderStatic>(pipelineLayout,pAllocator,.());
		public Result CreateSampler<Dispatch>(SamplerCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Sampler* pSampler, Dispatch d) where Dispatch : var { return d.vkCreateSampler(this,pCreateInfo,pAllocator,pSampler); }
		public Result CreateSampler(SamplerCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Sampler* pSampler) => CreateSampler<DispatchLoaderStatic>(pCreateInfo,pAllocator,pSampler,.());
		public Result<Sampler, Vulkan.Result> CreateSampler<Dispatch>(SamplerCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Sampler _ret_val = ?;
			let result = CreateSampler(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<Sampler, Vulkan.Result> CreateSampler(SamplerCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateSampler<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroySampler<Dispatch>(Sampler sampler,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroySampler(this,sampler,pAllocator); }
		public void DestroySampler(Sampler sampler,AllocationCallbacks* pAllocator) => DestroySampler<DispatchLoaderStatic>(sampler,pAllocator,.());
		public Result CreateDescriptorSetLayout<Dispatch>(DescriptorSetLayoutCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorSetLayout* pSetLayout, Dispatch d) where Dispatch : var { return d.vkCreateDescriptorSetLayout(this,pCreateInfo,pAllocator,pSetLayout); }
		public Result CreateDescriptorSetLayout(DescriptorSetLayoutCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorSetLayout* pSetLayout) => CreateDescriptorSetLayout<DispatchLoaderStatic>(pCreateInfo,pAllocator,pSetLayout,.());
		public Result<DescriptorSetLayout, Vulkan.Result> CreateDescriptorSetLayout<Dispatch>(DescriptorSetLayoutCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			DescriptorSetLayout _ret_val = ?;
			let result = CreateDescriptorSetLayout(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<DescriptorSetLayout, Vulkan.Result> CreateDescriptorSetLayout(DescriptorSetLayoutCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateDescriptorSetLayout<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyDescriptorSetLayout<Dispatch>(DescriptorSetLayout descriptorSetLayout,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyDescriptorSetLayout(this,descriptorSetLayout,pAllocator); }
		public void DestroyDescriptorSetLayout(DescriptorSetLayout descriptorSetLayout,AllocationCallbacks* pAllocator) => DestroyDescriptorSetLayout<DispatchLoaderStatic>(descriptorSetLayout,pAllocator,.());
		public Result CreateDescriptorPool<Dispatch>(DescriptorPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorPool* pDescriptorPool, Dispatch d) where Dispatch : var { return d.vkCreateDescriptorPool(this,pCreateInfo,pAllocator,pDescriptorPool); }
		public Result CreateDescriptorPool(DescriptorPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorPool* pDescriptorPool) => CreateDescriptorPool<DispatchLoaderStatic>(pCreateInfo,pAllocator,pDescriptorPool,.());
		public Result<DescriptorPool, Vulkan.Result> CreateDescriptorPool<Dispatch>(DescriptorPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			DescriptorPool _ret_val = ?;
			let result = CreateDescriptorPool(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<DescriptorPool, Vulkan.Result> CreateDescriptorPool(DescriptorPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateDescriptorPool<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyDescriptorPool<Dispatch>(DescriptorPool descriptorPool,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyDescriptorPool(this,descriptorPool,pAllocator); }
		public void DestroyDescriptorPool(DescriptorPool descriptorPool,AllocationCallbacks* pAllocator) => DestroyDescriptorPool<DispatchLoaderStatic>(descriptorPool,pAllocator,.());
		public Result ResetDescriptorPool<Dispatch>(DescriptorPool descriptorPool,DescriptorPoolResetFlags flags, Dispatch d) where Dispatch : var { return d.vkResetDescriptorPool(this,descriptorPool,flags); }
		public Result ResetDescriptorPool(DescriptorPool descriptorPool,DescriptorPoolResetFlags flags) => ResetDescriptorPool<DispatchLoaderStatic>(descriptorPool,flags,.());
		public Result AllocateDescriptorSets<Dispatch>(DescriptorSetAllocateInfo* pAllocateInfo,DescriptorSet* pDescriptorSets, Dispatch d) where Dispatch : var { return d.vkAllocateDescriptorSets(this,pAllocateInfo,pDescriptorSets); }
		public Result AllocateDescriptorSets(DescriptorSetAllocateInfo* pAllocateInfo,DescriptorSet* pDescriptorSets) => AllocateDescriptorSets<DispatchLoaderStatic>(pAllocateInfo,pDescriptorSets,.());
		public Result FreeDescriptorSets<Dispatch>(DescriptorPool descriptorPool,uint32 descriptorSetCount,DescriptorSet* pDescriptorSets, Dispatch d) where Dispatch : var { return d.vkFreeDescriptorSets(this,descriptorPool,descriptorSetCount,pDescriptorSets); }
		public Result FreeDescriptorSets(DescriptorPool descriptorPool,uint32 descriptorSetCount,DescriptorSet* pDescriptorSets) => FreeDescriptorSets<DispatchLoaderStatic>(descriptorPool,descriptorSetCount,pDescriptorSets,.());
		public void UpdateDescriptorSets<Dispatch>(uint32 descriptorWriteCount,WriteDescriptorSet* pDescriptorWrites,uint32 descriptorCopyCount,CopyDescriptorSet* pDescriptorCopies, Dispatch d) where Dispatch : var { d.vkUpdateDescriptorSets(this,descriptorWriteCount,pDescriptorWrites,descriptorCopyCount,pDescriptorCopies); }
		public void UpdateDescriptorSets(uint32 descriptorWriteCount,WriteDescriptorSet* pDescriptorWrites,uint32 descriptorCopyCount,CopyDescriptorSet* pDescriptorCopies) => UpdateDescriptorSets<DispatchLoaderStatic>(descriptorWriteCount,pDescriptorWrites,descriptorCopyCount,pDescriptorCopies,.());
		public Result CreateFramebuffer<Dispatch>(FramebufferCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Framebuffer* pFramebuffer, Dispatch d) where Dispatch : var { return d.vkCreateFramebuffer(this,pCreateInfo,pAllocator,pFramebuffer); }
		public Result CreateFramebuffer(FramebufferCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Framebuffer* pFramebuffer) => CreateFramebuffer<DispatchLoaderStatic>(pCreateInfo,pAllocator,pFramebuffer,.());
		public Result<Framebuffer, Vulkan.Result> CreateFramebuffer<Dispatch>(FramebufferCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Framebuffer _ret_val = ?;
			let result = CreateFramebuffer(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<Framebuffer, Vulkan.Result> CreateFramebuffer(FramebufferCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateFramebuffer<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyFramebuffer<Dispatch>(Framebuffer framebuffer,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyFramebuffer(this,framebuffer,pAllocator); }
		public void DestroyFramebuffer(Framebuffer framebuffer,AllocationCallbacks* pAllocator) => DestroyFramebuffer<DispatchLoaderStatic>(framebuffer,pAllocator,.());
		public Result CreateRenderPass<Dispatch>(RenderPassCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,RenderPass* pRenderPass, Dispatch d) where Dispatch : var { return d.vkCreateRenderPass(this,pCreateInfo,pAllocator,pRenderPass); }
		public Result CreateRenderPass(RenderPassCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,RenderPass* pRenderPass) => CreateRenderPass<DispatchLoaderStatic>(pCreateInfo,pAllocator,pRenderPass,.());
		public Result<RenderPass, Vulkan.Result> CreateRenderPass<Dispatch>(RenderPassCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			RenderPass _ret_val = ?;
			let result = CreateRenderPass(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<RenderPass, Vulkan.Result> CreateRenderPass(RenderPassCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateRenderPass<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyRenderPass<Dispatch>(RenderPass renderPass,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyRenderPass(this,renderPass,pAllocator); }
		public void DestroyRenderPass(RenderPass renderPass,AllocationCallbacks* pAllocator) => DestroyRenderPass<DispatchLoaderStatic>(renderPass,pAllocator,.());
		public void GetRenderAreaGranularity<Dispatch>(RenderPass renderPass,Extent2D* pGranularity, Dispatch d) where Dispatch : var { d.vkGetRenderAreaGranularity(this,renderPass,pGranularity); }
		public void GetRenderAreaGranularity(RenderPass renderPass,Extent2D* pGranularity) => GetRenderAreaGranularity<DispatchLoaderStatic>(renderPass,pGranularity,.());
		public Extent2D GetRenderAreaGranularity<Dispatch>(RenderPass renderPass, Dispatch d) where Dispatch : var
		{
			Extent2D _ret_val = ?;
			GetRenderAreaGranularity(renderPass, &_ret_val, d);
			return _ret_val;
		}
		public Extent2D GetRenderAreaGranularity(RenderPass renderPass) => GetRenderAreaGranularity<DispatchLoaderStatic>(renderPass,.());
		public Result CreateCommandPool<Dispatch>(CommandPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,CommandPool* pCommandPool, Dispatch d) where Dispatch : var { return d.vkCreateCommandPool(this,pCreateInfo,pAllocator,pCommandPool); }
		public Result CreateCommandPool(CommandPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,CommandPool* pCommandPool) => CreateCommandPool<DispatchLoaderStatic>(pCreateInfo,pAllocator,pCommandPool,.());
		public Result<CommandPool, Vulkan.Result> CreateCommandPool<Dispatch>(CommandPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			CommandPool _ret_val = ?;
			let result = CreateCommandPool(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<CommandPool, Vulkan.Result> CreateCommandPool(CommandPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateCommandPool<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyCommandPool<Dispatch>(CommandPool commandPool,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyCommandPool(this,commandPool,pAllocator); }
		public void DestroyCommandPool(CommandPool commandPool,AllocationCallbacks* pAllocator) => DestroyCommandPool<DispatchLoaderStatic>(commandPool,pAllocator,.());
		public Result ResetCommandPool<Dispatch>(CommandPool commandPool,CommandPoolResetFlags flags, Dispatch d) where Dispatch : var { return d.vkResetCommandPool(this,commandPool,flags); }
		public Result ResetCommandPool(CommandPool commandPool,CommandPoolResetFlags flags) => ResetCommandPool<DispatchLoaderStatic>(commandPool,flags,.());
		public Result AllocateCommandBuffers<Dispatch>(CommandBufferAllocateInfo* pAllocateInfo,CommandBuffer* pCommandBuffers, Dispatch d) where Dispatch : var { return d.vkAllocateCommandBuffers(this,pAllocateInfo,pCommandBuffers); }
		public Result AllocateCommandBuffers(CommandBufferAllocateInfo* pAllocateInfo,CommandBuffer* pCommandBuffers) => AllocateCommandBuffers<DispatchLoaderStatic>(pAllocateInfo,pCommandBuffers,.());
		public void FreeCommandBuffers<Dispatch>(CommandPool commandPool,uint32 commandBufferCount,CommandBuffer* pCommandBuffers, Dispatch d) where Dispatch : var { d.vkFreeCommandBuffers(this,commandPool,commandBufferCount,pCommandBuffers); }
		public void FreeCommandBuffers(CommandPool commandPool,uint32 commandBufferCount,CommandBuffer* pCommandBuffers) => FreeCommandBuffers<DispatchLoaderStatic>(commandPool,commandBufferCount,pCommandBuffers,.());
		public Result BindBufferMemory2<Dispatch>(uint32 bindInfoCount,BindBufferMemoryInfo* pBindInfos, Dispatch d) where Dispatch : var { return d.vkBindBufferMemory2(this,bindInfoCount,pBindInfos); }
		public Result BindBufferMemory2(uint32 bindInfoCount,BindBufferMemoryInfo* pBindInfos) => BindBufferMemory2<DispatchLoaderStatic>(bindInfoCount,pBindInfos,.());
		public Result BindImageMemory2<Dispatch>(uint32 bindInfoCount,BindImageMemoryInfo* pBindInfos, Dispatch d) where Dispatch : var { return d.vkBindImageMemory2(this,bindInfoCount,pBindInfos); }
		public Result BindImageMemory2(uint32 bindInfoCount,BindImageMemoryInfo* pBindInfos) => BindImageMemory2<DispatchLoaderStatic>(bindInfoCount,pBindInfos,.());
		public void GetGroupPeerMemoryFeatures<Dispatch>(uint32 heapIndex,uint32 localDeviceIndex,uint32 remoteDeviceIndex,PeerMemoryFeatureFlags* pPeerMemoryFeatures, Dispatch d) where Dispatch : var { d.vkGetDeviceGroupPeerMemoryFeatures(this,heapIndex,localDeviceIndex,remoteDeviceIndex,pPeerMemoryFeatures); }
		public void GetGroupPeerMemoryFeatures(uint32 heapIndex,uint32 localDeviceIndex,uint32 remoteDeviceIndex,PeerMemoryFeatureFlags* pPeerMemoryFeatures) => GetGroupPeerMemoryFeatures<DispatchLoaderStatic>(heapIndex,localDeviceIndex,remoteDeviceIndex,pPeerMemoryFeatures,.());
		public PeerMemoryFeatureFlags GetGroupPeerMemoryFeatures<Dispatch>(uint32 heapIndex,uint32 localDeviceIndex,uint32 remoteDeviceIndex, Dispatch d) where Dispatch : var
		{
			PeerMemoryFeatureFlags _ret_val = ?;
			GetGroupPeerMemoryFeatures(heapIndex,localDeviceIndex,remoteDeviceIndex, &_ret_val, d);
			return _ret_val;
		}
		public PeerMemoryFeatureFlags GetGroupPeerMemoryFeatures(uint32 heapIndex,uint32 localDeviceIndex,uint32 remoteDeviceIndex) => GetGroupPeerMemoryFeatures<DispatchLoaderStatic>(heapIndex,localDeviceIndex,remoteDeviceIndex,.());
		public void GetImageMemoryRequirements2<Dispatch>(ImageMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements, Dispatch d) where Dispatch : var { d.vkGetImageMemoryRequirements2(this,pInfo,pMemoryRequirements); }
		public void GetImageMemoryRequirements2(ImageMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements) => GetImageMemoryRequirements2<DispatchLoaderStatic>(pInfo,pMemoryRequirements,.());
		public MemoryRequirements2 GetImageMemoryRequirements2<Dispatch>(ImageMemoryRequirementsInfo2* pInfo, Dispatch d) where Dispatch : var
		{
			MemoryRequirements2 _ret_val = ?;
			GetImageMemoryRequirements2(pInfo, &_ret_val, d);
			return _ret_val;
		}
		public MemoryRequirements2 GetImageMemoryRequirements2(ImageMemoryRequirementsInfo2* pInfo) => GetImageMemoryRequirements2<DispatchLoaderStatic>(pInfo,.());
		public void GetBufferMemoryRequirements2<Dispatch>(BufferMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements, Dispatch d) where Dispatch : var { d.vkGetBufferMemoryRequirements2(this,pInfo,pMemoryRequirements); }
		public void GetBufferMemoryRequirements2(BufferMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements) => GetBufferMemoryRequirements2<DispatchLoaderStatic>(pInfo,pMemoryRequirements,.());
		public MemoryRequirements2 GetBufferMemoryRequirements2<Dispatch>(BufferMemoryRequirementsInfo2* pInfo, Dispatch d) where Dispatch : var
		{
			MemoryRequirements2 _ret_val = ?;
			GetBufferMemoryRequirements2(pInfo, &_ret_val, d);
			return _ret_val;
		}
		public MemoryRequirements2 GetBufferMemoryRequirements2(BufferMemoryRequirementsInfo2* pInfo) => GetBufferMemoryRequirements2<DispatchLoaderStatic>(pInfo,.());
		public void GetImageSparseMemoryRequirements2<Dispatch>(ImageSparseMemoryRequirementsInfo2* pInfo,uint32* pSparseMemoryRequirementCount,SparseImageMemoryRequirements2* pSparseMemoryRequirements, Dispatch d) where Dispatch : var { d.vkGetImageSparseMemoryRequirements2(this,pInfo,pSparseMemoryRequirementCount,pSparseMemoryRequirements); }
		public void GetImageSparseMemoryRequirements2(ImageSparseMemoryRequirementsInfo2* pInfo,uint32* pSparseMemoryRequirementCount,SparseImageMemoryRequirements2* pSparseMemoryRequirements) => GetImageSparseMemoryRequirements2<DispatchLoaderStatic>(pInfo,pSparseMemoryRequirementCount,pSparseMemoryRequirements,.());
		public mixin GetImageSparseMemoryRequirements2(ImageSparseMemoryRequirementsInfo2* pInfo)
		{
			uint32 count = 0;
			GetImageSparseMemoryRequirements2(pInfo, &count, null);
			SparseImageMemoryRequirements2[] values = scope:: .[count];
			GetImageSparseMemoryRequirements2(pInfo, &count, values.CArray());
			values
		}
		public void TrimCommandPool<Dispatch>(CommandPool commandPool,CommandPoolTrimFlags flags, Dispatch d) where Dispatch : var { d.vkTrimCommandPool(this,commandPool,flags); }
		public void TrimCommandPool(CommandPool commandPool,CommandPoolTrimFlags flags) => TrimCommandPool<DispatchLoaderStatic>(commandPool,flags,.());
		public void GetQueue2<Dispatch>(DeviceQueueInfo2* pQueueInfo,Queue* pQueue, Dispatch d) where Dispatch : var { d.vkGetDeviceQueue2(this,pQueueInfo,pQueue); }
		public void GetQueue2(DeviceQueueInfo2* pQueueInfo,Queue* pQueue) => GetQueue2<DispatchLoaderStatic>(pQueueInfo,pQueue,.());
		public Queue GetQueue2<Dispatch>(DeviceQueueInfo2* pQueueInfo, Dispatch d) where Dispatch : var
		{
			Queue _ret_val = ?;
			GetQueue2(pQueueInfo, &_ret_val, d);
			return _ret_val;
		}
		public Queue GetQueue2(DeviceQueueInfo2* pQueueInfo) => GetQueue2<DispatchLoaderStatic>(pQueueInfo,.());
		public Result CreateSamplerYcbcrConversion<Dispatch>(SamplerYcbcrConversionCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,SamplerYcbcrConversion* pYcbcrConversion, Dispatch d) where Dispatch : var { return d.vkCreateSamplerYcbcrConversion(this,pCreateInfo,pAllocator,pYcbcrConversion); }
		public Result CreateSamplerYcbcrConversion(SamplerYcbcrConversionCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,SamplerYcbcrConversion* pYcbcrConversion) => CreateSamplerYcbcrConversion<DispatchLoaderStatic>(pCreateInfo,pAllocator,pYcbcrConversion,.());
		public Result<SamplerYcbcrConversion, Vulkan.Result> CreateSamplerYcbcrConversion<Dispatch>(SamplerYcbcrConversionCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			SamplerYcbcrConversion _ret_val = ?;
			let result = CreateSamplerYcbcrConversion(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<SamplerYcbcrConversion, Vulkan.Result> CreateSamplerYcbcrConversion(SamplerYcbcrConversionCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateSamplerYcbcrConversion<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroySamplerYcbcrConversion<Dispatch>(SamplerYcbcrConversion ycbcrConversion,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroySamplerYcbcrConversion(this,ycbcrConversion,pAllocator); }
		public void DestroySamplerYcbcrConversion(SamplerYcbcrConversion ycbcrConversion,AllocationCallbacks* pAllocator) => DestroySamplerYcbcrConversion<DispatchLoaderStatic>(ycbcrConversion,pAllocator,.());
		public Result CreateDescriptorUpdateTemplate<Dispatch>(DescriptorUpdateTemplateCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorUpdateTemplate* pDescriptorUpdateTemplate, Dispatch d) where Dispatch : var { return d.vkCreateDescriptorUpdateTemplate(this,pCreateInfo,pAllocator,pDescriptorUpdateTemplate); }
		public Result CreateDescriptorUpdateTemplate(DescriptorUpdateTemplateCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorUpdateTemplate* pDescriptorUpdateTemplate) => CreateDescriptorUpdateTemplate<DispatchLoaderStatic>(pCreateInfo,pAllocator,pDescriptorUpdateTemplate,.());
		public Result<DescriptorUpdateTemplate, Vulkan.Result> CreateDescriptorUpdateTemplate<Dispatch>(DescriptorUpdateTemplateCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			DescriptorUpdateTemplate _ret_val = ?;
			let result = CreateDescriptorUpdateTemplate(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<DescriptorUpdateTemplate, Vulkan.Result> CreateDescriptorUpdateTemplate(DescriptorUpdateTemplateCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateDescriptorUpdateTemplate<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyDescriptorUpdateTemplate<Dispatch>(DescriptorUpdateTemplate descriptorUpdateTemplate,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyDescriptorUpdateTemplate(this,descriptorUpdateTemplate,pAllocator); }
		public void DestroyDescriptorUpdateTemplate(DescriptorUpdateTemplate descriptorUpdateTemplate,AllocationCallbacks* pAllocator) => DestroyDescriptorUpdateTemplate<DispatchLoaderStatic>(descriptorUpdateTemplate,pAllocator,.());
		public void UpdateDescriptorSetWithTemplate<Dispatch>(DescriptorSet descriptorSet,DescriptorUpdateTemplate descriptorUpdateTemplate,void* pData, Dispatch d) where Dispatch : var { d.vkUpdateDescriptorSetWithTemplate(this,descriptorSet,descriptorUpdateTemplate,pData); }
		public void UpdateDescriptorSetWithTemplate(DescriptorSet descriptorSet,DescriptorUpdateTemplate descriptorUpdateTemplate,void* pData) => UpdateDescriptorSetWithTemplate<DispatchLoaderStatic>(descriptorSet,descriptorUpdateTemplate,pData,.());
		public void GetDescriptorSetLayoutSupport<Dispatch>(DescriptorSetLayoutCreateInfo* pCreateInfo,DescriptorSetLayoutSupport* pSupport, Dispatch d) where Dispatch : var { d.vkGetDescriptorSetLayoutSupport(this,pCreateInfo,pSupport); }
		public void GetDescriptorSetLayoutSupport(DescriptorSetLayoutCreateInfo* pCreateInfo,DescriptorSetLayoutSupport* pSupport) => GetDescriptorSetLayoutSupport<DispatchLoaderStatic>(pCreateInfo,pSupport,.());
		public DescriptorSetLayoutSupport GetDescriptorSetLayoutSupport<Dispatch>(DescriptorSetLayoutCreateInfo* pCreateInfo, Dispatch d) where Dispatch : var
		{
			DescriptorSetLayoutSupport _ret_val = ?;
			GetDescriptorSetLayoutSupport(pCreateInfo, &_ret_val, d);
			return _ret_val;
		}
		public DescriptorSetLayoutSupport GetDescriptorSetLayoutSupport(DescriptorSetLayoutCreateInfo* pCreateInfo) => GetDescriptorSetLayoutSupport<DispatchLoaderStatic>(pCreateInfo,.());
		public Result CreateRenderPass2<Dispatch>(RenderPassCreateInfo2* pCreateInfo,AllocationCallbacks* pAllocator,RenderPass* pRenderPass, Dispatch d) where Dispatch : var { return d.vkCreateRenderPass2(this,pCreateInfo,pAllocator,pRenderPass); }
		public Result CreateRenderPass2(RenderPassCreateInfo2* pCreateInfo,AllocationCallbacks* pAllocator,RenderPass* pRenderPass) => CreateRenderPass2<DispatchLoaderStatic>(pCreateInfo,pAllocator,pRenderPass,.());
		public Result<RenderPass, Vulkan.Result> CreateRenderPass2<Dispatch>(RenderPassCreateInfo2* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			RenderPass _ret_val = ?;
			let result = CreateRenderPass2(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<RenderPass, Vulkan.Result> CreateRenderPass2(RenderPassCreateInfo2* pCreateInfo,AllocationCallbacks* pAllocator) => CreateRenderPass2<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void ResetQueryPool<Dispatch>(QueryPool queryPool,uint32 firstQuery,uint32 queryCount, Dispatch d) where Dispatch : var { d.vkResetQueryPool(this,queryPool,firstQuery,queryCount); }
		public void ResetQueryPool(QueryPool queryPool,uint32 firstQuery,uint32 queryCount) => ResetQueryPool<DispatchLoaderStatic>(queryPool,firstQuery,queryCount,.());
		public Result GetSemaphoreCounterValue<Dispatch>(Semaphore semaphore,uint64* pValue, Dispatch d) where Dispatch : var { return d.vkGetSemaphoreCounterValue(this,semaphore,pValue); }
		public Result GetSemaphoreCounterValue(Semaphore semaphore,uint64* pValue) => GetSemaphoreCounterValue<DispatchLoaderStatic>(semaphore,pValue,.());
		public Result<uint64, Vulkan.Result> GetSemaphoreCounterValue<Dispatch>(Semaphore semaphore, Dispatch d) where Dispatch : var
		{
			uint64 _ret_val = ?;
			let result = GetSemaphoreCounterValue(semaphore, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<uint64, Vulkan.Result> GetSemaphoreCounterValue(Semaphore semaphore) => GetSemaphoreCounterValue<DispatchLoaderStatic>(semaphore,.());
		public Result WaitSemaphores<Dispatch>(SemaphoreWaitInfo* pWaitInfo,uint64 timeout, Dispatch d) where Dispatch : var { return d.vkWaitSemaphores(this,pWaitInfo,timeout); }
		public Result WaitSemaphores(SemaphoreWaitInfo* pWaitInfo,uint64 timeout) => WaitSemaphores<DispatchLoaderStatic>(pWaitInfo,timeout,.());
		public Result SignalSemaphore<Dispatch>(SemaphoreSignalInfo* pSignalInfo, Dispatch d) where Dispatch : var { return d.vkSignalSemaphore(this,pSignalInfo); }
		public Result SignalSemaphore(SemaphoreSignalInfo* pSignalInfo) => SignalSemaphore<DispatchLoaderStatic>(pSignalInfo,.());
		public DeviceAddress GetBufferAddress<Dispatch>(BufferDeviceAddressInfo* pInfo, Dispatch d) where Dispatch : var { return d.vkGetBufferDeviceAddress(this,pInfo); }
		public DeviceAddress GetBufferAddress(BufferDeviceAddressInfo* pInfo) => GetBufferAddress<DispatchLoaderStatic>(pInfo,.());
		public uint64 GetBufferOpaqueCaptureAddress<Dispatch>(BufferDeviceAddressInfo* pInfo, Dispatch d) where Dispatch : var { return d.vkGetBufferOpaqueCaptureAddress(this,pInfo); }
		public uint64 GetBufferOpaqueCaptureAddress(BufferDeviceAddressInfo* pInfo) => GetBufferOpaqueCaptureAddress<DispatchLoaderStatic>(pInfo,.());
		public uint64 GetMemoryOpaqueCaptureAddress<Dispatch>(DeviceMemoryOpaqueCaptureAddressInfo* pInfo, Dispatch d) where Dispatch : var { return d.vkGetDeviceMemoryOpaqueCaptureAddress(this,pInfo); }
		public uint64 GetMemoryOpaqueCaptureAddress(DeviceMemoryOpaqueCaptureAddressInfo* pInfo) => GetMemoryOpaqueCaptureAddress<DispatchLoaderStatic>(pInfo,.());
		public Result CreateSwapchainKHR<Dispatch>(SwapchainCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,SwapchainKHR* pSwapchain, Dispatch d) where Dispatch : var { return d.vkCreateSwapchainKHR(this,pCreateInfo,pAllocator,pSwapchain); }
		public Result CreateSwapchainKHR(SwapchainCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,SwapchainKHR* pSwapchain) => CreateSwapchainKHR<DispatchLoaderStatic>(pCreateInfo,pAllocator,pSwapchain,.());
		public Result<SwapchainKHR, Vulkan.Result> CreateSwapchainKHR<Dispatch>(SwapchainCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			SwapchainKHR _ret_val = ?;
			let result = CreateSwapchainKHR(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<SwapchainKHR, Vulkan.Result> CreateSwapchainKHR(SwapchainCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator) => CreateSwapchainKHR<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroySwapchainKHR<Dispatch>(SwapchainKHR swapchain,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroySwapchainKHR(this,swapchain,pAllocator); }
		public void DestroySwapchainKHR(SwapchainKHR swapchain,AllocationCallbacks* pAllocator) => DestroySwapchainKHR<DispatchLoaderStatic>(swapchain,pAllocator,.());
		public Result GetSwapchainImagesKHR<Dispatch>(SwapchainKHR swapchain,uint32* pSwapchainImageCount,Image* pSwapchainImages, Dispatch d) where Dispatch : var { return d.vkGetSwapchainImagesKHR(this,swapchain,pSwapchainImageCount,pSwapchainImages); }
		public Result GetSwapchainImagesKHR(SwapchainKHR swapchain,uint32* pSwapchainImageCount,Image* pSwapchainImages) => GetSwapchainImagesKHR<DispatchLoaderStatic>(swapchain,pSwapchainImageCount,pSwapchainImages,.());
		public mixin GetSwapchainImagesKHR(SwapchainKHR swapchain)
		{
			uint32 count = 0;
			GetSwapchainImagesKHR(swapchain, &count, null);
			Image[] values = scope:: .[count];
			let result = GetSwapchainImagesKHR(swapchain, &count, values.CArray());
			if(result != .Success) Result<Image[], Vulkan.Result>.Err(result);
			Result<Image[], Vulkan.Result>.Ok(values)
		}
		public Result AcquireNextImageKHR<Dispatch>(SwapchainKHR swapchain,uint64 timeout,Semaphore semaphore,Fence fence,uint32* pImageIndex, Dispatch d) where Dispatch : var { return d.vkAcquireNextImageKHR(this,swapchain,timeout,semaphore,fence,pImageIndex); }
		public Result AcquireNextImageKHR(SwapchainKHR swapchain,uint64 timeout,Semaphore semaphore,Fence fence,uint32* pImageIndex) => AcquireNextImageKHR<DispatchLoaderStatic>(swapchain,timeout,semaphore,fence,pImageIndex,.());
		public Result GetGroupPresentCapabilitiesKHR<Dispatch>(DeviceGroupPresentCapabilitiesKHR* pDeviceGroupPresentCapabilities, Dispatch d) where Dispatch : var { return d.vkGetDeviceGroupPresentCapabilitiesKHR(this,pDeviceGroupPresentCapabilities); }
		public Result GetGroupPresentCapabilitiesKHR(DeviceGroupPresentCapabilitiesKHR* pDeviceGroupPresentCapabilities) => GetGroupPresentCapabilitiesKHR<DispatchLoaderStatic>(pDeviceGroupPresentCapabilities,.());
		public Result<DeviceGroupPresentCapabilitiesKHR, Vulkan.Result> GetGroupPresentCapabilitiesKHR<Dispatch>( Dispatch d) where Dispatch : var
		{
			DeviceGroupPresentCapabilitiesKHR _ret_val = ?;
			let result = GetGroupPresentCapabilitiesKHR( &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<DeviceGroupPresentCapabilitiesKHR, Vulkan.Result> GetGroupPresentCapabilitiesKHR() => GetGroupPresentCapabilitiesKHR<DispatchLoaderStatic>(.());
		public Result GetGroupSurfacePresentModesKHR<Dispatch>(SurfaceKHR surface,DeviceGroupPresentModeFlagsKHR* pModes, Dispatch d) where Dispatch : var { return d.vkGetDeviceGroupSurfacePresentModesKHR(this,surface,pModes); }
		public Result GetGroupSurfacePresentModesKHR(SurfaceKHR surface,DeviceGroupPresentModeFlagsKHR* pModes) => GetGroupSurfacePresentModesKHR<DispatchLoaderStatic>(surface,pModes,.());
		public Result<DeviceGroupPresentModeFlagsKHR, Vulkan.Result> GetGroupSurfacePresentModesKHR<Dispatch>(SurfaceKHR surface, Dispatch d) where Dispatch : var
		{
			DeviceGroupPresentModeFlagsKHR _ret_val = ?;
			let result = GetGroupSurfacePresentModesKHR(surface, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<DeviceGroupPresentModeFlagsKHR, Vulkan.Result> GetGroupSurfacePresentModesKHR(SurfaceKHR surface) => GetGroupSurfacePresentModesKHR<DispatchLoaderStatic>(surface,.());
		public Result AcquireNextImage2KHR<Dispatch>(AcquireNextImageInfoKHR* pAcquireInfo,uint32* pImageIndex, Dispatch d) where Dispatch : var { return d.vkAcquireNextImage2KHR(this,pAcquireInfo,pImageIndex); }
		public Result AcquireNextImage2KHR(AcquireNextImageInfoKHR* pAcquireInfo,uint32* pImageIndex) => AcquireNextImage2KHR<DispatchLoaderStatic>(pAcquireInfo,pImageIndex,.());
		public Result CreateSharedSwapchainsKHR<Dispatch>(uint32 swapchainCount,SwapchainCreateInfoKHR* pCreateInfos,AllocationCallbacks* pAllocator,SwapchainKHR* pSwapchains, Dispatch d) where Dispatch : var { return d.vkCreateSharedSwapchainsKHR(this,swapchainCount,pCreateInfos,pAllocator,pSwapchains); }
		public Result CreateSharedSwapchainsKHR(uint32 swapchainCount,SwapchainCreateInfoKHR* pCreateInfos,AllocationCallbacks* pAllocator,SwapchainKHR* pSwapchains) => CreateSharedSwapchainsKHR<DispatchLoaderStatic>(swapchainCount,pCreateInfos,pAllocator,pSwapchains,.());
		public Result<SwapchainKHR, Vulkan.Result> CreateSharedSwapchainsKHR<Dispatch>(uint32 swapchainCount,SwapchainCreateInfoKHR* pCreateInfos,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			SwapchainKHR _ret_val = ?;
			let result = CreateSharedSwapchainsKHR(swapchainCount,pCreateInfos,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<SwapchainKHR, Vulkan.Result> CreateSharedSwapchainsKHR(uint32 swapchainCount,SwapchainCreateInfoKHR* pCreateInfos,AllocationCallbacks* pAllocator) => CreateSharedSwapchainsKHR<DispatchLoaderStatic>(swapchainCount,pCreateInfos,pAllocator,.());
		public void GetGroupPeerMemoryFeaturesKHR<Dispatch>(uint32 heapIndex,uint32 localDeviceIndex,uint32 remoteDeviceIndex,PeerMemoryFeatureFlags* pPeerMemoryFeatures, Dispatch d) where Dispatch : var { d.vkGetDeviceGroupPeerMemoryFeaturesKHR(this,heapIndex,localDeviceIndex,remoteDeviceIndex,pPeerMemoryFeatures); }
		public void GetGroupPeerMemoryFeaturesKHR(uint32 heapIndex,uint32 localDeviceIndex,uint32 remoteDeviceIndex,PeerMemoryFeatureFlags* pPeerMemoryFeatures) => GetGroupPeerMemoryFeaturesKHR<DispatchLoaderStatic>(heapIndex,localDeviceIndex,remoteDeviceIndex,pPeerMemoryFeatures,.());
		public PeerMemoryFeatureFlags GetGroupPeerMemoryFeaturesKHR<Dispatch>(uint32 heapIndex,uint32 localDeviceIndex,uint32 remoteDeviceIndex, Dispatch d) where Dispatch : var
		{
			PeerMemoryFeatureFlags _ret_val = ?;
			GetGroupPeerMemoryFeaturesKHR(heapIndex,localDeviceIndex,remoteDeviceIndex, &_ret_val, d);
			return _ret_val;
		}
		public PeerMemoryFeatureFlags GetGroupPeerMemoryFeaturesKHR(uint32 heapIndex,uint32 localDeviceIndex,uint32 remoteDeviceIndex) => GetGroupPeerMemoryFeaturesKHR<DispatchLoaderStatic>(heapIndex,localDeviceIndex,remoteDeviceIndex,.());
		public void TrimCommandPoolKHR<Dispatch>(CommandPool commandPool,CommandPoolTrimFlags flags, Dispatch d) where Dispatch : var { d.vkTrimCommandPoolKHR(this,commandPool,flags); }
		public void TrimCommandPoolKHR(CommandPool commandPool,CommandPoolTrimFlags flags) => TrimCommandPoolKHR<DispatchLoaderStatic>(commandPool,flags,.());
		public Result GetMemoryFdKHR<Dispatch>(MemoryGetFdInfoKHR* pGetFdInfo,int* pFd, Dispatch d) where Dispatch : var { return d.vkGetMemoryFdKHR(this,pGetFdInfo,pFd); }
		public Result GetMemoryFdKHR(MemoryGetFdInfoKHR* pGetFdInfo,int* pFd) => GetMemoryFdKHR<DispatchLoaderStatic>(pGetFdInfo,pFd,.());
		public Result<int, Vulkan.Result> GetMemoryFdKHR<Dispatch>(MemoryGetFdInfoKHR* pGetFdInfo, Dispatch d) where Dispatch : var
		{
			int _ret_val = ?;
			let result = GetMemoryFdKHR(pGetFdInfo, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<int, Vulkan.Result> GetMemoryFdKHR(MemoryGetFdInfoKHR* pGetFdInfo) => GetMemoryFdKHR<DispatchLoaderStatic>(pGetFdInfo,.());
		public Result GetMemoryFdPropertiesKHR<Dispatch>(ExternalMemoryHandleTypeFlags handleType,int fd,MemoryFdPropertiesKHR* pMemoryFdProperties, Dispatch d) where Dispatch : var { return d.vkGetMemoryFdPropertiesKHR(this,handleType,fd,pMemoryFdProperties); }
		public Result GetMemoryFdPropertiesKHR(ExternalMemoryHandleTypeFlags handleType,int fd,MemoryFdPropertiesKHR* pMemoryFdProperties) => GetMemoryFdPropertiesKHR<DispatchLoaderStatic>(handleType,fd,pMemoryFdProperties,.());
		public Result<MemoryFdPropertiesKHR, Vulkan.Result> GetMemoryFdPropertiesKHR<Dispatch>(ExternalMemoryHandleTypeFlags handleType,int fd, Dispatch d) where Dispatch : var
		{
			MemoryFdPropertiesKHR _ret_val = ?;
			let result = GetMemoryFdPropertiesKHR(handleType,fd, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<MemoryFdPropertiesKHR, Vulkan.Result> GetMemoryFdPropertiesKHR(ExternalMemoryHandleTypeFlags handleType,int fd) => GetMemoryFdPropertiesKHR<DispatchLoaderStatic>(handleType,fd,.());
		public Result ImportSemaphoreFdKHR<Dispatch>(ImportSemaphoreFdInfoKHR* pImportSemaphoreFdInfo, Dispatch d) where Dispatch : var { return d.vkImportSemaphoreFdKHR(this,pImportSemaphoreFdInfo); }
		public Result ImportSemaphoreFdKHR(ImportSemaphoreFdInfoKHR* pImportSemaphoreFdInfo) => ImportSemaphoreFdKHR<DispatchLoaderStatic>(pImportSemaphoreFdInfo,.());
		public Result GetSemaphoreFdKHR<Dispatch>(SemaphoreGetFdInfoKHR* pGetFdInfo,int* pFd, Dispatch d) where Dispatch : var { return d.vkGetSemaphoreFdKHR(this,pGetFdInfo,pFd); }
		public Result GetSemaphoreFdKHR(SemaphoreGetFdInfoKHR* pGetFdInfo,int* pFd) => GetSemaphoreFdKHR<DispatchLoaderStatic>(pGetFdInfo,pFd,.());
		public Result<int, Vulkan.Result> GetSemaphoreFdKHR<Dispatch>(SemaphoreGetFdInfoKHR* pGetFdInfo, Dispatch d) where Dispatch : var
		{
			int _ret_val = ?;
			let result = GetSemaphoreFdKHR(pGetFdInfo, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<int, Vulkan.Result> GetSemaphoreFdKHR(SemaphoreGetFdInfoKHR* pGetFdInfo) => GetSemaphoreFdKHR<DispatchLoaderStatic>(pGetFdInfo,.());
		public Result CreateDescriptorUpdateTemplateKHR<Dispatch>(DescriptorUpdateTemplateCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorUpdateTemplate* pDescriptorUpdateTemplate, Dispatch d) where Dispatch : var { return d.vkCreateDescriptorUpdateTemplateKHR(this,pCreateInfo,pAllocator,pDescriptorUpdateTemplate); }
		public Result CreateDescriptorUpdateTemplateKHR(DescriptorUpdateTemplateCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorUpdateTemplate* pDescriptorUpdateTemplate) => CreateDescriptorUpdateTemplateKHR<DispatchLoaderStatic>(pCreateInfo,pAllocator,pDescriptorUpdateTemplate,.());
		public Result<DescriptorUpdateTemplate, Vulkan.Result> CreateDescriptorUpdateTemplateKHR<Dispatch>(DescriptorUpdateTemplateCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			DescriptorUpdateTemplate _ret_val = ?;
			let result = CreateDescriptorUpdateTemplateKHR(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<DescriptorUpdateTemplate, Vulkan.Result> CreateDescriptorUpdateTemplateKHR(DescriptorUpdateTemplateCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateDescriptorUpdateTemplateKHR<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyDescriptorUpdateTemplateKHR<Dispatch>(DescriptorUpdateTemplate descriptorUpdateTemplate,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyDescriptorUpdateTemplateKHR(this,descriptorUpdateTemplate,pAllocator); }
		public void DestroyDescriptorUpdateTemplateKHR(DescriptorUpdateTemplate descriptorUpdateTemplate,AllocationCallbacks* pAllocator) => DestroyDescriptorUpdateTemplateKHR<DispatchLoaderStatic>(descriptorUpdateTemplate,pAllocator,.());
		public void UpdateDescriptorSetWithTemplateKHR<Dispatch>(DescriptorSet descriptorSet,DescriptorUpdateTemplate descriptorUpdateTemplate,void* pData, Dispatch d) where Dispatch : var { d.vkUpdateDescriptorSetWithTemplateKHR(this,descriptorSet,descriptorUpdateTemplate,pData); }
		public void UpdateDescriptorSetWithTemplateKHR(DescriptorSet descriptorSet,DescriptorUpdateTemplate descriptorUpdateTemplate,void* pData) => UpdateDescriptorSetWithTemplateKHR<DispatchLoaderStatic>(descriptorSet,descriptorUpdateTemplate,pData,.());
		public Result CreateRenderPass2KHR<Dispatch>(RenderPassCreateInfo2* pCreateInfo,AllocationCallbacks* pAllocator,RenderPass* pRenderPass, Dispatch d) where Dispatch : var { return d.vkCreateRenderPass2KHR(this,pCreateInfo,pAllocator,pRenderPass); }
		public Result CreateRenderPass2KHR(RenderPassCreateInfo2* pCreateInfo,AllocationCallbacks* pAllocator,RenderPass* pRenderPass) => CreateRenderPass2KHR<DispatchLoaderStatic>(pCreateInfo,pAllocator,pRenderPass,.());
		public Result<RenderPass, Vulkan.Result> CreateRenderPass2KHR<Dispatch>(RenderPassCreateInfo2* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			RenderPass _ret_val = ?;
			let result = CreateRenderPass2KHR(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<RenderPass, Vulkan.Result> CreateRenderPass2KHR(RenderPassCreateInfo2* pCreateInfo,AllocationCallbacks* pAllocator) => CreateRenderPass2KHR<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public Result GetSwapchainStatusKHR<Dispatch>(SwapchainKHR swapchain, Dispatch d) where Dispatch : var { return d.vkGetSwapchainStatusKHR(this,swapchain); }
		public Result GetSwapchainStatusKHR(SwapchainKHR swapchain) => GetSwapchainStatusKHR<DispatchLoaderStatic>(swapchain,.());
		public Result ImportFenceFdKHR<Dispatch>(ImportFenceFdInfoKHR* pImportFenceFdInfo, Dispatch d) where Dispatch : var { return d.vkImportFenceFdKHR(this,pImportFenceFdInfo); }
		public Result ImportFenceFdKHR(ImportFenceFdInfoKHR* pImportFenceFdInfo) => ImportFenceFdKHR<DispatchLoaderStatic>(pImportFenceFdInfo,.());
		public Result GetFenceFdKHR<Dispatch>(FenceGetFdInfoKHR* pGetFdInfo,int* pFd, Dispatch d) where Dispatch : var { return d.vkGetFenceFdKHR(this,pGetFdInfo,pFd); }
		public Result GetFenceFdKHR(FenceGetFdInfoKHR* pGetFdInfo,int* pFd) => GetFenceFdKHR<DispatchLoaderStatic>(pGetFdInfo,pFd,.());
		public Result<int, Vulkan.Result> GetFenceFdKHR<Dispatch>(FenceGetFdInfoKHR* pGetFdInfo, Dispatch d) where Dispatch : var
		{
			int _ret_val = ?;
			let result = GetFenceFdKHR(pGetFdInfo, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<int, Vulkan.Result> GetFenceFdKHR(FenceGetFdInfoKHR* pGetFdInfo) => GetFenceFdKHR<DispatchLoaderStatic>(pGetFdInfo,.());
		public Result AcquireProfilingLockKHR<Dispatch>(AcquireProfilingLockInfoKHR* pInfo, Dispatch d) where Dispatch : var { return d.vkAcquireProfilingLockKHR(this,pInfo); }
		public Result AcquireProfilingLockKHR(AcquireProfilingLockInfoKHR* pInfo) => AcquireProfilingLockKHR<DispatchLoaderStatic>(pInfo,.());
		public void ReleaseProfilingLockKHR<Dispatch>( Dispatch d) where Dispatch : var { d.vkReleaseProfilingLockKHR(this); }
		public void ReleaseProfilingLockKHR() => ReleaseProfilingLockKHR<DispatchLoaderStatic>(.());
		public void GetImageMemoryRequirements2KHR<Dispatch>(ImageMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements, Dispatch d) where Dispatch : var { d.vkGetImageMemoryRequirements2KHR(this,pInfo,pMemoryRequirements); }
		public void GetImageMemoryRequirements2KHR(ImageMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements) => GetImageMemoryRequirements2KHR<DispatchLoaderStatic>(pInfo,pMemoryRequirements,.());
		public MemoryRequirements2 GetImageMemoryRequirements2KHR<Dispatch>(ImageMemoryRequirementsInfo2* pInfo, Dispatch d) where Dispatch : var
		{
			MemoryRequirements2 _ret_val = ?;
			GetImageMemoryRequirements2KHR(pInfo, &_ret_val, d);
			return _ret_val;
		}
		public MemoryRequirements2 GetImageMemoryRequirements2KHR(ImageMemoryRequirementsInfo2* pInfo) => GetImageMemoryRequirements2KHR<DispatchLoaderStatic>(pInfo,.());
		public void GetBufferMemoryRequirements2KHR<Dispatch>(BufferMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements, Dispatch d) where Dispatch : var { d.vkGetBufferMemoryRequirements2KHR(this,pInfo,pMemoryRequirements); }
		public void GetBufferMemoryRequirements2KHR(BufferMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements) => GetBufferMemoryRequirements2KHR<DispatchLoaderStatic>(pInfo,pMemoryRequirements,.());
		public MemoryRequirements2 GetBufferMemoryRequirements2KHR<Dispatch>(BufferMemoryRequirementsInfo2* pInfo, Dispatch d) where Dispatch : var
		{
			MemoryRequirements2 _ret_val = ?;
			GetBufferMemoryRequirements2KHR(pInfo, &_ret_val, d);
			return _ret_val;
		}
		public MemoryRequirements2 GetBufferMemoryRequirements2KHR(BufferMemoryRequirementsInfo2* pInfo) => GetBufferMemoryRequirements2KHR<DispatchLoaderStatic>(pInfo,.());
		public void GetImageSparseMemoryRequirements2KHR<Dispatch>(ImageSparseMemoryRequirementsInfo2* pInfo,uint32* pSparseMemoryRequirementCount,SparseImageMemoryRequirements2* pSparseMemoryRequirements, Dispatch d) where Dispatch : var { d.vkGetImageSparseMemoryRequirements2KHR(this,pInfo,pSparseMemoryRequirementCount,pSparseMemoryRequirements); }
		public void GetImageSparseMemoryRequirements2KHR(ImageSparseMemoryRequirementsInfo2* pInfo,uint32* pSparseMemoryRequirementCount,SparseImageMemoryRequirements2* pSparseMemoryRequirements) => GetImageSparseMemoryRequirements2KHR<DispatchLoaderStatic>(pInfo,pSparseMemoryRequirementCount,pSparseMemoryRequirements,.());
		public mixin GetImageSparseMemoryRequirements2KHR(ImageSparseMemoryRequirementsInfo2* pInfo)
		{
			uint32 count = 0;
			GetImageSparseMemoryRequirements2KHR(pInfo, &count, null);
			SparseImageMemoryRequirements2[] values = scope:: .[count];
			GetImageSparseMemoryRequirements2KHR(pInfo, &count, values.CArray());
			values
		}
		public Result CreateSamplerYcbcrConversionKHR<Dispatch>(SamplerYcbcrConversionCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,SamplerYcbcrConversion* pYcbcrConversion, Dispatch d) where Dispatch : var { return d.vkCreateSamplerYcbcrConversionKHR(this,pCreateInfo,pAllocator,pYcbcrConversion); }
		public Result CreateSamplerYcbcrConversionKHR(SamplerYcbcrConversionCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,SamplerYcbcrConversion* pYcbcrConversion) => CreateSamplerYcbcrConversionKHR<DispatchLoaderStatic>(pCreateInfo,pAllocator,pYcbcrConversion,.());
		public Result<SamplerYcbcrConversion, Vulkan.Result> CreateSamplerYcbcrConversionKHR<Dispatch>(SamplerYcbcrConversionCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			SamplerYcbcrConversion _ret_val = ?;
			let result = CreateSamplerYcbcrConversionKHR(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<SamplerYcbcrConversion, Vulkan.Result> CreateSamplerYcbcrConversionKHR(SamplerYcbcrConversionCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator) => CreateSamplerYcbcrConversionKHR<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroySamplerYcbcrConversionKHR<Dispatch>(SamplerYcbcrConversion ycbcrConversion,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroySamplerYcbcrConversionKHR(this,ycbcrConversion,pAllocator); }
		public void DestroySamplerYcbcrConversionKHR(SamplerYcbcrConversion ycbcrConversion,AllocationCallbacks* pAllocator) => DestroySamplerYcbcrConversionKHR<DispatchLoaderStatic>(ycbcrConversion,pAllocator,.());
		public Result BindBufferMemory2KHR<Dispatch>(uint32 bindInfoCount,BindBufferMemoryInfo* pBindInfos, Dispatch d) where Dispatch : var { return d.vkBindBufferMemory2KHR(this,bindInfoCount,pBindInfos); }
		public Result BindBufferMemory2KHR(uint32 bindInfoCount,BindBufferMemoryInfo* pBindInfos) => BindBufferMemory2KHR<DispatchLoaderStatic>(bindInfoCount,pBindInfos,.());
		public Result BindImageMemory2KHR<Dispatch>(uint32 bindInfoCount,BindImageMemoryInfo* pBindInfos, Dispatch d) where Dispatch : var { return d.vkBindImageMemory2KHR(this,bindInfoCount,pBindInfos); }
		public Result BindImageMemory2KHR(uint32 bindInfoCount,BindImageMemoryInfo* pBindInfos) => BindImageMemory2KHR<DispatchLoaderStatic>(bindInfoCount,pBindInfos,.());
		public void GetDescriptorSetLayoutSupportKHR<Dispatch>(DescriptorSetLayoutCreateInfo* pCreateInfo,DescriptorSetLayoutSupport* pSupport, Dispatch d) where Dispatch : var { d.vkGetDescriptorSetLayoutSupportKHR(this,pCreateInfo,pSupport); }
		public void GetDescriptorSetLayoutSupportKHR(DescriptorSetLayoutCreateInfo* pCreateInfo,DescriptorSetLayoutSupport* pSupport) => GetDescriptorSetLayoutSupportKHR<DispatchLoaderStatic>(pCreateInfo,pSupport,.());
		public DescriptorSetLayoutSupport GetDescriptorSetLayoutSupportKHR<Dispatch>(DescriptorSetLayoutCreateInfo* pCreateInfo, Dispatch d) where Dispatch : var
		{
			DescriptorSetLayoutSupport _ret_val = ?;
			GetDescriptorSetLayoutSupportKHR(pCreateInfo, &_ret_val, d);
			return _ret_val;
		}
		public DescriptorSetLayoutSupport GetDescriptorSetLayoutSupportKHR(DescriptorSetLayoutCreateInfo* pCreateInfo) => GetDescriptorSetLayoutSupportKHR<DispatchLoaderStatic>(pCreateInfo,.());
		public Result GetSemaphoreCounterValueKHR<Dispatch>(Semaphore semaphore,uint64* pValue, Dispatch d) where Dispatch : var { return d.vkGetSemaphoreCounterValueKHR(this,semaphore,pValue); }
		public Result GetSemaphoreCounterValueKHR(Semaphore semaphore,uint64* pValue) => GetSemaphoreCounterValueKHR<DispatchLoaderStatic>(semaphore,pValue,.());
		public Result<uint64, Vulkan.Result> GetSemaphoreCounterValueKHR<Dispatch>(Semaphore semaphore, Dispatch d) where Dispatch : var
		{
			uint64 _ret_val = ?;
			let result = GetSemaphoreCounterValueKHR(semaphore, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<uint64, Vulkan.Result> GetSemaphoreCounterValueKHR(Semaphore semaphore) => GetSemaphoreCounterValueKHR<DispatchLoaderStatic>(semaphore,.());
		public Result WaitSemaphoresKHR<Dispatch>(SemaphoreWaitInfo* pWaitInfo,uint64 timeout, Dispatch d) where Dispatch : var { return d.vkWaitSemaphoresKHR(this,pWaitInfo,timeout); }
		public Result WaitSemaphoresKHR(SemaphoreWaitInfo* pWaitInfo,uint64 timeout) => WaitSemaphoresKHR<DispatchLoaderStatic>(pWaitInfo,timeout,.());
		public Result SignalSemaphoreKHR<Dispatch>(SemaphoreSignalInfo* pSignalInfo, Dispatch d) where Dispatch : var { return d.vkSignalSemaphoreKHR(this,pSignalInfo); }
		public Result SignalSemaphoreKHR(SemaphoreSignalInfo* pSignalInfo) => SignalSemaphoreKHR<DispatchLoaderStatic>(pSignalInfo,.());
		public DeviceAddress GetBufferAddressKHR<Dispatch>(BufferDeviceAddressInfo* pInfo, Dispatch d) where Dispatch : var { return d.vkGetBufferDeviceAddressKHR(this,pInfo); }
		public DeviceAddress GetBufferAddressKHR(BufferDeviceAddressInfo* pInfo) => GetBufferAddressKHR<DispatchLoaderStatic>(pInfo,.());
		public uint64 GetBufferOpaqueCaptureAddressKHR<Dispatch>(BufferDeviceAddressInfo* pInfo, Dispatch d) where Dispatch : var { return d.vkGetBufferOpaqueCaptureAddressKHR(this,pInfo); }
		public uint64 GetBufferOpaqueCaptureAddressKHR(BufferDeviceAddressInfo* pInfo) => GetBufferOpaqueCaptureAddressKHR<DispatchLoaderStatic>(pInfo,.());
		public uint64 GetMemoryOpaqueCaptureAddressKHR<Dispatch>(DeviceMemoryOpaqueCaptureAddressInfo* pInfo, Dispatch d) where Dispatch : var { return d.vkGetDeviceMemoryOpaqueCaptureAddressKHR(this,pInfo); }
		public uint64 GetMemoryOpaqueCaptureAddressKHR(DeviceMemoryOpaqueCaptureAddressInfo* pInfo) => GetMemoryOpaqueCaptureAddressKHR<DispatchLoaderStatic>(pInfo,.());
		public Result GetPipelineExecutablePropertiesKHR<Dispatch>(PipelineInfoKHR* pPipelineInfo,uint32* pExecutableCount,PipelineExecutablePropertiesKHR* pProperties, Dispatch d) where Dispatch : var { return d.vkGetPipelineExecutablePropertiesKHR(this,pPipelineInfo,pExecutableCount,pProperties); }
		public Result GetPipelineExecutablePropertiesKHR(PipelineInfoKHR* pPipelineInfo,uint32* pExecutableCount,PipelineExecutablePropertiesKHR* pProperties) => GetPipelineExecutablePropertiesKHR<DispatchLoaderStatic>(pPipelineInfo,pExecutableCount,pProperties,.());
		public mixin GetPipelineExecutablePropertiesKHR(PipelineInfoKHR* pPipelineInfo)
		{
			uint32 count = 0;
			GetPipelineExecutablePropertiesKHR(pPipelineInfo, &count, null);
			PipelineExecutablePropertiesKHR[] values = scope:: .[count];
			let result = GetPipelineExecutablePropertiesKHR(pPipelineInfo, &count, values.CArray());
			if(result != .Success) Result<PipelineExecutablePropertiesKHR[], Vulkan.Result>.Err(result);
			Result<PipelineExecutablePropertiesKHR[], Vulkan.Result>.Ok(values)
		}
		public Result GetPipelineExecutableStatisticsKHR<Dispatch>(PipelineExecutableInfoKHR* pExecutableInfo,uint32* pStatisticCount,PipelineExecutableStatisticKHR* pStatistics, Dispatch d) where Dispatch : var { return d.vkGetPipelineExecutableStatisticsKHR(this,pExecutableInfo,pStatisticCount,pStatistics); }
		public Result GetPipelineExecutableStatisticsKHR(PipelineExecutableInfoKHR* pExecutableInfo,uint32* pStatisticCount,PipelineExecutableStatisticKHR* pStatistics) => GetPipelineExecutableStatisticsKHR<DispatchLoaderStatic>(pExecutableInfo,pStatisticCount,pStatistics,.());
		public mixin GetPipelineExecutableStatisticsKHR(PipelineExecutableInfoKHR* pExecutableInfo)
		{
			uint32 count = 0;
			GetPipelineExecutableStatisticsKHR(pExecutableInfo, &count, null);
			PipelineExecutableStatisticKHR[] values = scope:: .[count];
			let result = GetPipelineExecutableStatisticsKHR(pExecutableInfo, &count, values.CArray());
			if(result != .Success) Result<PipelineExecutableStatisticKHR[], Vulkan.Result>.Err(result);
			Result<PipelineExecutableStatisticKHR[], Vulkan.Result>.Ok(values)
		}
		public Result GetPipelineExecutableInternalRepresentationsKHR<Dispatch>(PipelineExecutableInfoKHR* pExecutableInfo,uint32* pInternalRepresentationCount,PipelineExecutableInternalRepresentationKHR* pInternalRepresentations, Dispatch d) where Dispatch : var { return d.vkGetPipelineExecutableInternalRepresentationsKHR(this,pExecutableInfo,pInternalRepresentationCount,pInternalRepresentations); }
		public Result GetPipelineExecutableInternalRepresentationsKHR(PipelineExecutableInfoKHR* pExecutableInfo,uint32* pInternalRepresentationCount,PipelineExecutableInternalRepresentationKHR* pInternalRepresentations) => GetPipelineExecutableInternalRepresentationsKHR<DispatchLoaderStatic>(pExecutableInfo,pInternalRepresentationCount,pInternalRepresentations,.());
		public mixin GetPipelineExecutableInternalRepresentationsKHR(PipelineExecutableInfoKHR* pExecutableInfo)
		{
			uint32 count = 0;
			GetPipelineExecutableInternalRepresentationsKHR(pExecutableInfo, &count, null);
			PipelineExecutableInternalRepresentationKHR[] values = scope:: .[count];
			let result = GetPipelineExecutableInternalRepresentationsKHR(pExecutableInfo, &count, values.CArray());
			if(result != .Success) Result<PipelineExecutableInternalRepresentationKHR[], Vulkan.Result>.Err(result);
			Result<PipelineExecutableInternalRepresentationKHR[], Vulkan.Result>.Ok(values)
		}
		public Result DebugMarkerSetObjectTagEXT<Dispatch>(DebugMarkerObjectTagInfoEXT* pTagInfo, Dispatch d) where Dispatch : var { return d.vkDebugMarkerSetObjectTagEXT(this,pTagInfo); }
		public Result DebugMarkerSetObjectTagEXT(DebugMarkerObjectTagInfoEXT* pTagInfo) => DebugMarkerSetObjectTagEXT<DispatchLoaderStatic>(pTagInfo,.());
		public Result DebugMarkerSetObjectNameEXT<Dispatch>(DebugMarkerObjectNameInfoEXT* pNameInfo, Dispatch d) where Dispatch : var { return d.vkDebugMarkerSetObjectNameEXT(this,pNameInfo); }
		public Result DebugMarkerSetObjectNameEXT(DebugMarkerObjectNameInfoEXT* pNameInfo) => DebugMarkerSetObjectNameEXT<DispatchLoaderStatic>(pNameInfo,.());
		public uint32 GetImageViewHandleNVX<Dispatch>(ImageViewHandleInfoNVX* pInfo, Dispatch d) where Dispatch : var { return d.vkGetImageViewHandleNVX(this,pInfo); }
		public uint32 GetImageViewHandleNVX(ImageViewHandleInfoNVX* pInfo) => GetImageViewHandleNVX<DispatchLoaderStatic>(pInfo,.());
		public Result GetShaderInfoAMD<Dispatch>(Pipeline pipeline,ShaderStageFlags shaderStage,ShaderInfoTypeAMD infoType,uint* pInfoSize,void* pInfo, Dispatch d) where Dispatch : var { return d.vkGetShaderInfoAMD(this,pipeline,shaderStage,infoType,pInfoSize,pInfo); }
		public Result GetShaderInfoAMD(Pipeline pipeline,ShaderStageFlags shaderStage,ShaderInfoTypeAMD infoType,uint* pInfoSize,void* pInfo) => GetShaderInfoAMD<DispatchLoaderStatic>(pipeline,shaderStage,infoType,pInfoSize,pInfo,.());
		public Result DisplayPowerControlEXT<Dispatch>(DisplayKHR display,DisplayPowerInfoEXT* pDisplayPowerInfo, Dispatch d) where Dispatch : var { return d.vkDisplayPowerControlEXT(this,display,pDisplayPowerInfo); }
		public Result DisplayPowerControlEXT(DisplayKHR display,DisplayPowerInfoEXT* pDisplayPowerInfo) => DisplayPowerControlEXT<DispatchLoaderStatic>(display,pDisplayPowerInfo,.());
		public Result RegisterEventEXT<Dispatch>(DeviceEventInfoEXT* pDeviceEventInfo,AllocationCallbacks* pAllocator,Fence* pFence, Dispatch d) where Dispatch : var { return d.vkRegisterDeviceEventEXT(this,pDeviceEventInfo,pAllocator,pFence); }
		public Result RegisterEventEXT(DeviceEventInfoEXT* pDeviceEventInfo,AllocationCallbacks* pAllocator,Fence* pFence) => RegisterEventEXT<DispatchLoaderStatic>(pDeviceEventInfo,pAllocator,pFence,.());
		public Result RegisterDisplayEventEXT<Dispatch>(DisplayKHR display,DisplayEventInfoEXT* pDisplayEventInfo,AllocationCallbacks* pAllocator,Fence* pFence, Dispatch d) where Dispatch : var { return d.vkRegisterDisplayEventEXT(this,display,pDisplayEventInfo,pAllocator,pFence); }
		public Result RegisterDisplayEventEXT(DisplayKHR display,DisplayEventInfoEXT* pDisplayEventInfo,AllocationCallbacks* pAllocator,Fence* pFence) => RegisterDisplayEventEXT<DispatchLoaderStatic>(display,pDisplayEventInfo,pAllocator,pFence,.());
		public Result GetSwapchainCounterEXT<Dispatch>(SwapchainKHR swapchain,SurfaceCounterFlagsEXT counter,uint64* pCounterValue, Dispatch d) where Dispatch : var { return d.vkGetSwapchainCounterEXT(this,swapchain,counter,pCounterValue); }
		public Result GetSwapchainCounterEXT(SwapchainKHR swapchain,SurfaceCounterFlagsEXT counter,uint64* pCounterValue) => GetSwapchainCounterEXT<DispatchLoaderStatic>(swapchain,counter,pCounterValue,.());
		public Result<uint64, Vulkan.Result> GetSwapchainCounterEXT<Dispatch>(SwapchainKHR swapchain,SurfaceCounterFlagsEXT counter, Dispatch d) where Dispatch : var
		{
			uint64 _ret_val = ?;
			let result = GetSwapchainCounterEXT(swapchain,counter, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<uint64, Vulkan.Result> GetSwapchainCounterEXT(SwapchainKHR swapchain,SurfaceCounterFlagsEXT counter) => GetSwapchainCounterEXT<DispatchLoaderStatic>(swapchain,counter,.());
		public Result GetRefreshCycleDurationGOOGLE<Dispatch>(SwapchainKHR swapchain,RefreshCycleDurationGOOGLE* pDisplayTimingProperties, Dispatch d) where Dispatch : var { return d.vkGetRefreshCycleDurationGOOGLE(this,swapchain,pDisplayTimingProperties); }
		public Result GetRefreshCycleDurationGOOGLE(SwapchainKHR swapchain,RefreshCycleDurationGOOGLE* pDisplayTimingProperties) => GetRefreshCycleDurationGOOGLE<DispatchLoaderStatic>(swapchain,pDisplayTimingProperties,.());
		public Result<RefreshCycleDurationGOOGLE, Vulkan.Result> GetRefreshCycleDurationGOOGLE<Dispatch>(SwapchainKHR swapchain, Dispatch d) where Dispatch : var
		{
			RefreshCycleDurationGOOGLE _ret_val = ?;
			let result = GetRefreshCycleDurationGOOGLE(swapchain, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<RefreshCycleDurationGOOGLE, Vulkan.Result> GetRefreshCycleDurationGOOGLE(SwapchainKHR swapchain) => GetRefreshCycleDurationGOOGLE<DispatchLoaderStatic>(swapchain,.());
		public Result GetPastPresentationTimingGOOGLE<Dispatch>(SwapchainKHR swapchain,uint32* pPresentationTimingCount,PastPresentationTimingGOOGLE* pPresentationTimings, Dispatch d) where Dispatch : var { return d.vkGetPastPresentationTimingGOOGLE(this,swapchain,pPresentationTimingCount,pPresentationTimings); }
		public Result GetPastPresentationTimingGOOGLE(SwapchainKHR swapchain,uint32* pPresentationTimingCount,PastPresentationTimingGOOGLE* pPresentationTimings) => GetPastPresentationTimingGOOGLE<DispatchLoaderStatic>(swapchain,pPresentationTimingCount,pPresentationTimings,.());
		public mixin GetPastPresentationTimingGOOGLE(SwapchainKHR swapchain)
		{
			uint32 count = 0;
			GetPastPresentationTimingGOOGLE(swapchain, &count, null);
			PastPresentationTimingGOOGLE[] values = scope:: .[count];
			let result = GetPastPresentationTimingGOOGLE(swapchain, &count, values.CArray());
			if(result != .Success) Result<PastPresentationTimingGOOGLE[], Vulkan.Result>.Err(result);
			Result<PastPresentationTimingGOOGLE[], Vulkan.Result>.Ok(values)
		}
		public void SetHdrMetadataEXT<Dispatch>(uint32 swapchainCount,SwapchainKHR* pSwapchains,HdrMetadataEXT* pMetadata, Dispatch d) where Dispatch : var { d.vkSetHdrMetadataEXT(this,swapchainCount,pSwapchains,pMetadata); }
		public void SetHdrMetadataEXT(uint32 swapchainCount,SwapchainKHR* pSwapchains,HdrMetadataEXT* pMetadata) => SetHdrMetadataEXT<DispatchLoaderStatic>(swapchainCount,pSwapchains,pMetadata,.());
		public Result SetDebugUtilsObjectNameEXT<Dispatch>(DebugUtilsObjectNameInfoEXT* pNameInfo, Dispatch d) where Dispatch : var { return d.vkSetDebugUtilsObjectNameEXT(this,pNameInfo); }
		public Result SetDebugUtilsObjectNameEXT(DebugUtilsObjectNameInfoEXT* pNameInfo) => SetDebugUtilsObjectNameEXT<DispatchLoaderStatic>(pNameInfo,.());
		public Result SetDebugUtilsObjectTagEXT<Dispatch>(DebugUtilsObjectTagInfoEXT* pTagInfo, Dispatch d) where Dispatch : var { return d.vkSetDebugUtilsObjectTagEXT(this,pTagInfo); }
		public Result SetDebugUtilsObjectTagEXT(DebugUtilsObjectTagInfoEXT* pTagInfo) => SetDebugUtilsObjectTagEXT<DispatchLoaderStatic>(pTagInfo,.());
		public Result GetImageDrmFormatModifierPropertiesEXT<Dispatch>(Image image,ImageDrmFormatModifierPropertiesEXT* pProperties, Dispatch d) where Dispatch : var { return d.vkGetImageDrmFormatModifierPropertiesEXT(this,image,pProperties); }
		public Result GetImageDrmFormatModifierPropertiesEXT(Image image,ImageDrmFormatModifierPropertiesEXT* pProperties) => GetImageDrmFormatModifierPropertiesEXT<DispatchLoaderStatic>(image,pProperties,.());
		public Result<ImageDrmFormatModifierPropertiesEXT, Vulkan.Result> GetImageDrmFormatModifierPropertiesEXT<Dispatch>(Image image, Dispatch d) where Dispatch : var
		{
			ImageDrmFormatModifierPropertiesEXT _ret_val = ?;
			let result = GetImageDrmFormatModifierPropertiesEXT(image, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<ImageDrmFormatModifierPropertiesEXT, Vulkan.Result> GetImageDrmFormatModifierPropertiesEXT(Image image) => GetImageDrmFormatModifierPropertiesEXT<DispatchLoaderStatic>(image,.());
		public Result CreateValidationCacheEXT<Dispatch>(ValidationCacheCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,ValidationCacheEXT* pValidationCache, Dispatch d) where Dispatch : var { return d.vkCreateValidationCacheEXT(this,pCreateInfo,pAllocator,pValidationCache); }
		public Result CreateValidationCacheEXT(ValidationCacheCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,ValidationCacheEXT* pValidationCache) => CreateValidationCacheEXT<DispatchLoaderStatic>(pCreateInfo,pAllocator,pValidationCache,.());
		public Result<ValidationCacheEXT, Vulkan.Result> CreateValidationCacheEXT<Dispatch>(ValidationCacheCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			ValidationCacheEXT _ret_val = ?;
			let result = CreateValidationCacheEXT(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<ValidationCacheEXT, Vulkan.Result> CreateValidationCacheEXT(ValidationCacheCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator) => CreateValidationCacheEXT<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyValidationCacheEXT<Dispatch>(ValidationCacheEXT validationCache,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyValidationCacheEXT(this,validationCache,pAllocator); }
		public void DestroyValidationCacheEXT(ValidationCacheEXT validationCache,AllocationCallbacks* pAllocator) => DestroyValidationCacheEXT<DispatchLoaderStatic>(validationCache,pAllocator,.());
		public Result MergeValidationCachesEXT<Dispatch>(ValidationCacheEXT dstCache,uint32 srcCacheCount,ValidationCacheEXT* pSrcCaches, Dispatch d) where Dispatch : var { return d.vkMergeValidationCachesEXT(this,dstCache,srcCacheCount,pSrcCaches); }
		public Result MergeValidationCachesEXT(ValidationCacheEXT dstCache,uint32 srcCacheCount,ValidationCacheEXT* pSrcCaches) => MergeValidationCachesEXT<DispatchLoaderStatic>(dstCache,srcCacheCount,pSrcCaches,.());
		public Result GetValidationCacheDataEXT<Dispatch>(ValidationCacheEXT validationCache,uint* pDataSize,void* pData, Dispatch d) where Dispatch : var { return d.vkGetValidationCacheDataEXT(this,validationCache,pDataSize,pData); }
		public Result GetValidationCacheDataEXT(ValidationCacheEXT validationCache,uint* pDataSize,void* pData) => GetValidationCacheDataEXT<DispatchLoaderStatic>(validationCache,pDataSize,pData,.());
		public Result CreateAccelerationStructureNV<Dispatch>(AccelerationStructureCreateInfoNV* pCreateInfo,AllocationCallbacks* pAllocator,AccelerationStructureNV* pAccelerationStructure, Dispatch d) where Dispatch : var { return d.vkCreateAccelerationStructureNV(this,pCreateInfo,pAllocator,pAccelerationStructure); }
		public Result CreateAccelerationStructureNV(AccelerationStructureCreateInfoNV* pCreateInfo,AllocationCallbacks* pAllocator,AccelerationStructureNV* pAccelerationStructure) => CreateAccelerationStructureNV<DispatchLoaderStatic>(pCreateInfo,pAllocator,pAccelerationStructure,.());
		public Result<AccelerationStructureNV, Vulkan.Result> CreateAccelerationStructureNV<Dispatch>(AccelerationStructureCreateInfoNV* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			AccelerationStructureNV _ret_val = ?;
			let result = CreateAccelerationStructureNV(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<AccelerationStructureNV, Vulkan.Result> CreateAccelerationStructureNV(AccelerationStructureCreateInfoNV* pCreateInfo,AllocationCallbacks* pAllocator) => CreateAccelerationStructureNV<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyAccelerationStructureKHR<Dispatch>(AccelerationStructureKHR accelerationStructure,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyAccelerationStructureKHR(this,accelerationStructure,pAllocator); }
		public void DestroyAccelerationStructureKHR(AccelerationStructureKHR accelerationStructure,AllocationCallbacks* pAllocator) => DestroyAccelerationStructureKHR<DispatchLoaderStatic>(accelerationStructure,pAllocator,.());
		public void DestroyAccelerationStructureNV<Dispatch>(AccelerationStructureKHR accelerationStructure,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyAccelerationStructureNV(this,accelerationStructure,pAllocator); }
		public void DestroyAccelerationStructureNV(AccelerationStructureKHR accelerationStructure,AllocationCallbacks* pAllocator) => DestroyAccelerationStructureNV<DispatchLoaderStatic>(accelerationStructure,pAllocator,.());
		public void GetAccelerationStructureMemoryRequirementsNV<Dispatch>(AccelerationStructureMemoryRequirementsInfoNV* pInfo,MemoryRequirements2KHR* pMemoryRequirements, Dispatch d) where Dispatch : var { d.vkGetAccelerationStructureMemoryRequirementsNV(this,pInfo,pMemoryRequirements); }
		public void GetAccelerationStructureMemoryRequirementsNV(AccelerationStructureMemoryRequirementsInfoNV* pInfo,MemoryRequirements2KHR* pMemoryRequirements) => GetAccelerationStructureMemoryRequirementsNV<DispatchLoaderStatic>(pInfo,pMemoryRequirements,.());
		public MemoryRequirements2KHR GetAccelerationStructureMemoryRequirementsNV<Dispatch>(AccelerationStructureMemoryRequirementsInfoNV* pInfo, Dispatch d) where Dispatch : var
		{
			MemoryRequirements2KHR _ret_val = ?;
			GetAccelerationStructureMemoryRequirementsNV(pInfo, &_ret_val, d);
			return _ret_val;
		}
		public MemoryRequirements2KHR GetAccelerationStructureMemoryRequirementsNV(AccelerationStructureMemoryRequirementsInfoNV* pInfo) => GetAccelerationStructureMemoryRequirementsNV<DispatchLoaderStatic>(pInfo,.());
		public Result BindAccelerationStructureMemoryKHR<Dispatch>(uint32 bindInfoCount,BindAccelerationStructureMemoryInfoKHR* pBindInfos, Dispatch d) where Dispatch : var { return d.vkBindAccelerationStructureMemoryKHR(this,bindInfoCount,pBindInfos); }
		public Result BindAccelerationStructureMemoryKHR(uint32 bindInfoCount,BindAccelerationStructureMemoryInfoKHR* pBindInfos) => BindAccelerationStructureMemoryKHR<DispatchLoaderStatic>(bindInfoCount,pBindInfos,.());
		public Result BindAccelerationStructureMemoryNV<Dispatch>(uint32 bindInfoCount,BindAccelerationStructureMemoryInfoKHR* pBindInfos, Dispatch d) where Dispatch : var { return d.vkBindAccelerationStructureMemoryNV(this,bindInfoCount,pBindInfos); }
		public Result BindAccelerationStructureMemoryNV(uint32 bindInfoCount,BindAccelerationStructureMemoryInfoKHR* pBindInfos) => BindAccelerationStructureMemoryNV<DispatchLoaderStatic>(bindInfoCount,pBindInfos,.());
		public Result CreateRayTracingPipelinesNV<Dispatch>(PipelineCache pipelineCache,uint32 createInfoCount,RayTracingPipelineCreateInfoNV* pCreateInfos,AllocationCallbacks* pAllocator,Pipeline* pPipelines, Dispatch d) where Dispatch : var { return d.vkCreateRayTracingPipelinesNV(this,pipelineCache,createInfoCount,pCreateInfos,pAllocator,pPipelines); }
		public Result CreateRayTracingPipelinesNV(PipelineCache pipelineCache,uint32 createInfoCount,RayTracingPipelineCreateInfoNV* pCreateInfos,AllocationCallbacks* pAllocator,Pipeline* pPipelines) => CreateRayTracingPipelinesNV<DispatchLoaderStatic>(pipelineCache,createInfoCount,pCreateInfos,pAllocator,pPipelines,.());
		public Result<Pipeline, Vulkan.Result> CreateRayTracingPipelinesNV<Dispatch>(PipelineCache pipelineCache,uint32 createInfoCount,RayTracingPipelineCreateInfoNV* pCreateInfos,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Pipeline _ret_val = ?;
			let result = CreateRayTracingPipelinesNV(pipelineCache,createInfoCount,pCreateInfos,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<Pipeline, Vulkan.Result> CreateRayTracingPipelinesNV(PipelineCache pipelineCache,uint32 createInfoCount,RayTracingPipelineCreateInfoNV* pCreateInfos,AllocationCallbacks* pAllocator) => CreateRayTracingPipelinesNV<DispatchLoaderStatic>(pipelineCache,createInfoCount,pCreateInfos,pAllocator,.());
		public Result GetRayTracingShaderGroupHandlesKHR<Dispatch>(Pipeline pipeline,uint32 firstGroup,uint32 groupCount,uint dataSize,void* pData, Dispatch d) where Dispatch : var { return d.vkGetRayTracingShaderGroupHandlesKHR(this,pipeline,firstGroup,groupCount,dataSize,pData); }
		public Result GetRayTracingShaderGroupHandlesKHR(Pipeline pipeline,uint32 firstGroup,uint32 groupCount,uint dataSize,void* pData) => GetRayTracingShaderGroupHandlesKHR<DispatchLoaderStatic>(pipeline,firstGroup,groupCount,dataSize,pData,.());
		public Result GetRayTracingShaderGroupHandlesNV<Dispatch>(Pipeline pipeline,uint32 firstGroup,uint32 groupCount,uint dataSize,void* pData, Dispatch d) where Dispatch : var { return d.vkGetRayTracingShaderGroupHandlesNV(this,pipeline,firstGroup,groupCount,dataSize,pData); }
		public Result GetRayTracingShaderGroupHandlesNV(Pipeline pipeline,uint32 firstGroup,uint32 groupCount,uint dataSize,void* pData) => GetRayTracingShaderGroupHandlesNV<DispatchLoaderStatic>(pipeline,firstGroup,groupCount,dataSize,pData,.());
		public Result GetAccelerationStructureHandleNV<Dispatch>(AccelerationStructureKHR accelerationStructure,uint dataSize,void* pData, Dispatch d) where Dispatch : var { return d.vkGetAccelerationStructureHandleNV(this,accelerationStructure,dataSize,pData); }
		public Result GetAccelerationStructureHandleNV(AccelerationStructureKHR accelerationStructure,uint dataSize,void* pData) => GetAccelerationStructureHandleNV<DispatchLoaderStatic>(accelerationStructure,dataSize,pData,.());
		public Result CompileDeferredNV<Dispatch>(Pipeline pipeline,uint32 shader, Dispatch d) where Dispatch : var { return d.vkCompileDeferredNV(this,pipeline,shader); }
		public Result CompileDeferredNV(Pipeline pipeline,uint32 shader) => CompileDeferredNV<DispatchLoaderStatic>(pipeline,shader,.());
		public Result GetMemoryHostPointerPropertiesEXT<Dispatch>(ExternalMemoryHandleTypeFlags handleType,void* pHostPointer,MemoryHostPointerPropertiesEXT* pMemoryHostPointerProperties, Dispatch d) where Dispatch : var { return d.vkGetMemoryHostPointerPropertiesEXT(this,handleType,pHostPointer,pMemoryHostPointerProperties); }
		public Result GetMemoryHostPointerPropertiesEXT(ExternalMemoryHandleTypeFlags handleType,void* pHostPointer,MemoryHostPointerPropertiesEXT* pMemoryHostPointerProperties) => GetMemoryHostPointerPropertiesEXT<DispatchLoaderStatic>(handleType,pHostPointer,pMemoryHostPointerProperties,.());
		public Result<MemoryHostPointerPropertiesEXT, Vulkan.Result> GetMemoryHostPointerPropertiesEXT<Dispatch>(ExternalMemoryHandleTypeFlags handleType,void* pHostPointer, Dispatch d) where Dispatch : var
		{
			MemoryHostPointerPropertiesEXT _ret_val = ?;
			let result = GetMemoryHostPointerPropertiesEXT(handleType,pHostPointer, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<MemoryHostPointerPropertiesEXT, Vulkan.Result> GetMemoryHostPointerPropertiesEXT(ExternalMemoryHandleTypeFlags handleType,void* pHostPointer) => GetMemoryHostPointerPropertiesEXT<DispatchLoaderStatic>(handleType,pHostPointer,.());
		public Result GetCalibratedTimestampsEXT<Dispatch>(uint32 timestampCount,CalibratedTimestampInfoEXT* pTimestampInfos,uint64* pTimestamps,uint64* pMaxDeviation, Dispatch d) where Dispatch : var { return d.vkGetCalibratedTimestampsEXT(this,timestampCount,pTimestampInfos,pTimestamps,pMaxDeviation); }
		public Result GetCalibratedTimestampsEXT(uint32 timestampCount,CalibratedTimestampInfoEXT* pTimestampInfos,uint64* pTimestamps,uint64* pMaxDeviation) => GetCalibratedTimestampsEXT<DispatchLoaderStatic>(timestampCount,pTimestampInfos,pTimestamps,pMaxDeviation,.());
		public Result<uint64, Vulkan.Result> GetCalibratedTimestampsEXT<Dispatch>(uint32 timestampCount,CalibratedTimestampInfoEXT* pTimestampInfos,uint64* pTimestamps, Dispatch d) where Dispatch : var
		{
			uint64 _ret_val = ?;
			let result = GetCalibratedTimestampsEXT(timestampCount,pTimestampInfos,pTimestamps, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<uint64, Vulkan.Result> GetCalibratedTimestampsEXT(uint32 timestampCount,CalibratedTimestampInfoEXT* pTimestampInfos,uint64* pTimestamps) => GetCalibratedTimestampsEXT<DispatchLoaderStatic>(timestampCount,pTimestampInfos,pTimestamps,.());
		public Result InitializePerformanceApiINTEL<Dispatch>(InitializePerformanceApiInfoINTEL* pInitializeInfo, Dispatch d) where Dispatch : var { return d.vkInitializePerformanceApiINTEL(this,pInitializeInfo); }
		public Result InitializePerformanceApiINTEL(InitializePerformanceApiInfoINTEL* pInitializeInfo) => InitializePerformanceApiINTEL<DispatchLoaderStatic>(pInitializeInfo,.());
		public void UninitializePerformanceApiINTEL<Dispatch>( Dispatch d) where Dispatch : var { d.vkUninitializePerformanceApiINTEL(this); }
		public void UninitializePerformanceApiINTEL() => UninitializePerformanceApiINTEL<DispatchLoaderStatic>(.());
		public Result AcquirePerformanceConfigurationINTEL<Dispatch>(PerformanceConfigurationAcquireInfoINTEL* pAcquireInfo,PerformanceConfigurationINTEL* pConfiguration, Dispatch d) where Dispatch : var { return d.vkAcquirePerformanceConfigurationINTEL(this,pAcquireInfo,pConfiguration); }
		public Result AcquirePerformanceConfigurationINTEL(PerformanceConfigurationAcquireInfoINTEL* pAcquireInfo,PerformanceConfigurationINTEL* pConfiguration) => AcquirePerformanceConfigurationINTEL<DispatchLoaderStatic>(pAcquireInfo,pConfiguration,.());
		public Result ReleasePerformanceConfigurationINTEL<Dispatch>(PerformanceConfigurationINTEL configuration, Dispatch d) where Dispatch : var { return d.vkReleasePerformanceConfigurationINTEL(this,configuration); }
		public Result ReleasePerformanceConfigurationINTEL(PerformanceConfigurationINTEL configuration) => ReleasePerformanceConfigurationINTEL<DispatchLoaderStatic>(configuration,.());
		public Result GetPerformanceParameterINTEL<Dispatch>(PerformanceParameterTypeINTEL parameter,PerformanceValueINTEL* pValue, Dispatch d) where Dispatch : var { return d.vkGetPerformanceParameterINTEL(this,parameter,pValue); }
		public Result GetPerformanceParameterINTEL(PerformanceParameterTypeINTEL parameter,PerformanceValueINTEL* pValue) => GetPerformanceParameterINTEL<DispatchLoaderStatic>(parameter,pValue,.());
		public Result<PerformanceValueINTEL, Vulkan.Result> GetPerformanceParameterINTEL<Dispatch>(PerformanceParameterTypeINTEL parameter, Dispatch d) where Dispatch : var
		{
			PerformanceValueINTEL _ret_val = ?;
			let result = GetPerformanceParameterINTEL(parameter, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<PerformanceValueINTEL, Vulkan.Result> GetPerformanceParameterINTEL(PerformanceParameterTypeINTEL parameter) => GetPerformanceParameterINTEL<DispatchLoaderStatic>(parameter,.());
		public void SetLocalDimmingAMD<Dispatch>(SwapchainKHR swapChain,Bool32 localDimmingEnable, Dispatch d) where Dispatch : var { d.vkSetLocalDimmingAMD(this,swapChain,localDimmingEnable); }
		public void SetLocalDimmingAMD(SwapchainKHR swapChain,Bool32 localDimmingEnable) => SetLocalDimmingAMD<DispatchLoaderStatic>(swapChain,localDimmingEnable,.());
		public DeviceAddress GetBufferAddressEXT<Dispatch>(BufferDeviceAddressInfo* pInfo, Dispatch d) where Dispatch : var { return d.vkGetBufferDeviceAddressEXT(this,pInfo); }
		public DeviceAddress GetBufferAddressEXT(BufferDeviceAddressInfo* pInfo) => GetBufferAddressEXT<DispatchLoaderStatic>(pInfo,.());
		public void ResetQueryPoolEXT<Dispatch>(QueryPool queryPool,uint32 firstQuery,uint32 queryCount, Dispatch d) where Dispatch : var { d.vkResetQueryPoolEXT(this,queryPool,firstQuery,queryCount); }
		public void ResetQueryPoolEXT(QueryPool queryPool,uint32 firstQuery,uint32 queryCount) => ResetQueryPoolEXT<DispatchLoaderStatic>(queryPool,firstQuery,queryCount,.());
		public void GetGeneratedCommandsMemoryRequirementsNV<Dispatch>(GeneratedCommandsMemoryRequirementsInfoNV* pInfo,MemoryRequirements2* pMemoryRequirements, Dispatch d) where Dispatch : var { d.vkGetGeneratedCommandsMemoryRequirementsNV(this,pInfo,pMemoryRequirements); }
		public void GetGeneratedCommandsMemoryRequirementsNV(GeneratedCommandsMemoryRequirementsInfoNV* pInfo,MemoryRequirements2* pMemoryRequirements) => GetGeneratedCommandsMemoryRequirementsNV<DispatchLoaderStatic>(pInfo,pMemoryRequirements,.());
		public MemoryRequirements2 GetGeneratedCommandsMemoryRequirementsNV<Dispatch>(GeneratedCommandsMemoryRequirementsInfoNV* pInfo, Dispatch d) where Dispatch : var
		{
			MemoryRequirements2 _ret_val = ?;
			GetGeneratedCommandsMemoryRequirementsNV(pInfo, &_ret_val, d);
			return _ret_val;
		}
		public MemoryRequirements2 GetGeneratedCommandsMemoryRequirementsNV(GeneratedCommandsMemoryRequirementsInfoNV* pInfo) => GetGeneratedCommandsMemoryRequirementsNV<DispatchLoaderStatic>(pInfo,.());
		public Result CreateIndirectCommandsLayoutNV<Dispatch>(IndirectCommandsLayoutCreateInfoNV* pCreateInfo,AllocationCallbacks* pAllocator,IndirectCommandsLayoutNV* pIndirectCommandsLayout, Dispatch d) where Dispatch : var { return d.vkCreateIndirectCommandsLayoutNV(this,pCreateInfo,pAllocator,pIndirectCommandsLayout); }
		public Result CreateIndirectCommandsLayoutNV(IndirectCommandsLayoutCreateInfoNV* pCreateInfo,AllocationCallbacks* pAllocator,IndirectCommandsLayoutNV* pIndirectCommandsLayout) => CreateIndirectCommandsLayoutNV<DispatchLoaderStatic>(pCreateInfo,pAllocator,pIndirectCommandsLayout,.());
		public Result<IndirectCommandsLayoutNV, Vulkan.Result> CreateIndirectCommandsLayoutNV<Dispatch>(IndirectCommandsLayoutCreateInfoNV* pCreateInfo,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			IndirectCommandsLayoutNV _ret_val = ?;
			let result = CreateIndirectCommandsLayoutNV(pCreateInfo,pAllocator, &_ret_val, d);
			if(result != .Success) return .Err(result);
			return _ret_val;
		}
		public Result<IndirectCommandsLayoutNV, Vulkan.Result> CreateIndirectCommandsLayoutNV(IndirectCommandsLayoutCreateInfoNV* pCreateInfo,AllocationCallbacks* pAllocator) => CreateIndirectCommandsLayoutNV<DispatchLoaderStatic>(pCreateInfo,pAllocator,.());
		public void DestroyIndirectCommandsLayoutNV<Dispatch>(IndirectCommandsLayoutNV indirectCommandsLayout,AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var { d.vkDestroyIndirectCommandsLayoutNV(this,indirectCommandsLayout,pAllocator); }
		public void DestroyIndirectCommandsLayoutNV(IndirectCommandsLayoutNV indirectCommandsLayout,AllocationCallbacks* pAllocator) => DestroyIndirectCommandsLayoutNV<DispatchLoaderStatic>(indirectCommandsLayout,pAllocator,.());
	}
	extension Queue
	{
		public Result Submit<Dispatch>(uint32 submitCount,SubmitInfo* pSubmits,Fence fence, Dispatch d) where Dispatch : var { return d.vkQueueSubmit(this,submitCount,pSubmits,fence); }
		public Result Submit(uint32 submitCount,SubmitInfo* pSubmits,Fence fence) => Submit<DispatchLoaderStatic>(submitCount,pSubmits,fence,.());
		public Result WaitIdle<Dispatch>( Dispatch d) where Dispatch : var { return d.vkQueueWaitIdle(this); }
		public Result WaitIdle() => WaitIdle<DispatchLoaderStatic>(.());
		public Result BindSparse<Dispatch>(uint32 bindInfoCount,BindSparseInfo* pBindInfo,Fence fence, Dispatch d) where Dispatch : var { return d.vkQueueBindSparse(this,bindInfoCount,pBindInfo,fence); }
		public Result BindSparse(uint32 bindInfoCount,BindSparseInfo* pBindInfo,Fence fence) => BindSparse<DispatchLoaderStatic>(bindInfoCount,pBindInfo,fence,.());
		public Result PresentKHR<Dispatch>(PresentInfoKHR* pPresentInfo, Dispatch d) where Dispatch : var { return d.vkQueuePresentKHR(this,pPresentInfo); }
		public Result PresentKHR(PresentInfoKHR* pPresentInfo) => PresentKHR<DispatchLoaderStatic>(pPresentInfo,.());
		public void BeginDebugUtilsLabelEXT<Dispatch>(DebugUtilsLabelEXT* pLabelInfo, Dispatch d) where Dispatch : var { d.vkQueueBeginDebugUtilsLabelEXT(this,pLabelInfo); }
		public void BeginDebugUtilsLabelEXT(DebugUtilsLabelEXT* pLabelInfo) => BeginDebugUtilsLabelEXT<DispatchLoaderStatic>(pLabelInfo,.());
		public void EndDebugUtilsLabelEXT<Dispatch>( Dispatch d) where Dispatch : var { d.vkQueueEndDebugUtilsLabelEXT(this); }
		public void EndDebugUtilsLabelEXT() => EndDebugUtilsLabelEXT<DispatchLoaderStatic>(.());
		public void InsertDebugUtilsLabelEXT<Dispatch>(DebugUtilsLabelEXT* pLabelInfo, Dispatch d) where Dispatch : var { d.vkQueueInsertDebugUtilsLabelEXT(this,pLabelInfo); }
		public void InsertDebugUtilsLabelEXT(DebugUtilsLabelEXT* pLabelInfo) => InsertDebugUtilsLabelEXT<DispatchLoaderStatic>(pLabelInfo,.());
		public void GetCheckpointDataNV<Dispatch>(uint32* pCheckpointDataCount,CheckpointDataNV* pCheckpointData, Dispatch d) where Dispatch : var { d.vkGetQueueCheckpointDataNV(this,pCheckpointDataCount,pCheckpointData); }
		public void GetCheckpointDataNV(uint32* pCheckpointDataCount,CheckpointDataNV* pCheckpointData) => GetCheckpointDataNV<DispatchLoaderStatic>(pCheckpointDataCount,pCheckpointData,.());
		public mixin GetCheckpointDataNV()
		{
			uint32 count = 0;
			GetCheckpointDataNV( &count, null);
			CheckpointDataNV[] values = scope:: .[count];
			GetCheckpointDataNV( &count, values.CArray());
			values
		}
		public Result SetPerformanceConfigurationINTEL<Dispatch>(PerformanceConfigurationINTEL configuration, Dispatch d) where Dispatch : var { return d.vkQueueSetPerformanceConfigurationINTEL(this,configuration); }
		public Result SetPerformanceConfigurationINTEL(PerformanceConfigurationINTEL configuration) => SetPerformanceConfigurationINTEL<DispatchLoaderStatic>(configuration,.());
	}
	extension CommandBuffer
	{
		public Result Begin<Dispatch>(CommandBufferBeginInfo* pBeginInfo, Dispatch d) where Dispatch : var { return d.vkBeginCommandBuffer(this,pBeginInfo); }
		public Result Begin(CommandBufferBeginInfo* pBeginInfo) => Begin<DispatchLoaderStatic>(pBeginInfo,.());
		public Result End<Dispatch>( Dispatch d) where Dispatch : var { return d.vkEndCommandBuffer(this); }
		public Result End() => End<DispatchLoaderStatic>(.());
		public Result Reset<Dispatch>(CommandBufferResetFlags flags, Dispatch d) where Dispatch : var { return d.vkResetCommandBuffer(this,flags); }
		public Result Reset(CommandBufferResetFlags flags) => Reset<DispatchLoaderStatic>(flags,.());
		public void CmdBindPipeline<Dispatch>(PipelineBindPoint pipelineBindPoint,Pipeline pipeline, Dispatch d) where Dispatch : var { d.vkCmdBindPipeline(this,pipelineBindPoint,pipeline); }
		public void CmdBindPipeline(PipelineBindPoint pipelineBindPoint,Pipeline pipeline) => CmdBindPipeline<DispatchLoaderStatic>(pipelineBindPoint,pipeline,.());
		public void CmdSetViewport<Dispatch>(uint32 firstViewport,uint32 viewportCount,Viewport* pViewports, Dispatch d) where Dispatch : var { d.vkCmdSetViewport(this,firstViewport,viewportCount,pViewports); }
		public void CmdSetViewport(uint32 firstViewport,uint32 viewportCount,Viewport* pViewports) => CmdSetViewport<DispatchLoaderStatic>(firstViewport,viewportCount,pViewports,.());
		public void CmdSetScissor<Dispatch>(uint32 firstScissor,uint32 scissorCount,Rect2D* pScissors, Dispatch d) where Dispatch : var { d.vkCmdSetScissor(this,firstScissor,scissorCount,pScissors); }
		public void CmdSetScissor(uint32 firstScissor,uint32 scissorCount,Rect2D* pScissors) => CmdSetScissor<DispatchLoaderStatic>(firstScissor,scissorCount,pScissors,.());
		public void CmdSetLineWidth<Dispatch>(float lineWidth, Dispatch d) where Dispatch : var { d.vkCmdSetLineWidth(this,lineWidth); }
		public void CmdSetLineWidth(float lineWidth) => CmdSetLineWidth<DispatchLoaderStatic>(lineWidth,.());
		public void CmdSetDepthBias<Dispatch>(float depthBiasConstantFactor,float depthBiasClamp,float depthBiasSlopeFactor, Dispatch d) where Dispatch : var { d.vkCmdSetDepthBias(this,depthBiasConstantFactor,depthBiasClamp,depthBiasSlopeFactor); }
		public void CmdSetDepthBias(float depthBiasConstantFactor,float depthBiasClamp,float depthBiasSlopeFactor) => CmdSetDepthBias<DispatchLoaderStatic>(depthBiasConstantFactor,depthBiasClamp,depthBiasSlopeFactor,.());
		public void CmdSetBlendConstants<Dispatch>(float blendConstants, Dispatch d) where Dispatch : var { d.vkCmdSetBlendConstants(this,blendConstants); }
		public void CmdSetBlendConstants(float blendConstants) => CmdSetBlendConstants<DispatchLoaderStatic>(blendConstants,.());
		public void CmdSetDepthBounds<Dispatch>(float minDepthBounds,float maxDepthBounds, Dispatch d) where Dispatch : var { d.vkCmdSetDepthBounds(this,minDepthBounds,maxDepthBounds); }
		public void CmdSetDepthBounds(float minDepthBounds,float maxDepthBounds) => CmdSetDepthBounds<DispatchLoaderStatic>(minDepthBounds,maxDepthBounds,.());
		public void CmdSetStencilCompareMask<Dispatch>(StencilFaceFlags faceMask,uint32 compareMask, Dispatch d) where Dispatch : var { d.vkCmdSetStencilCompareMask(this,faceMask,compareMask); }
		public void CmdSetStencilCompareMask(StencilFaceFlags faceMask,uint32 compareMask) => CmdSetStencilCompareMask<DispatchLoaderStatic>(faceMask,compareMask,.());
		public void CmdSetStencilWriteMask<Dispatch>(StencilFaceFlags faceMask,uint32 writeMask, Dispatch d) where Dispatch : var { d.vkCmdSetStencilWriteMask(this,faceMask,writeMask); }
		public void CmdSetStencilWriteMask(StencilFaceFlags faceMask,uint32 writeMask) => CmdSetStencilWriteMask<DispatchLoaderStatic>(faceMask,writeMask,.());
		public void CmdSetStencilReference<Dispatch>(StencilFaceFlags faceMask,uint32 reference, Dispatch d) where Dispatch : var { d.vkCmdSetStencilReference(this,faceMask,reference); }
		public void CmdSetStencilReference(StencilFaceFlags faceMask,uint32 reference) => CmdSetStencilReference<DispatchLoaderStatic>(faceMask,reference,.());
		public void CmdBindDescriptorSets<Dispatch>(PipelineBindPoint pipelineBindPoint,PipelineLayout layout,uint32 firstSet,uint32 descriptorSetCount,DescriptorSet* pDescriptorSets,uint32 dynamicOffsetCount,uint32* pDynamicOffsets, Dispatch d) where Dispatch : var { d.vkCmdBindDescriptorSets(this,pipelineBindPoint,layout,firstSet,descriptorSetCount,pDescriptorSets,dynamicOffsetCount,pDynamicOffsets); }
		public void CmdBindDescriptorSets(PipelineBindPoint pipelineBindPoint,PipelineLayout layout,uint32 firstSet,uint32 descriptorSetCount,DescriptorSet* pDescriptorSets,uint32 dynamicOffsetCount,uint32* pDynamicOffsets) => CmdBindDescriptorSets<DispatchLoaderStatic>(pipelineBindPoint,layout,firstSet,descriptorSetCount,pDescriptorSets,dynamicOffsetCount,pDynamicOffsets,.());
		public void CmdBindIndexBuffer<Dispatch>(Buffer buffer,DeviceSize offset,IndexType indexType, Dispatch d) where Dispatch : var { d.vkCmdBindIndexBuffer(this,buffer,offset,indexType); }
		public void CmdBindIndexBuffer(Buffer buffer,DeviceSize offset,IndexType indexType) => CmdBindIndexBuffer<DispatchLoaderStatic>(buffer,offset,indexType,.());
		public void CmdBindVertexBuffers<Dispatch>(uint32 firstBinding,uint32 bindingCount,Buffer* pBuffers,DeviceSize* pOffsets, Dispatch d) where Dispatch : var { d.vkCmdBindVertexBuffers(this,firstBinding,bindingCount,pBuffers,pOffsets); }
		public void CmdBindVertexBuffers(uint32 firstBinding,uint32 bindingCount,Buffer* pBuffers,DeviceSize* pOffsets) => CmdBindVertexBuffers<DispatchLoaderStatic>(firstBinding,bindingCount,pBuffers,pOffsets,.());
		public void CmdDraw<Dispatch>(uint32 vertexCount,uint32 instanceCount,uint32 firstVertex,uint32 firstInstance, Dispatch d) where Dispatch : var { d.vkCmdDraw(this,vertexCount,instanceCount,firstVertex,firstInstance); }
		public void CmdDraw(uint32 vertexCount,uint32 instanceCount,uint32 firstVertex,uint32 firstInstance) => CmdDraw<DispatchLoaderStatic>(vertexCount,instanceCount,firstVertex,firstInstance,.());
		public void CmdDrawIndexed<Dispatch>(uint32 indexCount,uint32 instanceCount,uint32 firstIndex,int32 vertexOffset,uint32 firstInstance, Dispatch d) where Dispatch : var { d.vkCmdDrawIndexed(this,indexCount,instanceCount,firstIndex,vertexOffset,firstInstance); }
		public void CmdDrawIndexed(uint32 indexCount,uint32 instanceCount,uint32 firstIndex,int32 vertexOffset,uint32 firstInstance) => CmdDrawIndexed<DispatchLoaderStatic>(indexCount,instanceCount,firstIndex,vertexOffset,firstInstance,.());
		public void CmdDrawIndirect<Dispatch>(Buffer buffer,DeviceSize offset,uint32 drawCount,uint32 stride, Dispatch d) where Dispatch : var { d.vkCmdDrawIndirect(this,buffer,offset,drawCount,stride); }
		public void CmdDrawIndirect(Buffer buffer,DeviceSize offset,uint32 drawCount,uint32 stride) => CmdDrawIndirect<DispatchLoaderStatic>(buffer,offset,drawCount,stride,.());
		public void CmdDrawIndexedIndirect<Dispatch>(Buffer buffer,DeviceSize offset,uint32 drawCount,uint32 stride, Dispatch d) where Dispatch : var { d.vkCmdDrawIndexedIndirect(this,buffer,offset,drawCount,stride); }
		public void CmdDrawIndexedIndirect(Buffer buffer,DeviceSize offset,uint32 drawCount,uint32 stride) => CmdDrawIndexedIndirect<DispatchLoaderStatic>(buffer,offset,drawCount,stride,.());
		public void CmdDispatch<Dispatch>(uint32 groupCountX,uint32 groupCountY,uint32 groupCountZ, Dispatch d) where Dispatch : var { d.vkCmdDispatch(this,groupCountX,groupCountY,groupCountZ); }
		public void CmdDispatch(uint32 groupCountX,uint32 groupCountY,uint32 groupCountZ) => CmdDispatch<DispatchLoaderStatic>(groupCountX,groupCountY,groupCountZ,.());
		public void CmdDispatchIndirect<Dispatch>(Buffer buffer,DeviceSize offset, Dispatch d) where Dispatch : var { d.vkCmdDispatchIndirect(this,buffer,offset); }
		public void CmdDispatchIndirect(Buffer buffer,DeviceSize offset) => CmdDispatchIndirect<DispatchLoaderStatic>(buffer,offset,.());
		public void CmdCopyBuffer<Dispatch>(Buffer srcBuffer,Buffer dstBuffer,uint32 regionCount,BufferCopy* pRegions, Dispatch d) where Dispatch : var { d.vkCmdCopyBuffer(this,srcBuffer,dstBuffer,regionCount,pRegions); }
		public void CmdCopyBuffer(Buffer srcBuffer,Buffer dstBuffer,uint32 regionCount,BufferCopy* pRegions) => CmdCopyBuffer<DispatchLoaderStatic>(srcBuffer,dstBuffer,regionCount,pRegions,.());
		public void CmdCopyImage<Dispatch>(Image srcImage,ImageLayout srcImageLayout,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,ImageCopy* pRegions, Dispatch d) where Dispatch : var { d.vkCmdCopyImage(this,srcImage,srcImageLayout,dstImage,dstImageLayout,regionCount,pRegions); }
		public void CmdCopyImage(Image srcImage,ImageLayout srcImageLayout,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,ImageCopy* pRegions) => CmdCopyImage<DispatchLoaderStatic>(srcImage,srcImageLayout,dstImage,dstImageLayout,regionCount,pRegions,.());
		public void CmdBlitImage<Dispatch>(Image srcImage,ImageLayout srcImageLayout,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,ImageBlit* pRegions,Filter filter, Dispatch d) where Dispatch : var { d.vkCmdBlitImage(this,srcImage,srcImageLayout,dstImage,dstImageLayout,regionCount,pRegions,filter); }
		public void CmdBlitImage(Image srcImage,ImageLayout srcImageLayout,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,ImageBlit* pRegions,Filter filter) => CmdBlitImage<DispatchLoaderStatic>(srcImage,srcImageLayout,dstImage,dstImageLayout,regionCount,pRegions,filter,.());
		public void CmdCopyBufferToImage<Dispatch>(Buffer srcBuffer,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,BufferImageCopy* pRegions, Dispatch d) where Dispatch : var { d.vkCmdCopyBufferToImage(this,srcBuffer,dstImage,dstImageLayout,regionCount,pRegions); }
		public void CmdCopyBufferToImage(Buffer srcBuffer,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,BufferImageCopy* pRegions) => CmdCopyBufferToImage<DispatchLoaderStatic>(srcBuffer,dstImage,dstImageLayout,regionCount,pRegions,.());
		public void CmdCopyImageToBuffer<Dispatch>(Image srcImage,ImageLayout srcImageLayout,Buffer dstBuffer,uint32 regionCount,BufferImageCopy* pRegions, Dispatch d) where Dispatch : var { d.vkCmdCopyImageToBuffer(this,srcImage,srcImageLayout,dstBuffer,regionCount,pRegions); }
		public void CmdCopyImageToBuffer(Image srcImage,ImageLayout srcImageLayout,Buffer dstBuffer,uint32 regionCount,BufferImageCopy* pRegions) => CmdCopyImageToBuffer<DispatchLoaderStatic>(srcImage,srcImageLayout,dstBuffer,regionCount,pRegions,.());
		public void CmdUpdateBuffer<Dispatch>(Buffer dstBuffer,DeviceSize dstOffset,DeviceSize dataSize,void* pData, Dispatch d) where Dispatch : var { d.vkCmdUpdateBuffer(this,dstBuffer,dstOffset,dataSize,pData); }
		public void CmdUpdateBuffer(Buffer dstBuffer,DeviceSize dstOffset,DeviceSize dataSize,void* pData) => CmdUpdateBuffer<DispatchLoaderStatic>(dstBuffer,dstOffset,dataSize,pData,.());
		public void CmdFillBuffer<Dispatch>(Buffer dstBuffer,DeviceSize dstOffset,DeviceSize size,uint32 data, Dispatch d) where Dispatch : var { d.vkCmdFillBuffer(this,dstBuffer,dstOffset,size,data); }
		public void CmdFillBuffer(Buffer dstBuffer,DeviceSize dstOffset,DeviceSize size,uint32 data) => CmdFillBuffer<DispatchLoaderStatic>(dstBuffer,dstOffset,size,data,.());
		public void CmdClearColorImage<Dispatch>(Image image,ImageLayout imageLayout,ClearColorValue* pColor,uint32 rangeCount,ImageSubresourceRange* pRanges, Dispatch d) where Dispatch : var { d.vkCmdClearColorImage(this,image,imageLayout,pColor,rangeCount,pRanges); }
		public void CmdClearColorImage(Image image,ImageLayout imageLayout,ClearColorValue* pColor,uint32 rangeCount,ImageSubresourceRange* pRanges) => CmdClearColorImage<DispatchLoaderStatic>(image,imageLayout,pColor,rangeCount,pRanges,.());
		public void CmdClearDepthStencilImage<Dispatch>(Image image,ImageLayout imageLayout,ClearDepthStencilValue* pDepthStencil,uint32 rangeCount,ImageSubresourceRange* pRanges, Dispatch d) where Dispatch : var { d.vkCmdClearDepthStencilImage(this,image,imageLayout,pDepthStencil,rangeCount,pRanges); }
		public void CmdClearDepthStencilImage(Image image,ImageLayout imageLayout,ClearDepthStencilValue* pDepthStencil,uint32 rangeCount,ImageSubresourceRange* pRanges) => CmdClearDepthStencilImage<DispatchLoaderStatic>(image,imageLayout,pDepthStencil,rangeCount,pRanges,.());
		public void CmdClearAttachments<Dispatch>(uint32 attachmentCount,ClearAttachment* pAttachments,uint32 rectCount,ClearRect* pRects, Dispatch d) where Dispatch : var { d.vkCmdClearAttachments(this,attachmentCount,pAttachments,rectCount,pRects); }
		public void CmdClearAttachments(uint32 attachmentCount,ClearAttachment* pAttachments,uint32 rectCount,ClearRect* pRects) => CmdClearAttachments<DispatchLoaderStatic>(attachmentCount,pAttachments,rectCount,pRects,.());
		public void CmdResolveImage<Dispatch>(Image srcImage,ImageLayout srcImageLayout,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,ImageResolve* pRegions, Dispatch d) where Dispatch : var { d.vkCmdResolveImage(this,srcImage,srcImageLayout,dstImage,dstImageLayout,regionCount,pRegions); }
		public void CmdResolveImage(Image srcImage,ImageLayout srcImageLayout,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,ImageResolve* pRegions) => CmdResolveImage<DispatchLoaderStatic>(srcImage,srcImageLayout,dstImage,dstImageLayout,regionCount,pRegions,.());
		public void CmdSetEvent<Dispatch>(Event event,PipelineStageFlags stageMask, Dispatch d) where Dispatch : var { d.vkCmdSetEvent(this,event,stageMask); }
		public void CmdSetEvent(Event event,PipelineStageFlags stageMask) => CmdSetEvent<DispatchLoaderStatic>(event,stageMask,.());
		public void CmdResetEvent<Dispatch>(Event event,PipelineStageFlags stageMask, Dispatch d) where Dispatch : var { d.vkCmdResetEvent(this,event,stageMask); }
		public void CmdResetEvent(Event event,PipelineStageFlags stageMask) => CmdResetEvent<DispatchLoaderStatic>(event,stageMask,.());
		public void CmdWaitEvents<Dispatch>(uint32 eventCount,Event* pEvents,PipelineStageFlags srcStageMask,PipelineStageFlags dstStageMask,uint32 memoryBarrierCount,MemoryBarrier* pMemoryBarriers,uint32 bufferMemoryBarrierCount,BufferMemoryBarrier* pBufferMemoryBarriers,uint32 imageMemoryBarrierCount,ImageMemoryBarrier* pImageMemoryBarriers, Dispatch d) where Dispatch : var { d.vkCmdWaitEvents(this,eventCount,pEvents,srcStageMask,dstStageMask,memoryBarrierCount,pMemoryBarriers,bufferMemoryBarrierCount,pBufferMemoryBarriers,imageMemoryBarrierCount,pImageMemoryBarriers); }
		public void CmdWaitEvents(uint32 eventCount,Event* pEvents,PipelineStageFlags srcStageMask,PipelineStageFlags dstStageMask,uint32 memoryBarrierCount,MemoryBarrier* pMemoryBarriers,uint32 bufferMemoryBarrierCount,BufferMemoryBarrier* pBufferMemoryBarriers,uint32 imageMemoryBarrierCount,ImageMemoryBarrier* pImageMemoryBarriers) => CmdWaitEvents<DispatchLoaderStatic>(eventCount,pEvents,srcStageMask,dstStageMask,memoryBarrierCount,pMemoryBarriers,bufferMemoryBarrierCount,pBufferMemoryBarriers,imageMemoryBarrierCount,pImageMemoryBarriers,.());
		public void CmdPipelineBarrier<Dispatch>(PipelineStageFlags srcStageMask,PipelineStageFlags dstStageMask,DependencyFlags dependencyFlags,uint32 memoryBarrierCount,MemoryBarrier* pMemoryBarriers,uint32 bufferMemoryBarrierCount,BufferMemoryBarrier* pBufferMemoryBarriers,uint32 imageMemoryBarrierCount,ImageMemoryBarrier* pImageMemoryBarriers, Dispatch d) where Dispatch : var { d.vkCmdPipelineBarrier(this,srcStageMask,dstStageMask,dependencyFlags,memoryBarrierCount,pMemoryBarriers,bufferMemoryBarrierCount,pBufferMemoryBarriers,imageMemoryBarrierCount,pImageMemoryBarriers); }
		public void CmdPipelineBarrier(PipelineStageFlags srcStageMask,PipelineStageFlags dstStageMask,DependencyFlags dependencyFlags,uint32 memoryBarrierCount,MemoryBarrier* pMemoryBarriers,uint32 bufferMemoryBarrierCount,BufferMemoryBarrier* pBufferMemoryBarriers,uint32 imageMemoryBarrierCount,ImageMemoryBarrier* pImageMemoryBarriers) => CmdPipelineBarrier<DispatchLoaderStatic>(srcStageMask,dstStageMask,dependencyFlags,memoryBarrierCount,pMemoryBarriers,bufferMemoryBarrierCount,pBufferMemoryBarriers,imageMemoryBarrierCount,pImageMemoryBarriers,.());
		public void CmdBeginQuery<Dispatch>(QueryPool queryPool,uint32 query,QueryControlFlags flags, Dispatch d) where Dispatch : var { d.vkCmdBeginQuery(this,queryPool,query,flags); }
		public void CmdBeginQuery(QueryPool queryPool,uint32 query,QueryControlFlags flags) => CmdBeginQuery<DispatchLoaderStatic>(queryPool,query,flags,.());
		public void CmdEndQuery<Dispatch>(QueryPool queryPool,uint32 query, Dispatch d) where Dispatch : var { d.vkCmdEndQuery(this,queryPool,query); }
		public void CmdEndQuery(QueryPool queryPool,uint32 query) => CmdEndQuery<DispatchLoaderStatic>(queryPool,query,.());
		public void CmdResetQueryPool<Dispatch>(QueryPool queryPool,uint32 firstQuery,uint32 queryCount, Dispatch d) where Dispatch : var { d.vkCmdResetQueryPool(this,queryPool,firstQuery,queryCount); }
		public void CmdResetQueryPool(QueryPool queryPool,uint32 firstQuery,uint32 queryCount) => CmdResetQueryPool<DispatchLoaderStatic>(queryPool,firstQuery,queryCount,.());
		public void CmdWriteTimestamp<Dispatch>(PipelineStageFlags pipelineStage,QueryPool queryPool,uint32 query, Dispatch d) where Dispatch : var { d.vkCmdWriteTimestamp(this,pipelineStage,queryPool,query); }
		public void CmdWriteTimestamp(PipelineStageFlags pipelineStage,QueryPool queryPool,uint32 query) => CmdWriteTimestamp<DispatchLoaderStatic>(pipelineStage,queryPool,query,.());
		public void CmdCopyQueryPoolResults<Dispatch>(QueryPool queryPool,uint32 firstQuery,uint32 queryCount,Buffer dstBuffer,DeviceSize dstOffset,DeviceSize stride,QueryResultFlags flags, Dispatch d) where Dispatch : var { d.vkCmdCopyQueryPoolResults(this,queryPool,firstQuery,queryCount,dstBuffer,dstOffset,stride,flags); }
		public void CmdCopyQueryPoolResults(QueryPool queryPool,uint32 firstQuery,uint32 queryCount,Buffer dstBuffer,DeviceSize dstOffset,DeviceSize stride,QueryResultFlags flags) => CmdCopyQueryPoolResults<DispatchLoaderStatic>(queryPool,firstQuery,queryCount,dstBuffer,dstOffset,stride,flags,.());
		public void CmdPushConstants<Dispatch>(PipelineLayout layout,ShaderStageFlags stageFlags,uint32 offset,uint32 size,void* pValues, Dispatch d) where Dispatch : var { d.vkCmdPushConstants(this,layout,stageFlags,offset,size,pValues); }
		public void CmdPushConstants(PipelineLayout layout,ShaderStageFlags stageFlags,uint32 offset,uint32 size,void* pValues) => CmdPushConstants<DispatchLoaderStatic>(layout,stageFlags,offset,size,pValues,.());
		public void CmdBeginRenderPass<Dispatch>(RenderPassBeginInfo* pRenderPassBegin,SubpassContents contents, Dispatch d) where Dispatch : var { d.vkCmdBeginRenderPass(this,pRenderPassBegin,contents); }
		public void CmdBeginRenderPass(RenderPassBeginInfo* pRenderPassBegin,SubpassContents contents) => CmdBeginRenderPass<DispatchLoaderStatic>(pRenderPassBegin,contents,.());
		public void CmdNextSubpass<Dispatch>(SubpassContents contents, Dispatch d) where Dispatch : var { d.vkCmdNextSubpass(this,contents); }
		public void CmdNextSubpass(SubpassContents contents) => CmdNextSubpass<DispatchLoaderStatic>(contents,.());
		public void CmdEndRenderPass<Dispatch>( Dispatch d) where Dispatch : var { d.vkCmdEndRenderPass(this); }
		public void CmdEndRenderPass() => CmdEndRenderPass<DispatchLoaderStatic>(.());
		public void CmdExecuteCommands<Dispatch>(uint32 commandBufferCount,CommandBuffer* pCommandBuffers, Dispatch d) where Dispatch : var { d.vkCmdExecuteCommands(this,commandBufferCount,pCommandBuffers); }
		public void CmdExecuteCommands(uint32 commandBufferCount,CommandBuffer* pCommandBuffers) => CmdExecuteCommands<DispatchLoaderStatic>(commandBufferCount,pCommandBuffers,.());
		public void CmdSetDeviceMask<Dispatch>(uint32 deviceMask, Dispatch d) where Dispatch : var { d.vkCmdSetDeviceMask(this,deviceMask); }
		public void CmdSetDeviceMask(uint32 deviceMask) => CmdSetDeviceMask<DispatchLoaderStatic>(deviceMask,.());
		public void CmdDispatchBase<Dispatch>(uint32 baseGroupX,uint32 baseGroupY,uint32 baseGroupZ,uint32 groupCountX,uint32 groupCountY,uint32 groupCountZ, Dispatch d) where Dispatch : var { d.vkCmdDispatchBase(this,baseGroupX,baseGroupY,baseGroupZ,groupCountX,groupCountY,groupCountZ); }
		public void CmdDispatchBase(uint32 baseGroupX,uint32 baseGroupY,uint32 baseGroupZ,uint32 groupCountX,uint32 groupCountY,uint32 groupCountZ) => CmdDispatchBase<DispatchLoaderStatic>(baseGroupX,baseGroupY,baseGroupZ,groupCountX,groupCountY,groupCountZ,.());
		public void CmdDrawIndirectCount<Dispatch>(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride, Dispatch d) where Dispatch : var { d.vkCmdDrawIndirectCount(this,buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride); }
		public void CmdDrawIndirectCount(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride) => CmdDrawIndirectCount<DispatchLoaderStatic>(buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride,.());
		public void CmdDrawIndexedIndirectCount<Dispatch>(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride, Dispatch d) where Dispatch : var { d.vkCmdDrawIndexedIndirectCount(this,buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride); }
		public void CmdDrawIndexedIndirectCount(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride) => CmdDrawIndexedIndirectCount<DispatchLoaderStatic>(buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride,.());
		public void CmdBeginRenderPass2<Dispatch>(RenderPassBeginInfo* pRenderPassBegin,SubpassBeginInfo* pSubpassBeginInfo, Dispatch d) where Dispatch : var { d.vkCmdBeginRenderPass2(this,pRenderPassBegin,pSubpassBeginInfo); }
		public void CmdBeginRenderPass2(RenderPassBeginInfo* pRenderPassBegin,SubpassBeginInfo* pSubpassBeginInfo) => CmdBeginRenderPass2<DispatchLoaderStatic>(pRenderPassBegin,pSubpassBeginInfo,.());
		public void CmdNextSubpass2<Dispatch>(SubpassBeginInfo* pSubpassBeginInfo,SubpassEndInfo* pSubpassEndInfo, Dispatch d) where Dispatch : var { d.vkCmdNextSubpass2(this,pSubpassBeginInfo,pSubpassEndInfo); }
		public void CmdNextSubpass2(SubpassBeginInfo* pSubpassBeginInfo,SubpassEndInfo* pSubpassEndInfo) => CmdNextSubpass2<DispatchLoaderStatic>(pSubpassBeginInfo,pSubpassEndInfo,.());
		public void CmdEndRenderPass2<Dispatch>(SubpassEndInfo* pSubpassEndInfo, Dispatch d) where Dispatch : var { d.vkCmdEndRenderPass2(this,pSubpassEndInfo); }
		public void CmdEndRenderPass2(SubpassEndInfo* pSubpassEndInfo) => CmdEndRenderPass2<DispatchLoaderStatic>(pSubpassEndInfo,.());
		public void CmdSetDeviceMaskKHR<Dispatch>(uint32 deviceMask, Dispatch d) where Dispatch : var { d.vkCmdSetDeviceMaskKHR(this,deviceMask); }
		public void CmdSetDeviceMaskKHR(uint32 deviceMask) => CmdSetDeviceMaskKHR<DispatchLoaderStatic>(deviceMask,.());
		public void CmdDispatchBaseKHR<Dispatch>(uint32 baseGroupX,uint32 baseGroupY,uint32 baseGroupZ,uint32 groupCountX,uint32 groupCountY,uint32 groupCountZ, Dispatch d) where Dispatch : var { d.vkCmdDispatchBaseKHR(this,baseGroupX,baseGroupY,baseGroupZ,groupCountX,groupCountY,groupCountZ); }
		public void CmdDispatchBaseKHR(uint32 baseGroupX,uint32 baseGroupY,uint32 baseGroupZ,uint32 groupCountX,uint32 groupCountY,uint32 groupCountZ) => CmdDispatchBaseKHR<DispatchLoaderStatic>(baseGroupX,baseGroupY,baseGroupZ,groupCountX,groupCountY,groupCountZ,.());
		public void CmdPushDescriptorSetKHR<Dispatch>(PipelineBindPoint pipelineBindPoint,PipelineLayout layout,uint32 set,uint32 descriptorWriteCount,WriteDescriptorSet* pDescriptorWrites, Dispatch d) where Dispatch : var { d.vkCmdPushDescriptorSetKHR(this,pipelineBindPoint,layout,set,descriptorWriteCount,pDescriptorWrites); }
		public void CmdPushDescriptorSetKHR(PipelineBindPoint pipelineBindPoint,PipelineLayout layout,uint32 set,uint32 descriptorWriteCount,WriteDescriptorSet* pDescriptorWrites) => CmdPushDescriptorSetKHR<DispatchLoaderStatic>(pipelineBindPoint,layout,set,descriptorWriteCount,pDescriptorWrites,.());
		public void CmdPushDescriptorSetWithTemplateKHR<Dispatch>(DescriptorUpdateTemplate descriptorUpdateTemplate,PipelineLayout layout,uint32 set,void* pData, Dispatch d) where Dispatch : var { d.vkCmdPushDescriptorSetWithTemplateKHR(this,descriptorUpdateTemplate,layout,set,pData); }
		public void CmdPushDescriptorSetWithTemplateKHR(DescriptorUpdateTemplate descriptorUpdateTemplate,PipelineLayout layout,uint32 set,void* pData) => CmdPushDescriptorSetWithTemplateKHR<DispatchLoaderStatic>(descriptorUpdateTemplate,layout,set,pData,.());
		public void CmdBeginRenderPass2KHR<Dispatch>(RenderPassBeginInfo* pRenderPassBegin,SubpassBeginInfo* pSubpassBeginInfo, Dispatch d) where Dispatch : var { d.vkCmdBeginRenderPass2KHR(this,pRenderPassBegin,pSubpassBeginInfo); }
		public void CmdBeginRenderPass2KHR(RenderPassBeginInfo* pRenderPassBegin,SubpassBeginInfo* pSubpassBeginInfo) => CmdBeginRenderPass2KHR<DispatchLoaderStatic>(pRenderPassBegin,pSubpassBeginInfo,.());
		public void CmdNextSubpass2KHR<Dispatch>(SubpassBeginInfo* pSubpassBeginInfo,SubpassEndInfo* pSubpassEndInfo, Dispatch d) where Dispatch : var { d.vkCmdNextSubpass2KHR(this,pSubpassBeginInfo,pSubpassEndInfo); }
		public void CmdNextSubpass2KHR(SubpassBeginInfo* pSubpassBeginInfo,SubpassEndInfo* pSubpassEndInfo) => CmdNextSubpass2KHR<DispatchLoaderStatic>(pSubpassBeginInfo,pSubpassEndInfo,.());
		public void CmdEndRenderPass2KHR<Dispatch>(SubpassEndInfo* pSubpassEndInfo, Dispatch d) where Dispatch : var { d.vkCmdEndRenderPass2KHR(this,pSubpassEndInfo); }
		public void CmdEndRenderPass2KHR(SubpassEndInfo* pSubpassEndInfo) => CmdEndRenderPass2KHR<DispatchLoaderStatic>(pSubpassEndInfo,.());
		public void CmdDrawIndirectCountKHR<Dispatch>(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride, Dispatch d) where Dispatch : var { d.vkCmdDrawIndirectCountKHR(this,buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride); }
		public void CmdDrawIndirectCountKHR(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride) => CmdDrawIndirectCountKHR<DispatchLoaderStatic>(buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride,.());
		public void CmdDrawIndexedIndirectCountKHR<Dispatch>(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride, Dispatch d) where Dispatch : var { d.vkCmdDrawIndexedIndirectCountKHR(this,buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride); }
		public void CmdDrawIndexedIndirectCountKHR(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride) => CmdDrawIndexedIndirectCountKHR<DispatchLoaderStatic>(buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride,.());
		public void CmdDebugMarkerBeginEXT<Dispatch>(DebugMarkerMarkerInfoEXT* pMarkerInfo, Dispatch d) where Dispatch : var { d.vkCmdDebugMarkerBeginEXT(this,pMarkerInfo); }
		public void CmdDebugMarkerBeginEXT(DebugMarkerMarkerInfoEXT* pMarkerInfo) => CmdDebugMarkerBeginEXT<DispatchLoaderStatic>(pMarkerInfo,.());
		public void CmdDebugMarkerEndEXT<Dispatch>( Dispatch d) where Dispatch : var { d.vkCmdDebugMarkerEndEXT(this); }
		public void CmdDebugMarkerEndEXT() => CmdDebugMarkerEndEXT<DispatchLoaderStatic>(.());
		public void CmdDebugMarkerInsertEXT<Dispatch>(DebugMarkerMarkerInfoEXT* pMarkerInfo, Dispatch d) where Dispatch : var { d.vkCmdDebugMarkerInsertEXT(this,pMarkerInfo); }
		public void CmdDebugMarkerInsertEXT(DebugMarkerMarkerInfoEXT* pMarkerInfo) => CmdDebugMarkerInsertEXT<DispatchLoaderStatic>(pMarkerInfo,.());
		public void CmdBindTransformFeedbackBuffersEXT<Dispatch>(uint32 firstBinding,uint32 bindingCount,Buffer* pBuffers,DeviceSize* pOffsets,DeviceSize* pSizes, Dispatch d) where Dispatch : var { d.vkCmdBindTransformFeedbackBuffersEXT(this,firstBinding,bindingCount,pBuffers,pOffsets,pSizes); }
		public void CmdBindTransformFeedbackBuffersEXT(uint32 firstBinding,uint32 bindingCount,Buffer* pBuffers,DeviceSize* pOffsets,DeviceSize* pSizes) => CmdBindTransformFeedbackBuffersEXT<DispatchLoaderStatic>(firstBinding,bindingCount,pBuffers,pOffsets,pSizes,.());
		public void CmdBeginTransformFeedbackEXT<Dispatch>(uint32 firstCounterBuffer,uint32 counterBufferCount,Buffer* pCounterBuffers,DeviceSize* pCounterBufferOffsets, Dispatch d) where Dispatch : var { d.vkCmdBeginTransformFeedbackEXT(this,firstCounterBuffer,counterBufferCount,pCounterBuffers,pCounterBufferOffsets); }
		public void CmdBeginTransformFeedbackEXT(uint32 firstCounterBuffer,uint32 counterBufferCount,Buffer* pCounterBuffers,DeviceSize* pCounterBufferOffsets) => CmdBeginTransformFeedbackEXT<DispatchLoaderStatic>(firstCounterBuffer,counterBufferCount,pCounterBuffers,pCounterBufferOffsets,.());
		public void CmdEndTransformFeedbackEXT<Dispatch>(uint32 firstCounterBuffer,uint32 counterBufferCount,Buffer* pCounterBuffers,DeviceSize* pCounterBufferOffsets, Dispatch d) where Dispatch : var { d.vkCmdEndTransformFeedbackEXT(this,firstCounterBuffer,counterBufferCount,pCounterBuffers,pCounterBufferOffsets); }
		public void CmdEndTransformFeedbackEXT(uint32 firstCounterBuffer,uint32 counterBufferCount,Buffer* pCounterBuffers,DeviceSize* pCounterBufferOffsets) => CmdEndTransformFeedbackEXT<DispatchLoaderStatic>(firstCounterBuffer,counterBufferCount,pCounterBuffers,pCounterBufferOffsets,.());
		public void CmdBeginQueryIndexedEXT<Dispatch>(QueryPool queryPool,uint32 query,QueryControlFlags flags,uint32 index, Dispatch d) where Dispatch : var { d.vkCmdBeginQueryIndexedEXT(this,queryPool,query,flags,index); }
		public void CmdBeginQueryIndexedEXT(QueryPool queryPool,uint32 query,QueryControlFlags flags,uint32 index) => CmdBeginQueryIndexedEXT<DispatchLoaderStatic>(queryPool,query,flags,index,.());
		public void CmdEndQueryIndexedEXT<Dispatch>(QueryPool queryPool,uint32 query,uint32 index, Dispatch d) where Dispatch : var { d.vkCmdEndQueryIndexedEXT(this,queryPool,query,index); }
		public void CmdEndQueryIndexedEXT(QueryPool queryPool,uint32 query,uint32 index) => CmdEndQueryIndexedEXT<DispatchLoaderStatic>(queryPool,query,index,.());
		public void CmdDrawIndirectByteCountEXT<Dispatch>(uint32 instanceCount,uint32 firstInstance,Buffer counterBuffer,DeviceSize counterBufferOffset,uint32 counterOffset,uint32 vertexStride, Dispatch d) where Dispatch : var { d.vkCmdDrawIndirectByteCountEXT(this,instanceCount,firstInstance,counterBuffer,counterBufferOffset,counterOffset,vertexStride); }
		public void CmdDrawIndirectByteCountEXT(uint32 instanceCount,uint32 firstInstance,Buffer counterBuffer,DeviceSize counterBufferOffset,uint32 counterOffset,uint32 vertexStride) => CmdDrawIndirectByteCountEXT<DispatchLoaderStatic>(instanceCount,firstInstance,counterBuffer,counterBufferOffset,counterOffset,vertexStride,.());
		public void CmdDrawIndirectCountAMD<Dispatch>(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride, Dispatch d) where Dispatch : var { d.vkCmdDrawIndirectCountAMD(this,buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride); }
		public void CmdDrawIndirectCountAMD(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride) => CmdDrawIndirectCountAMD<DispatchLoaderStatic>(buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride,.());
		public void CmdDrawIndexedIndirectCountAMD<Dispatch>(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride, Dispatch d) where Dispatch : var { d.vkCmdDrawIndexedIndirectCountAMD(this,buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride); }
		public void CmdDrawIndexedIndirectCountAMD(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride) => CmdDrawIndexedIndirectCountAMD<DispatchLoaderStatic>(buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride,.());
		public void CmdBeginConditionalRenderingEXT<Dispatch>(ConditionalRenderingBeginInfoEXT* pConditionalRenderingBegin, Dispatch d) where Dispatch : var { d.vkCmdBeginConditionalRenderingEXT(this,pConditionalRenderingBegin); }
		public void CmdBeginConditionalRenderingEXT(ConditionalRenderingBeginInfoEXT* pConditionalRenderingBegin) => CmdBeginConditionalRenderingEXT<DispatchLoaderStatic>(pConditionalRenderingBegin,.());
		public void CmdEndConditionalRenderingEXT<Dispatch>( Dispatch d) where Dispatch : var { d.vkCmdEndConditionalRenderingEXT(this); }
		public void CmdEndConditionalRenderingEXT() => CmdEndConditionalRenderingEXT<DispatchLoaderStatic>(.());
		public void CmdSetViewportWScalingNV<Dispatch>(uint32 firstViewport,uint32 viewportCount,ViewportWScalingNV* pViewportWScalings, Dispatch d) where Dispatch : var { d.vkCmdSetViewportWScalingNV(this,firstViewport,viewportCount,pViewportWScalings); }
		public void CmdSetViewportWScalingNV(uint32 firstViewport,uint32 viewportCount,ViewportWScalingNV* pViewportWScalings) => CmdSetViewportWScalingNV<DispatchLoaderStatic>(firstViewport,viewportCount,pViewportWScalings,.());
		public void CmdSetDiscardRectangleEXT<Dispatch>(uint32 firstDiscardRectangle,uint32 discardRectangleCount,Rect2D* pDiscardRectangles, Dispatch d) where Dispatch : var { d.vkCmdSetDiscardRectangleEXT(this,firstDiscardRectangle,discardRectangleCount,pDiscardRectangles); }
		public void CmdSetDiscardRectangleEXT(uint32 firstDiscardRectangle,uint32 discardRectangleCount,Rect2D* pDiscardRectangles) => CmdSetDiscardRectangleEXT<DispatchLoaderStatic>(firstDiscardRectangle,discardRectangleCount,pDiscardRectangles,.());
		public void CmdBeginDebugUtilsLabelEXT<Dispatch>(DebugUtilsLabelEXT* pLabelInfo, Dispatch d) where Dispatch : var { d.vkCmdBeginDebugUtilsLabelEXT(this,pLabelInfo); }
		public void CmdBeginDebugUtilsLabelEXT(DebugUtilsLabelEXT* pLabelInfo) => CmdBeginDebugUtilsLabelEXT<DispatchLoaderStatic>(pLabelInfo,.());
		public void CmdEndDebugUtilsLabelEXT<Dispatch>( Dispatch d) where Dispatch : var { d.vkCmdEndDebugUtilsLabelEXT(this); }
		public void CmdEndDebugUtilsLabelEXT() => CmdEndDebugUtilsLabelEXT<DispatchLoaderStatic>(.());
		public void CmdInsertDebugUtilsLabelEXT<Dispatch>(DebugUtilsLabelEXT* pLabelInfo, Dispatch d) where Dispatch : var { d.vkCmdInsertDebugUtilsLabelEXT(this,pLabelInfo); }
		public void CmdInsertDebugUtilsLabelEXT(DebugUtilsLabelEXT* pLabelInfo) => CmdInsertDebugUtilsLabelEXT<DispatchLoaderStatic>(pLabelInfo,.());
		public void CmdSetSampleLocationsEXT<Dispatch>(SampleLocationsInfoEXT* pSampleLocationsInfo, Dispatch d) where Dispatch : var { d.vkCmdSetSampleLocationsEXT(this,pSampleLocationsInfo); }
		public void CmdSetSampleLocationsEXT(SampleLocationsInfoEXT* pSampleLocationsInfo) => CmdSetSampleLocationsEXT<DispatchLoaderStatic>(pSampleLocationsInfo,.());
		public void CmdBindShadingRateImageNV<Dispatch>(ImageView imageView,ImageLayout imageLayout, Dispatch d) where Dispatch : var { d.vkCmdBindShadingRateImageNV(this,imageView,imageLayout); }
		public void CmdBindShadingRateImageNV(ImageView imageView,ImageLayout imageLayout) => CmdBindShadingRateImageNV<DispatchLoaderStatic>(imageView,imageLayout,.());
		public void CmdSetViewportShadingRatePaletteNV<Dispatch>(uint32 firstViewport,uint32 viewportCount,ShadingRatePaletteNV* pShadingRatePalettes, Dispatch d) where Dispatch : var { d.vkCmdSetViewportShadingRatePaletteNV(this,firstViewport,viewportCount,pShadingRatePalettes); }
		public void CmdSetViewportShadingRatePaletteNV(uint32 firstViewport,uint32 viewportCount,ShadingRatePaletteNV* pShadingRatePalettes) => CmdSetViewportShadingRatePaletteNV<DispatchLoaderStatic>(firstViewport,viewportCount,pShadingRatePalettes,.());
		public void CmdSetCoarseSampleOrderNV<Dispatch>(CoarseSampleOrderTypeNV sampleOrderType,uint32 customSampleOrderCount,CoarseSampleOrderCustomNV* pCustomSampleOrders, Dispatch d) where Dispatch : var { d.vkCmdSetCoarseSampleOrderNV(this,sampleOrderType,customSampleOrderCount,pCustomSampleOrders); }
		public void CmdSetCoarseSampleOrderNV(CoarseSampleOrderTypeNV sampleOrderType,uint32 customSampleOrderCount,CoarseSampleOrderCustomNV* pCustomSampleOrders) => CmdSetCoarseSampleOrderNV<DispatchLoaderStatic>(sampleOrderType,customSampleOrderCount,pCustomSampleOrders,.());
		public void CmdBuildAccelerationStructureNV<Dispatch>(AccelerationStructureInfoNV* pInfo,Buffer instanceData,DeviceSize instanceOffset,Bool32 update,AccelerationStructureKHR dst,AccelerationStructureKHR src,Buffer scratch,DeviceSize scratchOffset, Dispatch d) where Dispatch : var { d.vkCmdBuildAccelerationStructureNV(this,pInfo,instanceData,instanceOffset,update,dst,src,scratch,scratchOffset); }
		public void CmdBuildAccelerationStructureNV(AccelerationStructureInfoNV* pInfo,Buffer instanceData,DeviceSize instanceOffset,Bool32 update,AccelerationStructureKHR dst,AccelerationStructureKHR src,Buffer scratch,DeviceSize scratchOffset) => CmdBuildAccelerationStructureNV<DispatchLoaderStatic>(pInfo,instanceData,instanceOffset,update,dst,src,scratch,scratchOffset,.());
		public void CmdCopyAccelerationStructureNV<Dispatch>(AccelerationStructureKHR dst,AccelerationStructureKHR src,CopyAccelerationStructureModeKHR mode, Dispatch d) where Dispatch : var { d.vkCmdCopyAccelerationStructureNV(this,dst,src,mode); }
		public void CmdCopyAccelerationStructureNV(AccelerationStructureKHR dst,AccelerationStructureKHR src,CopyAccelerationStructureModeKHR mode) => CmdCopyAccelerationStructureNV<DispatchLoaderStatic>(dst,src,mode,.());
		public void CmdTraceRaysNV<Dispatch>(Buffer raygenShaderBindingTableBuffer,DeviceSize raygenShaderBindingOffset,Buffer missShaderBindingTableBuffer,DeviceSize missShaderBindingOffset,DeviceSize missShaderBindingStride,Buffer hitShaderBindingTableBuffer,DeviceSize hitShaderBindingOffset,DeviceSize hitShaderBindingStride,Buffer callableShaderBindingTableBuffer,DeviceSize callableShaderBindingOffset,DeviceSize callableShaderBindingStride,uint32 width,uint32 height,uint32 depth, Dispatch d) where Dispatch : var { d.vkCmdTraceRaysNV(this,raygenShaderBindingTableBuffer,raygenShaderBindingOffset,missShaderBindingTableBuffer,missShaderBindingOffset,missShaderBindingStride,hitShaderBindingTableBuffer,hitShaderBindingOffset,hitShaderBindingStride,callableShaderBindingTableBuffer,callableShaderBindingOffset,callableShaderBindingStride,width,height,depth); }
		public void CmdTraceRaysNV(Buffer raygenShaderBindingTableBuffer,DeviceSize raygenShaderBindingOffset,Buffer missShaderBindingTableBuffer,DeviceSize missShaderBindingOffset,DeviceSize missShaderBindingStride,Buffer hitShaderBindingTableBuffer,DeviceSize hitShaderBindingOffset,DeviceSize hitShaderBindingStride,Buffer callableShaderBindingTableBuffer,DeviceSize callableShaderBindingOffset,DeviceSize callableShaderBindingStride,uint32 width,uint32 height,uint32 depth) => CmdTraceRaysNV<DispatchLoaderStatic>(raygenShaderBindingTableBuffer,raygenShaderBindingOffset,missShaderBindingTableBuffer,missShaderBindingOffset,missShaderBindingStride,hitShaderBindingTableBuffer,hitShaderBindingOffset,hitShaderBindingStride,callableShaderBindingTableBuffer,callableShaderBindingOffset,callableShaderBindingStride,width,height,depth,.());
		public void CmdWriteAccelerationStructuresPropertiesKHR<Dispatch>(uint32 accelerationStructureCount,AccelerationStructureKHR* pAccelerationStructures,QueryType queryType,QueryPool queryPool,uint32 firstQuery, Dispatch d) where Dispatch : var { d.vkCmdWriteAccelerationStructuresPropertiesKHR(this,accelerationStructureCount,pAccelerationStructures,queryType,queryPool,firstQuery); }
		public void CmdWriteAccelerationStructuresPropertiesKHR(uint32 accelerationStructureCount,AccelerationStructureKHR* pAccelerationStructures,QueryType queryType,QueryPool queryPool,uint32 firstQuery) => CmdWriteAccelerationStructuresPropertiesKHR<DispatchLoaderStatic>(accelerationStructureCount,pAccelerationStructures,queryType,queryPool,firstQuery,.());
		public void CmdWriteAccelerationStructuresPropertiesNV<Dispatch>(uint32 accelerationStructureCount,AccelerationStructureKHR* pAccelerationStructures,QueryType queryType,QueryPool queryPool,uint32 firstQuery, Dispatch d) where Dispatch : var { d.vkCmdWriteAccelerationStructuresPropertiesNV(this,accelerationStructureCount,pAccelerationStructures,queryType,queryPool,firstQuery); }
		public void CmdWriteAccelerationStructuresPropertiesNV(uint32 accelerationStructureCount,AccelerationStructureKHR* pAccelerationStructures,QueryType queryType,QueryPool queryPool,uint32 firstQuery) => CmdWriteAccelerationStructuresPropertiesNV<DispatchLoaderStatic>(accelerationStructureCount,pAccelerationStructures,queryType,queryPool,firstQuery,.());
		public void CmdWriteBufferMarkerAMD<Dispatch>(PipelineStageFlags pipelineStage,Buffer dstBuffer,DeviceSize dstOffset,uint32 marker, Dispatch d) where Dispatch : var { d.vkCmdWriteBufferMarkerAMD(this,pipelineStage,dstBuffer,dstOffset,marker); }
		public void CmdWriteBufferMarkerAMD(PipelineStageFlags pipelineStage,Buffer dstBuffer,DeviceSize dstOffset,uint32 marker) => CmdWriteBufferMarkerAMD<DispatchLoaderStatic>(pipelineStage,dstBuffer,dstOffset,marker,.());
		public void CmdDrawMeshTasksNV<Dispatch>(uint32 taskCount,uint32 firstTask, Dispatch d) where Dispatch : var { d.vkCmdDrawMeshTasksNV(this,taskCount,firstTask); }
		public void CmdDrawMeshTasksNV(uint32 taskCount,uint32 firstTask) => CmdDrawMeshTasksNV<DispatchLoaderStatic>(taskCount,firstTask,.());
		public void CmdDrawMeshTasksIndirectNV<Dispatch>(Buffer buffer,DeviceSize offset,uint32 drawCount,uint32 stride, Dispatch d) where Dispatch : var { d.vkCmdDrawMeshTasksIndirectNV(this,buffer,offset,drawCount,stride); }
		public void CmdDrawMeshTasksIndirectNV(Buffer buffer,DeviceSize offset,uint32 drawCount,uint32 stride) => CmdDrawMeshTasksIndirectNV<DispatchLoaderStatic>(buffer,offset,drawCount,stride,.());
		public void CmdDrawMeshTasksIndirectCountNV<Dispatch>(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride, Dispatch d) where Dispatch : var { d.vkCmdDrawMeshTasksIndirectCountNV(this,buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride); }
		public void CmdDrawMeshTasksIndirectCountNV(Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride) => CmdDrawMeshTasksIndirectCountNV<DispatchLoaderStatic>(buffer,offset,countBuffer,countBufferOffset,maxDrawCount,stride,.());
		public void CmdSetExclusiveScissorNV<Dispatch>(uint32 firstExclusiveScissor,uint32 exclusiveScissorCount,Rect2D* pExclusiveScissors, Dispatch d) where Dispatch : var { d.vkCmdSetExclusiveScissorNV(this,firstExclusiveScissor,exclusiveScissorCount,pExclusiveScissors); }
		public void CmdSetExclusiveScissorNV(uint32 firstExclusiveScissor,uint32 exclusiveScissorCount,Rect2D* pExclusiveScissors) => CmdSetExclusiveScissorNV<DispatchLoaderStatic>(firstExclusiveScissor,exclusiveScissorCount,pExclusiveScissors,.());
		public void CmdSetCheckpointNV<Dispatch>(void* pCheckpointMarker, Dispatch d) where Dispatch : var { d.vkCmdSetCheckpointNV(this,pCheckpointMarker); }
		public void CmdSetCheckpointNV(void* pCheckpointMarker) => CmdSetCheckpointNV<DispatchLoaderStatic>(pCheckpointMarker,.());
		public Result CmdSetPerformanceMarkerINTEL<Dispatch>(PerformanceMarkerInfoINTEL* pMarkerInfo, Dispatch d) where Dispatch : var { return d.vkCmdSetPerformanceMarkerINTEL(this,pMarkerInfo); }
		public Result CmdSetPerformanceMarkerINTEL(PerformanceMarkerInfoINTEL* pMarkerInfo) => CmdSetPerformanceMarkerINTEL<DispatchLoaderStatic>(pMarkerInfo,.());
		public Result CmdSetPerformanceStreamMarkerINTEL<Dispatch>(PerformanceStreamMarkerInfoINTEL* pMarkerInfo, Dispatch d) where Dispatch : var { return d.vkCmdSetPerformanceStreamMarkerINTEL(this,pMarkerInfo); }
		public Result CmdSetPerformanceStreamMarkerINTEL(PerformanceStreamMarkerInfoINTEL* pMarkerInfo) => CmdSetPerformanceStreamMarkerINTEL<DispatchLoaderStatic>(pMarkerInfo,.());
		public Result CmdSetPerformanceOverrideINTEL<Dispatch>(PerformanceOverrideInfoINTEL* pOverrideInfo, Dispatch d) where Dispatch : var { return d.vkCmdSetPerformanceOverrideINTEL(this,pOverrideInfo); }
		public Result CmdSetPerformanceOverrideINTEL(PerformanceOverrideInfoINTEL* pOverrideInfo) => CmdSetPerformanceOverrideINTEL<DispatchLoaderStatic>(pOverrideInfo,.());
		public void CmdSetLineStippleEXT<Dispatch>(uint32 lineStippleFactor,uint16 lineStipplePattern, Dispatch d) where Dispatch : var { d.vkCmdSetLineStippleEXT(this,lineStippleFactor,lineStipplePattern); }
		public void CmdSetLineStippleEXT(uint32 lineStippleFactor,uint16 lineStipplePattern) => CmdSetLineStippleEXT<DispatchLoaderStatic>(lineStippleFactor,lineStipplePattern,.());
		public void CmdPreprocessGeneratedCommandsNV<Dispatch>(GeneratedCommandsInfoNV* pGeneratedCommandsInfo, Dispatch d) where Dispatch : var { d.vkCmdPreprocessGeneratedCommandsNV(this,pGeneratedCommandsInfo); }
		public void CmdPreprocessGeneratedCommandsNV(GeneratedCommandsInfoNV* pGeneratedCommandsInfo) => CmdPreprocessGeneratedCommandsNV<DispatchLoaderStatic>(pGeneratedCommandsInfo,.());
		public void CmdExecuteGeneratedCommandsNV<Dispatch>(Bool32 isPreprocessed,GeneratedCommandsInfoNV* pGeneratedCommandsInfo, Dispatch d) where Dispatch : var { d.vkCmdExecuteGeneratedCommandsNV(this,isPreprocessed,pGeneratedCommandsInfo); }
		public void CmdExecuteGeneratedCommandsNV(Bool32 isPreprocessed,GeneratedCommandsInfoNV* pGeneratedCommandsInfo) => CmdExecuteGeneratedCommandsNV<DispatchLoaderStatic>(isPreprocessed,pGeneratedCommandsInfo,.());
		public void CmdBindPipelineShaderGroupNV<Dispatch>(PipelineBindPoint pipelineBindPoint,Pipeline pipeline,uint32 groupIndex, Dispatch d) where Dispatch : var { d.vkCmdBindPipelineShaderGroupNV(this,pipelineBindPoint,pipeline,groupIndex); }
		public void CmdBindPipelineShaderGroupNV(PipelineBindPoint pipelineBindPoint,Pipeline pipeline,uint32 groupIndex) => CmdBindPipelineShaderGroupNV<DispatchLoaderStatic>(pipelineBindPoint,pipeline,groupIndex,.());
	}
}