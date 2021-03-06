#if BF_PLATFORM_WINDOWS
using System;

namespace Vulkan.Win32
{
	typealias HINSTANCE = Windows.HInstance;
	typealias HWND = Windows.HWnd;
	
	typealias HANDLE = Windows.Handle;
	typealias HMONITOR = void*;

	[CRepr]
	public struct SECURITY_ATTRIBUTES
	{
		public int32 nLength;
		public void* lpSecurityDescriptor;
		public Windows.IntBool bInheritHandle;
	}
}
#endif