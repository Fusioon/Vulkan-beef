using System;

namespace Vulkan 
{
	public struct Instance : Handle {}

	public struct PhysicalDevice : Handle {}

	public struct Device : Handle {}

	public struct Queue : Handle {}

	public struct CommandBuffer : Handle {}

	public struct Semaphore : NonDispatchableHandle {}

	public struct Fence : NonDispatchableHandle {}

	public struct DeviceMemory : NonDispatchableHandle {}

	public struct Buffer : NonDispatchableHandle {}

	public struct Image : NonDispatchableHandle {}

	public struct Event : NonDispatchableHandle {}

	public struct QueryPool : NonDispatchableHandle {}

	public struct BufferView : NonDispatchableHandle {}

	public struct ImageView : NonDispatchableHandle {}

	public struct ShaderModule : NonDispatchableHandle {}

	public struct PipelineCache : NonDispatchableHandle {}

	public struct PipelineLayout : NonDispatchableHandle {}

	public struct RenderPass : NonDispatchableHandle {}

	public struct Pipeline : NonDispatchableHandle {}

	public struct DescriptorSetLayout : NonDispatchableHandle {}

	public struct Sampler : NonDispatchableHandle {}

	public struct DescriptorPool : NonDispatchableHandle {}

	public struct DescriptorSet : NonDispatchableHandle {}

	public struct Framebuffer : NonDispatchableHandle {}

	public struct CommandPool : NonDispatchableHandle {}

	public struct SamplerYcbcrConversion : NonDispatchableHandle {}

	public struct DescriptorUpdateTemplate : NonDispatchableHandle {}

	public struct SurfaceKHR : NonDispatchableHandle {}

	public struct SwapchainKHR : NonDispatchableHandle {}

	public struct DisplayKHR : NonDispatchableHandle {}

	public struct DisplayModeKHR : NonDispatchableHandle {}

	public struct DebugReportCallbackEXT : NonDispatchableHandle {}

	public struct DebugUtilsMessengerEXT : NonDispatchableHandle {}

	public struct ValidationCacheEXT : NonDispatchableHandle {}

	public struct AccelerationStructureKHR : NonDispatchableHandle {}

	public struct PerformanceConfigurationINTEL : NonDispatchableHandle {}

	public struct IndirectCommandsLayoutNV : NonDispatchableHandle {}

}