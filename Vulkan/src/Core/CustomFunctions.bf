using System;

namespace Vulkan
{
	public static
	{
		public static mixin MakeVersion(uint32 major, uint32 minor, uint32 patch)
		{
			(((major) << 22) | ((minor) << 12) | (patch))
		}

		public static mixin ReturnSuccess<T>(Result result, T value)
		{
			if (result == .Success) return Result<T, Result>.Ok(value);

			return Result<T, Result>.Err(result);
		}

		public static Result<Instance, Result> CreateInstance<Dispatch>(ref InstanceCreateInfo createInfo, AllocationCallbacks* pAllocator, Dispatch d) where Dispatch : var
		{
			Instance inst = ?;
			ReturnSuccess!(d.vkCreateInstance(&createInfo, pAllocator, &inst), inst);
		}
		public static Result<Instance, Result> CreateInstance(ref InstanceCreateInfo createInfo, AllocationCallbacks* pAllocator) => CreateInstance<DispatchLoaderStatic>(ref createInfo, pAllocator, .());
	}
}
