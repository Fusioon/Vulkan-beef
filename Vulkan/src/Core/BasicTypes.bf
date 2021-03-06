using System;

namespace Vulkan
{
	typealias Flags = uint32;
	typealias DeviceSize = uint64;
	typealias DeviceAddress = uint64;
	typealias SampleMask = uint32;

	struct Bool32 : uint32
	{
		public this(bool value)
		{
			this = value ? 1 : 0;
		}
		public static implicit operator Bool32(bool value)
		{
			return Bool32(value);
		}
		public static operator bool(Bool32 b)
		{
			return (.)b;
		}
	}

	struct Handle : uint
	{
	}

	struct NonDispatchableHandle : uint64
	{
	}
}
