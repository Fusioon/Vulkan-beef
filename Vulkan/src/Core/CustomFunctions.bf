using System;

namespace Vulkan
{
	public static
	{
		public static uint32 MakeVersion(uint32 major, uint32 minor, uint32 patch) => (((major) << 22) | ((minor) << 12) | (patch));

		public static Result<Instance, Result> CreateInstance<Dispatch>(ref InstanceCreateInfo createInfo, AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Instance inst = ?;
			Result result = d.vkCreateInstance(&createInfo, pAllocator, &inst);
			if(result == .Success) return inst;

			return .Err(result);
		}
		public static Result<Instance, Result> CreateInstance(ref InstanceCreateInfo createInfo, AllocationCallbacks* pAllocator) => CreateInstance<DispatchLoaderStatic>(ref createInfo, pAllocator, .());
	}
}
