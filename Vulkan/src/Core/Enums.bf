using System;

namespace Vulkan 
{
	[AllowDuplicates]
	public enum PipelineCacheHeaderVersion : Flags 
	{
		One = 1,
	}

	[AllowDuplicates]
	public enum Result : int32 
	{
		Success = 0,
		NotReady = 1,
		Timeout = 2,
		EventSet = 3,
		EventReset = 4,
		Incomplete = 5,
		ErrorOutOfHostMemory = -1,
		ErrorOutOfDeviceMemory = -2,
		ErrorInitializationFailed = -3,
		ErrorDeviceLost = -4,
		ErrorMemoryMapFailed = -5,
		ErrorLayerNotPresent = -6,
		ErrorExtensionNotPresent = -7,
		ErrorFeatureNotPresent = -8,
		ErrorIncompatibleDriver = -9,
		ErrorTooManyObjects = -10,
		ErrorFormatNotSupported = -11,
		ErrorFragmentedPool = -12,
		ErrorUnknown = -13,
		ErrorOutOfPoolMemory = -1000069000,
		ErrorInvalidExternalHandle = -1000072003,
		ErrorFragmentation = -1000161000,
		ErrorInvalidOpaqueCaptureAddress = -1000257000,
		ErrorSurfaceLostKHR = -1000000000,
		ErrorNativeWindowInUseKHR = -1000000001,
		SuboptimalKHR = 1000001003,
		ErrorOutOfDateKHR = -1000001004,
		ErrorIncompatibleDisplayKHR = -1000003001,
		ErrorValidationFailedEXT = -1000011001,
		ErrorInvalidShaderNV = -1000012000,
		ErrorIncompatibleVersionKHR = -1000150000,
		ErrorInvalidDrmFormatModifierPlaneLayoutEXT = -1000158000,
		ErrorNotPermittedEXT = -1000174001,
		ErrorFullScreenExclusiveModeLostEXT = -1000255000,
		ThreadIdleKHR = 1000268000,
		ThreadDoneKHR = 1000268001,
		OperationDeferredKHR = 1000268002,
		OperationNotDeferredKHR = 1000268003,
		ErrorPipelineCompileRequiredEXT = 1000297000,
		ErrorOutOfPoolMemoryKHR = ErrorOutOfPoolMemory,
		ErrorInvalidExternalHandleKHR = ErrorInvalidExternalHandle,
		ErrorFragmentationEXT = ErrorFragmentation,
		ErrorInvalidDeviceAddressEXT = ErrorInvalidOpaqueCaptureAddress,
		ErrorInvalidOpaqueCaptureAddressKHR = ErrorInvalidOpaqueCaptureAddress,
	}

	[AllowDuplicates]
	public enum StructureType : Flags 
	{
		ApplicationInfo = 0,
		InstanceCreateInfo = 1,
		DeviceQueueCreateInfo = 2,
		DeviceCreateInfo = 3,
		SubmitInfo = 4,
		MemoryAllocateInfo = 5,
		MappedMemoryRange = 6,
		BindSparseInfo = 7,
		FenceCreateInfo = 8,
		SemaphoreCreateInfo = 9,
		EventCreateInfo = 10,
		QueryPoolCreateInfo = 11,
		BufferCreateInfo = 12,
		BufferViewCreateInfo = 13,
		ImageCreateInfo = 14,
		ImageViewCreateInfo = 15,
		ShaderModuleCreateInfo = 16,
		PipelineCacheCreateInfo = 17,
		PipelineShaderStageCreateInfo = 18,
		PipelineVertexInputStateCreateInfo = 19,
		PipelineInputAssemblyStateCreateInfo = 20,
		PipelineTessellationStateCreateInfo = 21,
		PipelineViewportStateCreateInfo = 22,
		PipelineRasterizationStateCreateInfo = 23,
		PipelineMultisampleStateCreateInfo = 24,
		PipelineDepthStencilStateCreateInfo = 25,
		PipelineColorBlendStateCreateInfo = 26,
		PipelineDynamicStateCreateInfo = 27,
		GraphicsPipelineCreateInfo = 28,
		ComputePipelineCreateInfo = 29,
		PipelineLayoutCreateInfo = 30,
		SamplerCreateInfo = 31,
		DescriptorSetLayoutCreateInfo = 32,
		DescriptorPoolCreateInfo = 33,
		DescriptorSetAllocateInfo = 34,
		WriteDescriptorSet = 35,
		CopyDescriptorSet = 36,
		FramebufferCreateInfo = 37,
		RenderPassCreateInfo = 38,
		CommandPoolCreateInfo = 39,
		CommandBufferAllocateInfo = 40,
		CommandBufferInheritanceInfo = 41,
		CommandBufferBeginInfo = 42,
		RenderPassBeginInfo = 43,
		BufferMemoryBarrier = 44,
		ImageMemoryBarrier = 45,
		MemoryBarrier = 46,
		LoaderInstanceCreateInfo = 47,
		LoaderDeviceCreateInfo = 48,
		PhysicalDeviceSubgroupProperties = 1000094000,
		BindBufferMemoryInfo = 1000157000,
		BindImageMemoryInfo = 1000157001,
		PhysicalDevice16BitStorageFeatures = 1000083000,
		MemoryDedicatedRequirements = 1000127000,
		MemoryDedicatedAllocateInfo = 1000127001,
		MemoryAllocateFlagsInfo = 1000060000,
		DeviceGroupRenderPassBeginInfo = 1000060003,
		DeviceGroupCommandBufferBeginInfo = 1000060004,
		DeviceGroupSubmitInfo = 1000060005,
		DeviceGroupBindSparseInfo = 1000060006,
		BindBufferMemoryDeviceGroupInfo = 1000060013,
		BindImageMemoryDeviceGroupInfo = 1000060014,
		PhysicalDeviceGroupProperties = 1000070000,
		DeviceGroupDeviceCreateInfo = 1000070001,
		BufferMemoryRequirementsInfo2 = 1000146000,
		ImageMemoryRequirementsInfo2 = 1000146001,
		ImageSparseMemoryRequirementsInfo2 = 1000146002,
		MemoryRequirements2 = 1000146003,
		SparseImageMemoryRequirements2 = 1000146004,
		PhysicalDeviceFeatures2 = 1000059000,
		PhysicalDeviceProperties2 = 1000059001,
		FormatProperties2 = 1000059002,
		ImageFormatProperties2 = 1000059003,
		PhysicalDeviceImageFormatInfo2 = 1000059004,
		QueueFamilyProperties2 = 1000059005,
		PhysicalDeviceMemoryProperties2 = 1000059006,
		SparseImageFormatProperties2 = 1000059007,
		PhysicalDeviceSparseImageFormatInfo2 = 1000059008,
		PhysicalDevicePointClippingProperties = 1000117000,
		RenderPassInputAttachmentAspectCreateInfo = 1000117001,
		ImageViewUsageCreateInfo = 1000117002,
		PipelineTessellationDomainOriginStateCreateInfo = 1000117003,
		RenderPassMultiviewCreateInfo = 1000053000,
		PhysicalDeviceMultiviewFeatures = 1000053001,
		PhysicalDeviceMultiviewProperties = 1000053002,
		PhysicalDeviceVariablePointersFeatures = 1000120000,
		ProtectedSubmitInfo = 1000145000,
		PhysicalDeviceProtectedMemoryFeatures = 1000145001,
		PhysicalDeviceProtectedMemoryProperties = 1000145002,
		DeviceQueueInfo2 = 1000145003,
		SamplerYcbcrConversionCreateInfo = 1000156000,
		SamplerYcbcrConversionInfo = 1000156001,
		BindImagePlaneMemoryInfo = 1000156002,
		ImagePlaneMemoryRequirementsInfo = 1000156003,
		PhysicalDeviceSamplerYcbcrConversionFeatures = 1000156004,
		SamplerYcbcrConversionImageFormatProperties = 1000156005,
		DescriptorUpdateTemplateCreateInfo = 1000085000,
		PhysicalDeviceExternalImageFormatInfo = 1000071000,
		ExternalImageFormatProperties = 1000071001,
		PhysicalDeviceExternalBufferInfo = 1000071002,
		ExternalBufferProperties = 1000071003,
		PhysicalDeviceIdProperties = 1000071004,
		ExternalMemoryBufferCreateInfo = 1000072000,
		ExternalMemoryImageCreateInfo = 1000072001,
		ExportMemoryAllocateInfo = 1000072002,
		PhysicalDeviceExternalFenceInfo = 1000112000,
		ExternalFenceProperties = 1000112001,
		ExportFenceCreateInfo = 1000113000,
		ExportSemaphoreCreateInfo = 1000077000,
		PhysicalDeviceExternalSemaphoreInfo = 1000076000,
		ExternalSemaphoreProperties = 1000076001,
		PhysicalDeviceMaintenance3Properties = 1000168000,
		DescriptorSetLayoutSupport = 1000168001,
		PhysicalDeviceShaderDrawParametersFeatures = 1000063000,
		PhysicalDeviceVulkan11Features = 49,
		PhysicalDeviceVulkan11Properties = 50,
		PhysicalDeviceVulkan12Features = 51,
		PhysicalDeviceVulkan12Properties = 52,
		ImageFormatListCreateInfo = 1000147000,
		AttachmentDescription2 = 1000109000,
		AttachmentReference2 = 1000109001,
		SubpassDescription2 = 1000109002,
		SubpassDependency2 = 1000109003,
		RenderPassCreateInfo2 = 1000109004,
		SubpassBeginInfo = 1000109005,
		SubpassEndInfo = 1000109006,
		PhysicalDevice8BitStorageFeatures = 1000177000,
		PhysicalDeviceDriverProperties = 1000196000,
		PhysicalDeviceShaderAtomicInt64Features = 1000180000,
		PhysicalDeviceShaderFloat16Int8Features = 1000082000,
		PhysicalDeviceFloatControlsProperties = 1000197000,
		DescriptorSetLayoutBindingFlagsCreateInfo = 1000161000,
		PhysicalDeviceDescriptorIndexingFeatures = 1000161001,
		PhysicalDeviceDescriptorIndexingProperties = 1000161002,
		DescriptorSetVariableDescriptorCountAllocateInfo = 1000161003,
		DescriptorSetVariableDescriptorCountLayoutSupport = 1000161004,
		PhysicalDeviceDepthStencilResolveProperties = 1000199000,
		SubpassDescriptionDepthStencilResolve = 1000199001,
		PhysicalDeviceScalarBlockLayoutFeatures = 1000221000,
		ImageStencilUsageCreateInfo = 1000246000,
		PhysicalDeviceSamplerFilterMinmaxProperties = 1000130000,
		SamplerReductionModeCreateInfo = 1000130001,
		PhysicalDeviceVulkanMemoryModelFeatures = 1000211000,
		PhysicalDeviceImagelessFramebufferFeatures = 1000108000,
		FramebufferAttachmentsCreateInfo = 1000108001,
		FramebufferAttachmentImageInfo = 1000108002,
		RenderPassAttachmentBeginInfo = 1000108003,
		PhysicalDeviceUniformBufferStandardLayoutFeatures = 1000253000,
		PhysicalDeviceShaderSubgroupExtendedTypesFeatures = 1000175000,
		PhysicalDeviceSeparateDepthStencilLayoutsFeatures = 1000241000,
		AttachmentReferenceStencilLayout = 1000241001,
		AttachmentDescriptionStencilLayout = 1000241002,
		PhysicalDeviceHostQueryResetFeatures = 1000261000,
		PhysicalDeviceTimelineSemaphoreFeatures = 1000207000,
		PhysicalDeviceTimelineSemaphoreProperties = 1000207001,
		SemaphoreTypeCreateInfo = 1000207002,
		TimelineSemaphoreSubmitInfo = 1000207003,
		SemaphoreWaitInfo = 1000207004,
		SemaphoreSignalInfo = 1000207005,
		PhysicalDeviceBufferDeviceAddressFeatures = 1000257000,
		BufferDeviceAddressInfo = 1000244001,
		BufferOpaqueCaptureAddressCreateInfo = 1000257002,
		MemoryOpaqueCaptureAddressAllocateInfo = 1000257003,
		DeviceMemoryOpaqueCaptureAddressInfo = 1000257004,
		SwapchainCreateInfoKHR = 1000001000,
		PresentInfoKHR = 1000001001,
		DeviceGroupPresentCapabilitiesKHR = 1000060007,
		ImageSwapchainCreateInfoKHR = 1000060008,
		BindImageMemorySwapchainInfoKHR = 1000060009,
		AcquireNextImageInfoKHR = 1000060010,
		DeviceGroupPresentInfoKHR = 1000060011,
		DeviceGroupSwapchainCreateInfoKHR = 1000060012,
		DisplayModeCreateInfoKHR = 1000002000,
		DisplaySurfaceCreateInfoKHR = 1000002001,
		DisplayPresentInfoKHR = 1000003000,
		XlibSurfaceCreateInfoKHR = 1000004000,
		XcbSurfaceCreateInfoKHR = 1000005000,
		WaylandSurfaceCreateInfoKHR = 1000006000,
		AndroidSurfaceCreateInfoKHR = 1000008000,
		Win32SurfaceCreateInfoKHR = 1000009000,
		DebugReportCallbackCreateInfoEXT = 1000011000,
		PipelineRasterizationStateRasterizationOrderAMD = 1000018000,
		DebugMarkerObjectNameInfoEXT = 1000022000,
		DebugMarkerObjectTagInfoEXT = 1000022001,
		DebugMarkerMarkerInfoEXT = 1000022002,
		DedicatedAllocationImageCreateInfoNV = 1000026000,
		DedicatedAllocationBufferCreateInfoNV = 1000026001,
		DedicatedAllocationMemoryAllocateInfoNV = 1000026002,
		PhysicalDeviceTransformFeedbackFeaturesEXT = 1000028000,
		PhysicalDeviceTransformFeedbackPropertiesEXT = 1000028001,
		PipelineRasterizationStateStreamCreateInfoEXT = 1000028002,
		ImageViewHandleInfoNVX = 1000030000,
		TextureLodGatherFormatPropertiesAMD = 1000041000,
		StreamDescriptorSurfaceCreateInfoGgp = 1000049000,
		PhysicalDeviceCornerSampledImageFeaturesNV = 1000050000,
		ExternalMemoryImageCreateInfoNV = 1000056000,
		ExportMemoryAllocateInfoNV = 1000056001,
		ImportMemoryWin32HandleInfoNV = 1000057000,
		ExportMemoryWin32HandleInfoNV = 1000057001,
		Win32KeyedMutexAcquireReleaseInfoNV = 1000058000,
		ValidationFlagsEXT = 1000061000,
		ViSurfaceCreateInfoNn = 1000062000,
		PhysicalDeviceTextureCompressionAstcHdrFeaturesEXT = 1000066000,
		ImageViewAstcDecodeModeEXT = 1000067000,
		PhysicalDeviceAstcDecodeFeaturesEXT = 1000067001,
		ImportMemoryWin32HandleInfoKHR = 1000073000,
		ExportMemoryWin32HandleInfoKHR = 1000073001,
		MemoryWin32HandlePropertiesKHR = 1000073002,
		MemoryGetWin32HandleInfoKHR = 1000073003,
		ImportMemoryFdInfoKHR = 1000074000,
		MemoryFdPropertiesKHR = 1000074001,
		MemoryGetFdInfoKHR = 1000074002,
		Win32KeyedMutexAcquireReleaseInfoKHR = 1000075000,
		ImportSemaphoreWin32HandleInfoKHR = 1000078000,
		ExportSemaphoreWin32HandleInfoKHR = 1000078001,
		D3D12FenceSubmitInfoKHR = 1000078002,
		SemaphoreGetWin32HandleInfoKHR = 1000078003,
		ImportSemaphoreFdInfoKHR = 1000079000,
		SemaphoreGetFdInfoKHR = 1000079001,
		PhysicalDevicePushDescriptorPropertiesKHR = 1000080000,
		CommandBufferInheritanceConditionalRenderingInfoEXT = 1000081000,
		PhysicalDeviceConditionalRenderingFeaturesEXT = 1000081001,
		ConditionalRenderingBeginInfoEXT = 1000081002,
		PresentRegionsKHR = 1000084000,
		PipelineViewportWScalingStateCreateInfoNV = 1000087000,
		SurfaceCapabilities2EXT = 1000090000,
		DisplayPowerInfoEXT = 1000091000,
		DeviceEventInfoEXT = 1000091001,
		DisplayEventInfoEXT = 1000091002,
		SwapchainCounterCreateInfoEXT = 1000091003,
		PresentTimesInfoGOOGLE = 1000092000,
		PhysicalDeviceMultiviewPerViewAttributesPropertiesNVX = 1000097000,
		PipelineViewportSwizzleStateCreateInfoNV = 1000098000,
		PhysicalDeviceDiscardRectanglePropertiesEXT = 1000099000,
		PipelineDiscardRectangleStateCreateInfoEXT = 1000099001,
		PhysicalDeviceConservativeRasterizationPropertiesEXT = 1000101000,
		PipelineRasterizationConservativeStateCreateInfoEXT = 1000101001,
		PhysicalDeviceDepthClipEnableFeaturesEXT = 1000102000,
		PipelineRasterizationDepthClipStateCreateInfoEXT = 1000102001,
		HdrMetadataEXT = 1000105000,
		SharedPresentSurfaceCapabilitiesKHR = 1000111000,
		ImportFenceWin32HandleInfoKHR = 1000114000,
		ExportFenceWin32HandleInfoKHR = 1000114001,
		FenceGetWin32HandleInfoKHR = 1000114002,
		ImportFenceFdInfoKHR = 1000115000,
		FenceGetFdInfoKHR = 1000115001,
		PhysicalDevicePerformanceQueryFeaturesKHR = 1000116000,
		PhysicalDevicePerformanceQueryPropertiesKHR = 1000116001,
		QueryPoolPerformanceCreateInfoKHR = 1000116002,
		PerformanceQuerySubmitInfoKHR = 1000116003,
		AcquireProfilingLockInfoKHR = 1000116004,
		PerformanceCounterKHR = 1000116005,
		PerformanceCounterDescriptionKHR = 1000116006,
		PhysicalDeviceSurfaceInfo2KHR = 1000119000,
		SurfaceCapabilities2KHR = 1000119001,
		SurfaceFormat2KHR = 1000119002,
		DisplayProperties2KHR = 1000121000,
		DisplayPlaneProperties2KHR = 1000121001,
		DisplayModeProperties2KHR = 1000121002,
		DisplayPlaneInfo2KHR = 1000121003,
		DisplayPlaneCapabilities2KHR = 1000121004,
		IosSurfaceCreateInfoMvk = 1000122000,
		MacosSurfaceCreateInfoMvk = 1000123000,
		DebugUtilsObjectNameInfoEXT = 1000128000,
		DebugUtilsObjectTagInfoEXT = 1000128001,
		DebugUtilsLabelEXT = 1000128002,
		DebugUtilsMessengerCallbackDataEXT = 1000128003,
		DebugUtilsMessengerCreateInfoEXT = 1000128004,
		AndroidHardwareBufferUsageAndroid = 1000129000,
		AndroidHardwareBufferPropertiesAndroid = 1000129001,
		AndroidHardwareBufferFormatPropertiesAndroid = 1000129002,
		ImportAndroidHardwareBufferInfoAndroid = 1000129003,
		MemoryGetAndroidHardwareBufferInfoAndroid = 1000129004,
		ExternalFormatAndroid = 1000129005,
		PhysicalDeviceInlineUniformBlockFeaturesEXT = 1000138000,
		PhysicalDeviceInlineUniformBlockPropertiesEXT = 1000138001,
		WriteDescriptorSetInlineUniformBlockEXT = 1000138002,
		DescriptorPoolInlineUniformBlockCreateInfoEXT = 1000138003,
		SampleLocationsInfoEXT = 1000143000,
		RenderPassSampleLocationsBeginInfoEXT = 1000143001,
		PipelineSampleLocationsStateCreateInfoEXT = 1000143002,
		PhysicalDeviceSampleLocationsPropertiesEXT = 1000143003,
		MultisamplePropertiesEXT = 1000143004,
		PhysicalDeviceBlendOperationAdvancedFeaturesEXT = 1000148000,
		PhysicalDeviceBlendOperationAdvancedPropertiesEXT = 1000148001,
		PipelineColorBlendAdvancedStateCreateInfoEXT = 1000148002,
		PipelineCoverageToColorStateCreateInfoNV = 1000149000,
		BindAccelerationStructureMemoryInfoKHR = 1000165006,
		WriteDescriptorSetAccelerationStructureKHR = 1000165007,
		AccelerationStructureBuildGeometryInfoKHR = 1000150000,
		AccelerationStructureCreateGeometryTypeInfoKHR = 1000150001,
		AccelerationStructureDeviceAddressInfoKHR = 1000150002,
		AccelerationStructureGeometryAabbsDataKHR = 1000150003,
		AccelerationStructureGeometryInstancesDataKHR = 1000150004,
		AccelerationStructureGeometryTrianglesDataKHR = 1000150005,
		AccelerationStructureGeometryKHR = 1000150006,
		AccelerationStructureInfoKHR = 1000150007,
		AccelerationStructureMemoryRequirementsInfoKHR = 1000150008,
		AccelerationStructureVersionKHR = 1000150009,
		CopyAccelerationStructureInfoKHR = 1000150010,
		CopyAccelerationStructureToMemoryInfoKHR = 1000150011,
		CopyMemoryToAccelerationStructureInfoKHR = 1000150012,
		PhysicalDeviceRayTracingFeaturesKHR = 1000150013,
		PhysicalDeviceRayTracingPropertiesKHR = 1000150014,
		RayTracingPipelineCreateInfoKHR = 1000150015,
		RayTracingShaderGroupCreateInfoKHR = 1000150016,
		AccelerationStructureCreateInfoKHR = 1000150017,
		RayTracingPipelineInterfaceCreateInfoKHR = 1000150018,
		PipelineCoverageModulationStateCreateInfoNV = 1000152000,
		PhysicalDeviceShaderSmBuiltinsFeaturesNV = 1000154000,
		PhysicalDeviceShaderSmBuiltinsPropertiesNV = 1000154001,
		DrmFormatModifierPropertiesListEXT = 1000158000,
		DrmFormatModifierPropertiesEXT = 1000158001,
		PhysicalDeviceImageDrmFormatModifierInfoEXT = 1000158002,
		ImageDrmFormatModifierListCreateInfoEXT = 1000158003,
		ImageDrmFormatModifierExplicitCreateInfoEXT = 1000158004,
		ImageDrmFormatModifierPropertiesEXT = 1000158005,
		ValidationCacheCreateInfoEXT = 1000160000,
		ShaderModuleValidationCacheCreateInfoEXT = 1000160001,
		PipelineViewportShadingRateImageStateCreateInfoNV = 1000164000,
		PhysicalDeviceShadingRateImageFeaturesNV = 1000164001,
		PhysicalDeviceShadingRateImagePropertiesNV = 1000164002,
		PipelineViewportCoarseSampleOrderStateCreateInfoNV = 1000164005,
		RayTracingPipelineCreateInfoNV = 1000165000,
		AccelerationStructureCreateInfoNV = 1000165001,
		GeometryNV = 1000165003,
		GeometryTrianglesNV = 1000165004,
		GeometryAabbNV = 1000165005,
		AccelerationStructureMemoryRequirementsInfoNV = 1000165008,
		PhysicalDeviceRayTracingPropertiesNV = 1000165009,
		RayTracingShaderGroupCreateInfoNV = 1000165011,
		AccelerationStructureInfoNV = 1000165012,
		PhysicalDeviceRepresentativeFragmentTestFeaturesNV = 1000166000,
		PipelineRepresentativeFragmentTestStateCreateInfoNV = 1000166001,
		PhysicalDeviceImageViewImageFormatInfoEXT = 1000170000,
		FilterCubicImageViewImageFormatPropertiesEXT = 1000170001,
		DeviceQueueGlobalPriorityCreateInfoEXT = 1000174000,
		ImportMemoryHostPointerInfoEXT = 1000178000,
		MemoryHostPointerPropertiesEXT = 1000178001,
		PhysicalDeviceExternalMemoryHostPropertiesEXT = 1000178002,
		PhysicalDeviceShaderClockFeaturesKHR = 1000181000,
		PipelineCompilerControlCreateInfoAMD = 1000183000,
		CalibratedTimestampInfoEXT = 1000184000,
		PhysicalDeviceShaderCorePropertiesAMD = 1000185000,
		DeviceMemoryOverallocationCreateInfoAMD = 1000189000,
		PhysicalDeviceVertexAttributeDivisorPropertiesEXT = 1000190000,
		PipelineVertexInputDivisorStateCreateInfoEXT = 1000190001,
		PhysicalDeviceVertexAttributeDivisorFeaturesEXT = 1000190002,
		PresentFrameTokenGgp = 1000191000,
		PipelineCreationFeedbackCreateInfoEXT = 1000192000,
		PhysicalDeviceComputeShaderDerivativesFeaturesNV = 1000201000,
		PhysicalDeviceMeshShaderFeaturesNV = 1000202000,
		PhysicalDeviceMeshShaderPropertiesNV = 1000202001,
		PhysicalDeviceFragmentShaderBarycentricFeaturesNV = 1000203000,
		PhysicalDeviceShaderImageFootprintFeaturesNV = 1000204000,
		PipelineViewportExclusiveScissorStateCreateInfoNV = 1000205000,
		PhysicalDeviceExclusiveScissorFeaturesNV = 1000205002,
		CheckpointDataNV = 1000206000,
		QueueFamilyCheckpointPropertiesNV = 1000206001,
		PhysicalDeviceShaderIntegerFunctions2FeaturesINTEL = 1000209000,
		QueryPoolCreateInfoINTEL = 1000210000,
		InitializePerformanceApiInfoINTEL = 1000210001,
		PerformanceMarkerInfoINTEL = 1000210002,
		PerformanceStreamMarkerInfoINTEL = 1000210003,
		PerformanceOverrideInfoINTEL = 1000210004,
		PerformanceConfigurationAcquireInfoINTEL = 1000210005,
		PhysicalDevicePciBusInfoPropertiesEXT = 1000212000,
		DisplayNativeHdrSurfaceCapabilitiesAMD = 1000213000,
		SwapchainDisplayNativeHdrCreateInfoAMD = 1000213001,
		ImagepipeSurfaceCreateInfoFuchsia = 1000214000,
		MetalSurfaceCreateInfoEXT = 1000217000,
		PhysicalDeviceFragmentDensityMapFeaturesEXT = 1000218000,
		PhysicalDeviceFragmentDensityMapPropertiesEXT = 1000218001,
		RenderPassFragmentDensityMapCreateInfoEXT = 1000218002,
		PhysicalDeviceSubgroupSizeControlPropertiesEXT = 1000225000,
		PipelineShaderStageRequiredSubgroupSizeCreateInfoEXT = 1000225001,
		PhysicalDeviceSubgroupSizeControlFeaturesEXT = 1000225002,
		PhysicalDeviceShaderCoreProperties2AMD = 1000227000,
		PhysicalDeviceCoherentMemoryFeaturesAMD = 1000229000,
		PhysicalDeviceMemoryBudgetPropertiesEXT = 1000237000,
		PhysicalDeviceMemoryPriorityFeaturesEXT = 1000238000,
		MemoryPriorityAllocateInfoEXT = 1000238001,
		SurfaceProtectedCapabilitiesKHR = 1000239000,
		PhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV = 1000240000,
		PhysicalDeviceBufferDeviceAddressFeaturesEXT = 1000244000,
		BufferDeviceAddressCreateInfoEXT = 1000244002,
		PhysicalDeviceToolPropertiesEXT = 1000245000,
		ValidationFeaturesEXT = 1000247000,
		PhysicalDeviceCooperativeMatrixFeaturesNV = 1000249000,
		CooperativeMatrixPropertiesNV = 1000249001,
		PhysicalDeviceCooperativeMatrixPropertiesNV = 1000249002,
		PhysicalDeviceCoverageReductionModeFeaturesNV = 1000250000,
		PipelineCoverageReductionStateCreateInfoNV = 1000250001,
		FramebufferMixedSamplesCombinationNV = 1000250002,
		PhysicalDeviceFragmentShaderInterlockFeaturesEXT = 1000251000,
		PhysicalDeviceYcbcrImageArraysFeaturesEXT = 1000252000,
		SurfaceFullScreenExclusiveInfoEXT = 1000255000,
		SurfaceCapabilitiesFullScreenExclusiveEXT = 1000255002,
		SurfaceFullScreenExclusiveWin32InfoEXT = 1000255001,
		HeadlessSurfaceCreateInfoEXT = 1000256000,
		PhysicalDeviceLineRasterizationFeaturesEXT = 1000259000,
		PipelineRasterizationLineStateCreateInfoEXT = 1000259001,
		PhysicalDeviceLineRasterizationPropertiesEXT = 1000259002,
		PhysicalDeviceIndexTypeUint8FeaturesEXT = 1000265000,
		DeferredOperationInfoKHR = 1000268000,
		PhysicalDevicePipelineExecutablePropertiesFeaturesKHR = 1000269000,
		PipelineInfoKHR = 1000269001,
		PipelineExecutablePropertiesKHR = 1000269002,
		PipelineExecutableInfoKHR = 1000269003,
		PipelineExecutableStatisticKHR = 1000269004,
		PipelineExecutableInternalRepresentationKHR = 1000269005,
		PhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT = 1000276000,
		PhysicalDeviceDeviceGeneratedCommandsPropertiesNV = 1000277000,
		GraphicsShaderGroupCreateInfoNV = 1000277001,
		GraphicsPipelineShaderGroupsCreateInfoNV = 1000277002,
		IndirectCommandsLayoutTokenNV = 1000277003,
		IndirectCommandsLayoutCreateInfoNV = 1000277004,
		GeneratedCommandsInfoNV = 1000277005,
		GeneratedCommandsMemoryRequirementsInfoNV = 1000277006,
		PhysicalDeviceDeviceGeneratedCommandsFeaturesNV = 1000277007,
		PhysicalDeviceTexelBufferAlignmentFeaturesEXT = 1000281000,
		PhysicalDeviceTexelBufferAlignmentPropertiesEXT = 1000281001,
		CommandBufferInheritanceRenderPassTransformInfoQCOM = 1000282000,
		RenderPassTransformBeginInfoQCOM = 1000282001,
		PipelineLibraryCreateInfoKHR = 1000290000,
		PhysicalDevicePipelineCreationCacheControlFeaturesEXT = 1000297000,
		PhysicalDeviceDiagnosticsConfigFeaturesNV = 1000300000,
		DeviceDiagnosticsConfigCreateInfoNV = 1000300001,
		PhysicalDeviceVariablePointerFeatures = PhysicalDeviceVariablePointersFeatures,
		PhysicalDeviceShaderDrawParameterFeatures = PhysicalDeviceShaderDrawParametersFeatures,
		DebugReportCreateInfoEXT = DebugReportCallbackCreateInfoEXT,
		RenderPassMultiviewCreateInfoKHR = RenderPassMultiviewCreateInfo,
		PhysicalDeviceMultiviewFeaturesKHR = PhysicalDeviceMultiviewFeatures,
		PhysicalDeviceMultiviewPropertiesKHR = PhysicalDeviceMultiviewProperties,
		PhysicalDeviceFeatures2KHR = PhysicalDeviceFeatures2,
		PhysicalDeviceProperties2KHR = PhysicalDeviceProperties2,
		FormatProperties2KHR = FormatProperties2,
		ImageFormatProperties2KHR = ImageFormatProperties2,
		PhysicalDeviceImageFormatInfo2KHR = PhysicalDeviceImageFormatInfo2,
		QueueFamilyProperties2KHR = QueueFamilyProperties2,
		PhysicalDeviceMemoryProperties2KHR = PhysicalDeviceMemoryProperties2,
		SparseImageFormatProperties2KHR = SparseImageFormatProperties2,
		PhysicalDeviceSparseImageFormatInfo2KHR = PhysicalDeviceSparseImageFormatInfo2,
		MemoryAllocateFlagsInfoKHR = MemoryAllocateFlagsInfo,
		DeviceGroupRenderPassBeginInfoKHR = DeviceGroupRenderPassBeginInfo,
		DeviceGroupCommandBufferBeginInfoKHR = DeviceGroupCommandBufferBeginInfo,
		DeviceGroupSubmitInfoKHR = DeviceGroupSubmitInfo,
		DeviceGroupBindSparseInfoKHR = DeviceGroupBindSparseInfo,
		BindBufferMemoryDeviceGroupInfoKHR = BindBufferMemoryDeviceGroupInfo,
		BindImageMemoryDeviceGroupInfoKHR = BindImageMemoryDeviceGroupInfo,
		PhysicalDeviceGroupPropertiesKHR = PhysicalDeviceGroupProperties,
		DeviceGroupDeviceCreateInfoKHR = DeviceGroupDeviceCreateInfo,
		PhysicalDeviceExternalImageFormatInfoKHR = PhysicalDeviceExternalImageFormatInfo,
		ExternalImageFormatPropertiesKHR = ExternalImageFormatProperties,
		PhysicalDeviceExternalBufferInfoKHR = PhysicalDeviceExternalBufferInfo,
		ExternalBufferPropertiesKHR = ExternalBufferProperties,
		PhysicalDeviceIdPropertiesKHR = PhysicalDeviceIdProperties,
		ExternalMemoryBufferCreateInfoKHR = ExternalMemoryBufferCreateInfo,
		ExternalMemoryImageCreateInfoKHR = ExternalMemoryImageCreateInfo,
		ExportMemoryAllocateInfoKHR = ExportMemoryAllocateInfo,
		PhysicalDeviceExternalSemaphoreInfoKHR = PhysicalDeviceExternalSemaphoreInfo,
		ExternalSemaphorePropertiesKHR = ExternalSemaphoreProperties,
		ExportSemaphoreCreateInfoKHR = ExportSemaphoreCreateInfo,
		PhysicalDeviceShaderFloat16Int8FeaturesKHR = PhysicalDeviceShaderFloat16Int8Features,
		PhysicalDeviceFloat16Int8FeaturesKHR = PhysicalDeviceShaderFloat16Int8Features,
		PhysicalDevice16BitStorageFeaturesKHR = PhysicalDevice16BitStorageFeatures,
		DescriptorUpdateTemplateCreateInfoKHR = DescriptorUpdateTemplateCreateInfo,
		eVkSurfaceCapabilities2EXT = SurfaceCapabilities2EXT,
		PhysicalDeviceImagelessFramebufferFeaturesKHR = PhysicalDeviceImagelessFramebufferFeatures,
		FramebufferAttachmentsCreateInfoKHR = FramebufferAttachmentsCreateInfo,
		FramebufferAttachmentImageInfoKHR = FramebufferAttachmentImageInfo,
		RenderPassAttachmentBeginInfoKHR = RenderPassAttachmentBeginInfo,
		AttachmentDescription2KHR = AttachmentDescription2,
		AttachmentReference2KHR = AttachmentReference2,
		SubpassDescription2KHR = SubpassDescription2,
		SubpassDependency2KHR = SubpassDependency2,
		RenderPassCreateInfo2KHR = RenderPassCreateInfo2,
		SubpassBeginInfoKHR = SubpassBeginInfo,
		SubpassEndInfoKHR = SubpassEndInfo,
		PhysicalDeviceExternalFenceInfoKHR = PhysicalDeviceExternalFenceInfo,
		ExternalFencePropertiesKHR = ExternalFenceProperties,
		ExportFenceCreateInfoKHR = ExportFenceCreateInfo,
		PhysicalDevicePointClippingPropertiesKHR = PhysicalDevicePointClippingProperties,
		RenderPassInputAttachmentAspectCreateInfoKHR = RenderPassInputAttachmentAspectCreateInfo,
		ImageViewUsageCreateInfoKHR = ImageViewUsageCreateInfo,
		PipelineTessellationDomainOriginStateCreateInfoKHR = PipelineTessellationDomainOriginStateCreateInfo,
		PhysicalDeviceVariablePointerFeaturesKHR = PhysicalDeviceVariablePointerFeatures,
		PhysicalDeviceVariablePointersFeaturesKHR = PhysicalDeviceVariablePointerFeatures,
		MemoryDedicatedRequirementsKHR = MemoryDedicatedRequirements,
		MemoryDedicatedAllocateInfoKHR = MemoryDedicatedAllocateInfo,
		PhysicalDeviceSamplerFilterMinmaxPropertiesEXT = PhysicalDeviceSamplerFilterMinmaxProperties,
		SamplerReductionModeCreateInfoEXT = SamplerReductionModeCreateInfo,
		BufferMemoryRequirementsInfo2KHR = BufferMemoryRequirementsInfo2,
		ImageMemoryRequirementsInfo2KHR = ImageMemoryRequirementsInfo2,
		ImageSparseMemoryRequirementsInfo2KHR = ImageSparseMemoryRequirementsInfo2,
		MemoryRequirements2KHR = MemoryRequirements2,
		SparseImageMemoryRequirements2KHR = SparseImageMemoryRequirements2,
		ImageFormatListCreateInfoKHR = ImageFormatListCreateInfo,
		SamplerYcbcrConversionCreateInfoKHR = SamplerYcbcrConversionCreateInfo,
		SamplerYcbcrConversionInfoKHR = SamplerYcbcrConversionInfo,
		BindImagePlaneMemoryInfoKHR = BindImagePlaneMemoryInfo,
		ImagePlaneMemoryRequirementsInfoKHR = ImagePlaneMemoryRequirementsInfo,
		PhysicalDeviceSamplerYcbcrConversionFeaturesKHR = PhysicalDeviceSamplerYcbcrConversionFeatures,
		SamplerYcbcrConversionImageFormatPropertiesKHR = SamplerYcbcrConversionImageFormatProperties,
		BindBufferMemoryInfoKHR = BindBufferMemoryInfo,
		BindImageMemoryInfoKHR = BindImageMemoryInfo,
		DescriptorSetLayoutBindingFlagsCreateInfoEXT = DescriptorSetLayoutBindingFlagsCreateInfo,
		PhysicalDeviceDescriptorIndexingFeaturesEXT = PhysicalDeviceDescriptorIndexingFeatures,
		PhysicalDeviceDescriptorIndexingPropertiesEXT = PhysicalDeviceDescriptorIndexingProperties,
		DescriptorSetVariableDescriptorCountAllocateInfoEXT = DescriptorSetVariableDescriptorCountAllocateInfo,
		DescriptorSetVariableDescriptorCountLayoutSupportEXT = DescriptorSetVariableDescriptorCountLayoutSupport,
		BindAccelerationStructureMemoryInfoNV = BindAccelerationStructureMemoryInfoKHR,
		WriteDescriptorSetAccelerationStructureNV = WriteDescriptorSetAccelerationStructureKHR,
		PhysicalDeviceMaintenance3PropertiesKHR = PhysicalDeviceMaintenance3Properties,
		DescriptorSetLayoutSupportKHR = DescriptorSetLayoutSupport,
		PhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR = PhysicalDeviceShaderSubgroupExtendedTypesFeatures,
		PhysicalDevice8BitStorageFeaturesKHR = PhysicalDevice8BitStorageFeatures,
		PhysicalDeviceShaderAtomicInt64FeaturesKHR = PhysicalDeviceShaderAtomicInt64Features,
		PhysicalDeviceDriverPropertiesKHR = PhysicalDeviceDriverProperties,
		PhysicalDeviceFloatControlsPropertiesKHR = PhysicalDeviceFloatControlsProperties,
		PhysicalDeviceDepthStencilResolvePropertiesKHR = PhysicalDeviceDepthStencilResolveProperties,
		SubpassDescriptionDepthStencilResolveKHR = SubpassDescriptionDepthStencilResolve,
		PhysicalDeviceTimelineSemaphoreFeaturesKHR = PhysicalDeviceTimelineSemaphoreFeatures,
		PhysicalDeviceTimelineSemaphorePropertiesKHR = PhysicalDeviceTimelineSemaphoreProperties,
		SemaphoreTypeCreateInfoKHR = SemaphoreTypeCreateInfo,
		TimelineSemaphoreSubmitInfoKHR = TimelineSemaphoreSubmitInfo,
		SemaphoreWaitInfoKHR = SemaphoreWaitInfo,
		SemaphoreSignalInfoKHR = SemaphoreSignalInfo,
		PhysicalDeviceVulkanMemoryModelFeaturesKHR = PhysicalDeviceVulkanMemoryModelFeatures,
		PhysicalDeviceScalarBlockLayoutFeaturesEXT = PhysicalDeviceScalarBlockLayoutFeatures,
		PhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR = PhysicalDeviceSeparateDepthStencilLayoutsFeatures,
		AttachmentReferenceStencilLayoutKHR = AttachmentReferenceStencilLayout,
		AttachmentDescriptionStencilLayoutKHR = AttachmentDescriptionStencilLayout,
		PhysicalDeviceBufferAddressFeaturesEXT = PhysicalDeviceBufferDeviceAddressFeaturesEXT,
		BufferDeviceAddressInfoEXT = BufferDeviceAddressInfo,
		ImageStencilUsageCreateInfoEXT = ImageStencilUsageCreateInfo,
		PhysicalDeviceUniformBufferStandardLayoutFeaturesKHR = PhysicalDeviceUniformBufferStandardLayoutFeatures,
		PhysicalDeviceBufferDeviceAddressFeaturesKHR = PhysicalDeviceBufferDeviceAddressFeatures,
		BufferDeviceAddressInfoKHR = BufferDeviceAddressInfo,
		BufferOpaqueCaptureAddressCreateInfoKHR = BufferOpaqueCaptureAddressCreateInfo,
		MemoryOpaqueCaptureAddressAllocateInfoKHR = MemoryOpaqueCaptureAddressAllocateInfo,
		DeviceMemoryOpaqueCaptureAddressInfoKHR = DeviceMemoryOpaqueCaptureAddressInfo,
		PhysicalDeviceHostQueryResetFeaturesEXT = PhysicalDeviceHostQueryResetFeatures,
	}

	[AllowDuplicates]
	public enum SystemAllocationScope : Flags 
	{
		Command = 0,
		Object = 1,
		Cache = 2,
		Device = 3,
		Instance = 4,
	}

	[AllowDuplicates]
	public enum InternalAllocationType : Flags 
	{
		Executable = 0,
	}

	[AllowDuplicates]
	public enum Format : Flags 
	{
		Undefined = 0,
		R4G4UnormPack8 = 1,
		R4G4B4A4UnormPack16 = 2,
		B4G4R4A4UnormPack16 = 3,
		R5G6B5UnormPack16 = 4,
		B5G6R5UnormPack16 = 5,
		R5G5B5A1UnormPack16 = 6,
		B5G5R5A1UnormPack16 = 7,
		A1R5G5B5UnormPack16 = 8,
		R8Unorm = 9,
		R8Snorm = 10,
		R8Uscaled = 11,
		R8Sscaled = 12,
		R8Uint = 13,
		R8Sint = 14,
		R8Srgb = 15,
		R8G8Unorm = 16,
		R8G8Snorm = 17,
		R8G8Uscaled = 18,
		R8G8Sscaled = 19,
		R8G8Uint = 20,
		R8G8Sint = 21,
		R8G8Srgb = 22,
		R8G8B8Unorm = 23,
		R8G8B8Snorm = 24,
		R8G8B8Uscaled = 25,
		R8G8B8Sscaled = 26,
		R8G8B8Uint = 27,
		R8G8B8Sint = 28,
		R8G8B8Srgb = 29,
		B8G8R8Unorm = 30,
		B8G8R8Snorm = 31,
		B8G8R8Uscaled = 32,
		B8G8R8Sscaled = 33,
		B8G8R8Uint = 34,
		B8G8R8Sint = 35,
		B8G8R8Srgb = 36,
		R8G8B8A8Unorm = 37,
		R8G8B8A8Snorm = 38,
		R8G8B8A8Uscaled = 39,
		R8G8B8A8Sscaled = 40,
		R8G8B8A8Uint = 41,
		R8G8B8A8Sint = 42,
		R8G8B8A8Srgb = 43,
		B8G8R8A8Unorm = 44,
		B8G8R8A8Snorm = 45,
		B8G8R8A8Uscaled = 46,
		B8G8R8A8Sscaled = 47,
		B8G8R8A8Uint = 48,
		B8G8R8A8Sint = 49,
		B8G8R8A8Srgb = 50,
		A8B8G8R8UnormPack32 = 51,
		A8B8G8R8SnormPack32 = 52,
		A8B8G8R8UscaledPack32 = 53,
		A8B8G8R8SscaledPack32 = 54,
		A8B8G8R8UintPack32 = 55,
		A8B8G8R8SintPack32 = 56,
		A8B8G8R8SrgbPack32 = 57,
		A2R10G10B10UnormPack32 = 58,
		A2R10G10B10SnormPack32 = 59,
		A2R10G10B10UscaledPack32 = 60,
		A2R10G10B10SscaledPack32 = 61,
		A2R10G10B10UintPack32 = 62,
		A2R10G10B10SintPack32 = 63,
		A2B10G10R10UnormPack32 = 64,
		A2B10G10R10SnormPack32 = 65,
		A2B10G10R10UscaledPack32 = 66,
		A2B10G10R10SscaledPack32 = 67,
		A2B10G10R10UintPack32 = 68,
		A2B10G10R10SintPack32 = 69,
		R16Unorm = 70,
		R16Snorm = 71,
		R16Uscaled = 72,
		R16Sscaled = 73,
		R16Uint = 74,
		R16Sint = 75,
		R16Sfloat = 76,
		R16G16Unorm = 77,
		R16G16Snorm = 78,
		R16G16Uscaled = 79,
		R16G16Sscaled = 80,
		R16G16Uint = 81,
		R16G16Sint = 82,
		R16G16Sfloat = 83,
		R16G16B16Unorm = 84,
		R16G16B16Snorm = 85,
		R16G16B16Uscaled = 86,
		R16G16B16Sscaled = 87,
		R16G16B16Uint = 88,
		R16G16B16Sint = 89,
		R16G16B16Sfloat = 90,
		R16G16B16A16Unorm = 91,
		R16G16B16A16Snorm = 92,
		R16G16B16A16Uscaled = 93,
		R16G16B16A16Sscaled = 94,
		R16G16B16A16Uint = 95,
		R16G16B16A16Sint = 96,
		R16G16B16A16Sfloat = 97,
		R32Uint = 98,
		R32Sint = 99,
		R32Sfloat = 100,
		R32G32Uint = 101,
		R32G32Sint = 102,
		R32G32Sfloat = 103,
		R32G32B32Uint = 104,
		R32G32B32Sint = 105,
		R32G32B32Sfloat = 106,
		R32G32B32A32Uint = 107,
		R32G32B32A32Sint = 108,
		R32G32B32A32Sfloat = 109,
		R64Uint = 110,
		R64Sint = 111,
		R64Sfloat = 112,
		R64G64Uint = 113,
		R64G64Sint = 114,
		R64G64Sfloat = 115,
		R64G64B64Uint = 116,
		R64G64B64Sint = 117,
		R64G64B64Sfloat = 118,
		R64G64B64A64Uint = 119,
		R64G64B64A64Sint = 120,
		R64G64B64A64Sfloat = 121,
		B10G11R11UfloatPack32 = 122,
		E5B9G9R9UfloatPack32 = 123,
		D16Unorm = 124,
		X8D24UnormPack32 = 125,
		D32Sfloat = 126,
		S8Uint = 127,
		D16UnormS8Uint = 128,
		D24UnormS8Uint = 129,
		D32SfloatS8Uint = 130,
		Bc1RgbUnormBlock = 131,
		Bc1RgbSrgbBlock = 132,
		Bc1RgbaUnormBlock = 133,
		Bc1RgbaSrgbBlock = 134,
		Bc2UnormBlock = 135,
		Bc2SrgbBlock = 136,
		Bc3UnormBlock = 137,
		Bc3SrgbBlock = 138,
		Bc4UnormBlock = 139,
		Bc4SnormBlock = 140,
		Bc5UnormBlock = 141,
		Bc5SnormBlock = 142,
		Bc6HUfloatBlock = 143,
		Bc6HSfloatBlock = 144,
		Bc7UnormBlock = 145,
		Bc7SrgbBlock = 146,
		Etc2R8G8B8UnormBlock = 147,
		Etc2R8G8B8SrgbBlock = 148,
		Etc2R8G8B8A1UnormBlock = 149,
		Etc2R8G8B8A1SrgbBlock = 150,
		Etc2R8G8B8A8UnormBlock = 151,
		Etc2R8G8B8A8SrgbBlock = 152,
		EacR11UnormBlock = 153,
		EacR11SnormBlock = 154,
		EacR11G11UnormBlock = 155,
		EacR11G11SnormBlock = 156,
		Astc4X4UnormBlock = 157,
		Astc4X4SrgbBlock = 158,
		Astc5X4UnormBlock = 159,
		Astc5X4SrgbBlock = 160,
		Astc5X5UnormBlock = 161,
		Astc5X5SrgbBlock = 162,
		Astc6X5UnormBlock = 163,
		Astc6X5SrgbBlock = 164,
		Astc6X6UnormBlock = 165,
		Astc6X6SrgbBlock = 166,
		Astc8X5UnormBlock = 167,
		Astc8X5SrgbBlock = 168,
		Astc8X6UnormBlock = 169,
		Astc8X6SrgbBlock = 170,
		Astc8X8UnormBlock = 171,
		Astc8X8SrgbBlock = 172,
		Astc10X5UnormBlock = 173,
		Astc10X5SrgbBlock = 174,
		Astc10X6UnormBlock = 175,
		Astc10X6SrgbBlock = 176,
		Astc10X8UnormBlock = 177,
		Astc10X8SrgbBlock = 178,
		Astc10X10UnormBlock = 179,
		Astc10X10SrgbBlock = 180,
		Astc12X10UnormBlock = 181,
		Astc12X10SrgbBlock = 182,
		Astc12X12UnormBlock = 183,
		Astc12X12SrgbBlock = 184,
		G8B8G8R8422Unorm = 1000156000,
		B8G8R8G8422Unorm = 1000156001,
		G8B8R83Plane420Unorm = 1000156002,
		G8B8R82Plane420Unorm = 1000156003,
		G8B8R83Plane422Unorm = 1000156004,
		G8B8R82Plane422Unorm = 1000156005,
		G8B8R83Plane444Unorm = 1000156006,
		R10X6UnormPack16 = 1000156007,
		R10X6G10X6Unorm2Pack16 = 1000156008,
		R10X6G10X6B10X6A10X6Unorm4Pack16 = 1000156009,
		G10X6B10X6G10X6R10X6422Unorm4Pack16 = 1000156010,
		B10X6G10X6R10X6G10X6422Unorm4Pack16 = 1000156011,
		G10X6B10X6R10X63Plane420Unorm3Pack16 = 1000156012,
		G10X6B10X6R10X62Plane420Unorm3Pack16 = 1000156013,
		G10X6B10X6R10X63Plane422Unorm3Pack16 = 1000156014,
		G10X6B10X6R10X62Plane422Unorm3Pack16 = 1000156015,
		G10X6B10X6R10X63Plane444Unorm3Pack16 = 1000156016,
		R12X4UnormPack16 = 1000156017,
		R12X4G12X4Unorm2Pack16 = 1000156018,
		R12X4G12X4B12X4A12X4Unorm4Pack16 = 1000156019,
		G12X4B12X4G12X4R12X4422Unorm4Pack16 = 1000156020,
		B12X4G12X4R12X4G12X4422Unorm4Pack16 = 1000156021,
		G12X4B12X4R12X43Plane420Unorm3Pack16 = 1000156022,
		G12X4B12X4R12X42Plane420Unorm3Pack16 = 1000156023,
		G12X4B12X4R12X43Plane422Unorm3Pack16 = 1000156024,
		G12X4B12X4R12X42Plane422Unorm3Pack16 = 1000156025,
		G12X4B12X4R12X43Plane444Unorm3Pack16 = 1000156026,
		G16B16G16R16422Unorm = 1000156027,
		B16G16R16G16422Unorm = 1000156028,
		G16B16R163Plane420Unorm = 1000156029,
		G16B16R162Plane420Unorm = 1000156030,
		G16B16R163Plane422Unorm = 1000156031,
		G16B16R162Plane422Unorm = 1000156032,
		G16B16R163Plane444Unorm = 1000156033,
		Pvrtc12BppUnormBlockImg = 1000054000,
		Pvrtc14BppUnormBlockImg = 1000054001,
		Pvrtc22BppUnormBlockImg = 1000054002,
		Pvrtc24BppUnormBlockImg = 1000054003,
		Pvrtc12BppSrgbBlockImg = 1000054004,
		Pvrtc14BppSrgbBlockImg = 1000054005,
		Pvrtc22BppSrgbBlockImg = 1000054006,
		Pvrtc24BppSrgbBlockImg = 1000054007,
		Astc4X4SfloatBlockEXT = 1000066000,
		Astc5X4SfloatBlockEXT = 1000066001,
		Astc5X5SfloatBlockEXT = 1000066002,
		Astc6X5SfloatBlockEXT = 1000066003,
		Astc6X6SfloatBlockEXT = 1000066004,
		Astc8X5SfloatBlockEXT = 1000066005,
		Astc8X6SfloatBlockEXT = 1000066006,
		Astc8X8SfloatBlockEXT = 1000066007,
		Astc10X5SfloatBlockEXT = 1000066008,
		Astc10X6SfloatBlockEXT = 1000066009,
		Astc10X8SfloatBlockEXT = 1000066010,
		Astc10X10SfloatBlockEXT = 1000066011,
		Astc12X10SfloatBlockEXT = 1000066012,
		Astc12X12SfloatBlockEXT = 1000066013,
		G8B8G8R8422UnormKHR = G8B8G8R8422Unorm,
		B8G8R8G8422UnormKHR = B8G8R8G8422Unorm,
		G8B8R83Plane420UnormKHR = G8B8R83Plane420Unorm,
		G8B8R82Plane420UnormKHR = G8B8R82Plane420Unorm,
		G8B8R83Plane422UnormKHR = G8B8R83Plane422Unorm,
		G8B8R82Plane422UnormKHR = G8B8R82Plane422Unorm,
		G8B8R83Plane444UnormKHR = G8B8R83Plane444Unorm,
		R10X6UnormPack16KHR = R10X6UnormPack16,
		R10X6G10X6Unorm2Pack16KHR = R10X6G10X6Unorm2Pack16,
		R10X6G10X6B10X6A10X6Unorm4Pack16KHR = R10X6G10X6B10X6A10X6Unorm4Pack16,
		G10X6B10X6G10X6R10X6422Unorm4Pack16KHR = G10X6B10X6G10X6R10X6422Unorm4Pack16,
		B10X6G10X6R10X6G10X6422Unorm4Pack16KHR = B10X6G10X6R10X6G10X6422Unorm4Pack16,
		G10X6B10X6R10X63Plane420Unorm3Pack16KHR = G10X6B10X6R10X63Plane420Unorm3Pack16,
		G10X6B10X6R10X62Plane420Unorm3Pack16KHR = G10X6B10X6R10X62Plane420Unorm3Pack16,
		G10X6B10X6R10X63Plane422Unorm3Pack16KHR = G10X6B10X6R10X63Plane422Unorm3Pack16,
		G10X6B10X6R10X62Plane422Unorm3Pack16KHR = G10X6B10X6R10X62Plane422Unorm3Pack16,
		G10X6B10X6R10X63Plane444Unorm3Pack16KHR = G10X6B10X6R10X63Plane444Unorm3Pack16,
		R12X4UnormPack16KHR = R12X4UnormPack16,
		R12X4G12X4Unorm2Pack16KHR = R12X4G12X4Unorm2Pack16,
		R12X4G12X4B12X4A12X4Unorm4Pack16KHR = R12X4G12X4B12X4A12X4Unorm4Pack16,
		G12X4B12X4G12X4R12X4422Unorm4Pack16KHR = G12X4B12X4G12X4R12X4422Unorm4Pack16,
		B12X4G12X4R12X4G12X4422Unorm4Pack16KHR = B12X4G12X4R12X4G12X4422Unorm4Pack16,
		G12X4B12X4R12X43Plane420Unorm3Pack16KHR = G12X4B12X4R12X43Plane420Unorm3Pack16,
		G12X4B12X4R12X42Plane420Unorm3Pack16KHR = G12X4B12X4R12X42Plane420Unorm3Pack16,
		G12X4B12X4R12X43Plane422Unorm3Pack16KHR = G12X4B12X4R12X43Plane422Unorm3Pack16,
		G12X4B12X4R12X42Plane422Unorm3Pack16KHR = G12X4B12X4R12X42Plane422Unorm3Pack16,
		G12X4B12X4R12X43Plane444Unorm3Pack16KHR = G12X4B12X4R12X43Plane444Unorm3Pack16,
		G16B16G16R16422UnormKHR = G16B16G16R16422Unorm,
		B16G16R16G16422UnormKHR = B16G16R16G16422Unorm,
		G16B16R163Plane420UnormKHR = G16B16R163Plane420Unorm,
		G16B16R162Plane420UnormKHR = G16B16R162Plane420Unorm,
		G16B16R163Plane422UnormKHR = G16B16R163Plane422Unorm,
		G16B16R162Plane422UnormKHR = G16B16R162Plane422Unorm,
		G16B16R163Plane444UnormKHR = G16B16R163Plane444Unorm,
	}

	[AllowDuplicates]
	public enum ImageType : Flags 
	{
		e1D = 0,
		e2D = 1,
		e3D = 2,
	}

	[AllowDuplicates]
	public enum ImageTiling : Flags 
	{
		Optimal = 0,
		Linear = 1,
		DrmFormatModifierEXT = 1000158000,
	}

	[AllowDuplicates]
	public enum PhysicalDeviceType : Flags 
	{
		Other = 0,
		IntegratedGpu = 1,
		DiscreteGpu = 2,
		VirtualGpu = 3,
		Cpu = 4,
	}

	[AllowDuplicates]
	public enum QueryType : Flags 
	{
		Occlusion = 0,
		PipelineStatistics = 1,
		Timestamp = 2,
		TransformFeedbackStreamEXT = 1000028004,
		PerformanceQueryKHR = 1000116000,
		AccelerationStructureCompactedSizeKHR = 1000165000,
		AccelerationStructureSerializationSizeKHR = 1000150000,
		PerformanceQueryINTEL = 1000210000,
		AccelerationStructureCompactedSizeNV = AccelerationStructureCompactedSizeKHR,
	}

	[AllowDuplicates]
	public enum SharingMode : Flags 
	{
		Exclusive = 0,
		Concurrent = 1,
	}

	[AllowDuplicates]
	public enum ImageLayout : Flags 
	{
		Undefined = 0,
		General = 1,
		ColorAttachmentOptimal = 2,
		DepthStencilAttachmentOptimal = 3,
		DepthStencilReadOnlyOptimal = 4,
		ShaderReadOnlyOptimal = 5,
		TransferSrcOptimal = 6,
		TransferDstOptimal = 7,
		Preinitialized = 8,
		DepthReadOnlyStencilAttachmentOptimal = 1000117000,
		DepthAttachmentStencilReadOnlyOptimal = 1000117001,
		DepthAttachmentOptimal = 1000241000,
		DepthReadOnlyOptimal = 1000241001,
		StencilAttachmentOptimal = 1000241002,
		StencilReadOnlyOptimal = 1000241003,
		PresentSrcKHR = 1000001002,
		SharedPresentKHR = 1000111000,
		ShadingRateOptimalNV = 1000164003,
		FragmentDensityMapOptimalEXT = 1000218000,
		DepthReadOnlyStencilAttachmentOptimalKHR = DepthReadOnlyStencilAttachmentOptimal,
		DepthAttachmentStencilReadOnlyOptimalKHR = DepthAttachmentStencilReadOnlyOptimal,
		DepthAttachmentOptimalKHR = DepthAttachmentOptimal,
		DepthReadOnlyOptimalKHR = DepthReadOnlyOptimal,
		StencilAttachmentOptimalKHR = StencilAttachmentOptimal,
		StencilReadOnlyOptimalKHR = StencilReadOnlyOptimal,
	}

	[AllowDuplicates]
	public enum ImageViewType : Flags 
	{
		e1D = 0,
		e2D = 1,
		e3D = 2,
		Cube = 3,
		e1DArray = 4,
		e2DArray = 5,
		CubeArray = 6,
	}

	[AllowDuplicates]
	public enum ComponentSwizzle : Flags 
	{
		Identity = 0,
		Zero = 1,
		One = 2,
		R = 3,
		G = 4,
		B = 5,
		A = 6,
	}

	[AllowDuplicates]
	public enum VertexInputRate : Flags 
	{
		Vertex = 0,
		Instance = 1,
	}

	[AllowDuplicates]
	public enum PrimitiveTopology : Flags 
	{
		PointList = 0,
		LineList = 1,
		LineStrip = 2,
		TriangleList = 3,
		TriangleStrip = 4,
		TriangleFan = 5,
		LineListWithAdjacency = 6,
		LineStripWithAdjacency = 7,
		TriangleListWithAdjacency = 8,
		TriangleStripWithAdjacency = 9,
		PatchList = 10,
	}

	[AllowDuplicates]
	public enum PolygonMode : Flags 
	{
		Fill = 0,
		Line = 1,
		Point = 2,
		FillRectangleNV = 1000153000,
	}

	[AllowDuplicates]
	public enum FrontFace : Flags 
	{
		CounterClockwise = 0,
		Clockwise = 1,
	}

	[AllowDuplicates]
	public enum CompareOp : Flags 
	{
		Never = 0,
		Less = 1,
		Equal = 2,
		LessOrEqual = 3,
		Greater = 4,
		NotEqual = 5,
		GreaterOrEqual = 6,
		Always = 7,
	}

	[AllowDuplicates]
	public enum StencilOp : Flags 
	{
		Keep = 0,
		Zero = 1,
		Replace = 2,
		IncrementAndClamp = 3,
		DecrementAndClamp = 4,
		Invert = 5,
		IncrementAndWrap = 6,
		DecrementAndWrap = 7,
	}

	[AllowDuplicates]
	public enum LogicOp : Flags 
	{
		Clear = 0,
		And = 1,
		AndReverse = 2,
		Copy = 3,
		AndInverted = 4,
		NoOp = 5,
		Xor = 6,
		Or = 7,
		Nor = 8,
		Equivalent = 9,
		Invert = 10,
		OrReverse = 11,
		CopyInverted = 12,
		OrInverted = 13,
		Nand = 14,
		Set = 15,
	}

	[AllowDuplicates]
	public enum BlendFactor : Flags 
	{
		Zero = 0,
		One = 1,
		SrcColor = 2,
		OneMinusSrcColor = 3,
		DstColor = 4,
		OneMinusDstColor = 5,
		SrcAlpha = 6,
		OneMinusSrcAlpha = 7,
		DstAlpha = 8,
		OneMinusDstAlpha = 9,
		ConstantColor = 10,
		OneMinusConstantColor = 11,
		ConstantAlpha = 12,
		OneMinusConstantAlpha = 13,
		SrcAlphaSaturate = 14,
		Src1Color = 15,
		OneMinusSrc1Color = 16,
		Src1Alpha = 17,
		OneMinusSrc1Alpha = 18,
	}

	[AllowDuplicates]
	public enum BlendOp : Flags 
	{
		Add = 0,
		Subtract = 1,
		ReverseSubtract = 2,
		Min = 3,
		Max = 4,
		ZeroEXT = 1000148000,
		SrcEXT = 1000148001,
		DstEXT = 1000148002,
		SrcOverEXT = 1000148003,
		DstOverEXT = 1000148004,
		SrcInEXT = 1000148005,
		DstInEXT = 1000148006,
		SrcOutEXT = 1000148007,
		DstOutEXT = 1000148008,
		SrcAtopEXT = 1000148009,
		DstAtopEXT = 1000148010,
		XorEXT = 1000148011,
		MultiplyEXT = 1000148012,
		ScreenEXT = 1000148013,
		OverlayEXT = 1000148014,
		DarkenEXT = 1000148015,
		LightenEXT = 1000148016,
		ColordodgeEXT = 1000148017,
		ColorburnEXT = 1000148018,
		HardlightEXT = 1000148019,
		SoftlightEXT = 1000148020,
		DifferenceEXT = 1000148021,
		ExclusionEXT = 1000148022,
		InvertEXT = 1000148023,
		InvertRgbEXT = 1000148024,
		LineardodgeEXT = 1000148025,
		LinearburnEXT = 1000148026,
		VividlightEXT = 1000148027,
		LinearlightEXT = 1000148028,
		PinlightEXT = 1000148029,
		HardmixEXT = 1000148030,
		HslHueEXT = 1000148031,
		HslSaturationEXT = 1000148032,
		HslColorEXT = 1000148033,
		HslLuminosityEXT = 1000148034,
		PlusEXT = 1000148035,
		PlusClampedEXT = 1000148036,
		PlusClampedAlphaEXT = 1000148037,
		PlusDarkerEXT = 1000148038,
		MinusEXT = 1000148039,
		MinusClampedEXT = 1000148040,
		ContrastEXT = 1000148041,
		InvertOvgEXT = 1000148042,
		RedEXT = 1000148043,
		GreenEXT = 1000148044,
		BlueEXT = 1000148045,
	}

	[AllowDuplicates]
	public enum DynamicState : Flags 
	{
		Viewport = 0,
		Scissor = 1,
		LineWidth = 2,
		DepthBias = 3,
		BlendConstants = 4,
		DepthBounds = 5,
		StencilCompareMask = 6,
		StencilWriteMask = 7,
		StencilReference = 8,
		ViewportWScalingNV = 1000087000,
		DiscardRectangleEXT = 1000099000,
		SampleLocationsEXT = 1000143000,
		ViewportShadingRatePaletteNV = 1000164004,
		ViewportCoarseSampleOrderNV = 1000164006,
		ExclusiveScissorNV = 1000205001,
		LineStippleEXT = 1000259000,
	}

	[AllowDuplicates]
	public enum Filter : Flags 
	{
		Nearest = 0,
		Linear = 1,
		CubicImg = 1000015000,
		CubicEXT = CubicImg,
	}

	[AllowDuplicates]
	public enum SamplerMipmapMode : Flags 
	{
		Nearest = 0,
		Linear = 1,
	}

	[AllowDuplicates]
	public enum SamplerAddressMode : Flags 
	{
		Repeat = 0,
		MirroredRepeat = 1,
		ClampToEdge = 2,
		ClampToBorder = 3,
		MirrorClampToEdge = 4,
		MirrorClampToEdgeKHR = MirrorClampToEdge,
	}

	[AllowDuplicates]
	public enum BorderColor : Flags 
	{
		FloatTransparentBlack = 0,
		IntTransparentBlack = 1,
		FloatOpaqueBlack = 2,
		IntOpaqueBlack = 3,
		FloatOpaqueWhite = 4,
		IntOpaqueWhite = 5,
	}

	[AllowDuplicates]
	public enum DescriptorType : Flags 
	{
		Sampler = 0,
		CombinedImageSampler = 1,
		SampledImage = 2,
		StorageImage = 3,
		UniformTexelBuffer = 4,
		StorageTexelBuffer = 5,
		UniformBuffer = 6,
		StorageBuffer = 7,
		UniformBufferDynamic = 8,
		StorageBufferDynamic = 9,
		InputAttachment = 10,
		InlineUniformBlockEXT = 1000138000,
		AccelerationStructureKHR = 1000165000,
		AccelerationStructureNV = AccelerationStructureKHR,
	}

	[AllowDuplicates]
	public enum AttachmentLoadOp : Flags 
	{
		Load = 0,
		Clear = 1,
		DontCare = 2,
	}

	[AllowDuplicates]
	public enum AttachmentStoreOp : Flags 
	{
		Store = 0,
		DontCare = 1,
	}

	[AllowDuplicates]
	public enum PipelineBindPoint : Flags 
	{
		Graphics = 0,
		Compute = 1,
		RayTracingKHR = 1000165000,
		RayTracingNV = RayTracingKHR,
	}

	[AllowDuplicates]
	public enum CommandBufferLevel : Flags 
	{
		Primary = 0,
		Secondary = 1,
	}

	[AllowDuplicates]
	public enum IndexType : Flags 
	{
		Uint16 = 0,
		Uint32 = 1,
		NoneKHR = 1000165000,
		Uint8EXT = 1000265000,
		NoneNV = NoneKHR,
	}

	[AllowDuplicates]
	public enum SubpassContents : Flags 
	{
		Inline = 0,
		SecondaryCommandBuffers = 1,
	}

	[AllowDuplicates]
	public enum ObjectType : Flags 
	{
		Unknown = 0,
		Instance = 1,
		PhysicalDevice = 2,
		Device = 3,
		Queue = 4,
		Semaphore = 5,
		CommandBuffer = 6,
		Fence = 7,
		DeviceMemory = 8,
		Buffer = 9,
		Image = 10,
		Event = 11,
		QueryPool = 12,
		BufferView = 13,
		ImageView = 14,
		ShaderModule = 15,
		PipelineCache = 16,
		PipelineLayout = 17,
		RenderPass = 18,
		Pipeline = 19,
		DescriptorSetLayout = 20,
		Sampler = 21,
		DescriptorPool = 22,
		DescriptorSet = 23,
		Framebuffer = 24,
		CommandPool = 25,
		SamplerYcbcrConversion = 1000156000,
		DescriptorUpdateTemplate = 1000085000,
		SurfaceKHR = 1000000000,
		SwapchainKHR = 1000001000,
		DisplayKHR = 1000002000,
		DisplayModeKHR = 1000002001,
		DebugReportCallbackEXT = 1000011000,
		DebugUtilsMessengerEXT = 1000128000,
		AccelerationStructureKHR = 1000165000,
		ValidationCacheEXT = 1000160000,
		PerformanceConfigurationINTEL = 1000210000,
		DeferredOperationKHR = 1000268000,
		IndirectCommandsLayoutNV = 1000277000,
		DescriptorUpdateTemplateKHR = DescriptorUpdateTemplate,
		SamplerYcbcrConversionKHR = SamplerYcbcrConversion,
		AccelerationStructureNV = AccelerationStructureKHR,
	}

	[AllowDuplicates]
	public enum VendorId : Flags 
	{
		Viv = 0x10001,
		Vsi = 0x10002,
		Kazan = 0x10003,
		Codeplay = 0x10004,
	}

	[AllowDuplicates]
	public enum FormatFeatureFlags : Flags 
	{
		SampledImageBit = 0x00000001,
		StorageImageBit = 0x00000002,
		StorageImageAtomicBit = 0x00000004,
		UniformTexelBufferBit = 0x00000008,
		StorageTexelBufferBit = 0x00000010,
		StorageTexelBufferAtomicBit = 0x00000020,
		VertexBufferBit = 0x00000040,
		ColorAttachmentBit = 0x00000080,
		ColorAttachmentBlendBit = 0x00000100,
		DepthStencilAttachmentBit = 0x00000200,
		BlitSrcBit = 0x00000400,
		BlitDstBit = 0x00000800,
		SampledImageFilterLinearBit = 0x00001000,
		TransferSrcBit = 0x00004000,
		TransferDstBit = 0x00008000,
		MidpointChromaSamplesBit = 0x00020000,
		SampledImageYcbcrConversionLinearFilterBit = 0x00040000,
		SampledImageYcbcrConversionSeparateReconstructionFilterBit = 0x00080000,
		SampledImageYcbcrConversionChromaReconstructionExplicitBit = 0x00100000,
		SampledImageYcbcrConversionChromaReconstructionExplicitForceableBit = 0x00200000,
		DisjointBit = 0x00400000,
		CositedChromaSamplesBit = 0x00800000,
		SampledImageFilterMinmaxBit = 0x00010000,
		SampledImageFilterCubicBitImg = 0x00002000,
		AccelerationStructureVertexBufferBitKHR = 0x20000000,
		FragmentDensityMapBitEXT = 0x01000000,
		TransferSrcBitKHR = TransferSrcBit,
		TransferDstBitKHR = TransferDstBit,
		SampledImageFilterMinmaxBitEXT = SampledImageFilterMinmaxBit,
		MidpointChromaSamplesBitKHR = MidpointChromaSamplesBit,
		SampledImageYcbcrConversionLinearFilterBitKHR = SampledImageYcbcrConversionLinearFilterBit,
		SampledImageYcbcrConversionSeparateReconstructionFilterBitKHR = SampledImageYcbcrConversionSeparateReconstructionFilterBit,
		SampledImageYcbcrConversionChromaReconstructionExplicitBitKHR = SampledImageYcbcrConversionChromaReconstructionExplicitBit,
		SampledImageYcbcrConversionChromaReconstructionExplicitForceableBitKHR = SampledImageYcbcrConversionChromaReconstructionExplicitForceableBit,
		DisjointBitKHR = DisjointBit,
		CositedChromaSamplesBitKHR = CositedChromaSamplesBit,
		SampledImageFilterCubicBitEXT = SampledImageFilterCubicBitImg,
	}

	[AllowDuplicates]
	public enum ImageUsageFlags : Flags 
	{
		TransferSrcBit = 0x00000001,
		TransferDstBit = 0x00000002,
		SampledBit = 0x00000004,
		StorageBit = 0x00000008,
		ColorAttachmentBit = 0x00000010,
		DepthStencilAttachmentBit = 0x00000020,
		TransientAttachmentBit = 0x00000040,
		InputAttachmentBit = 0x00000080,
		ShadingRateImageBitNV = 0x00000100,
		FragmentDensityMapBitEXT = 0x00000200,
	}

	[AllowDuplicates]
	public enum ImageCreateFlags : Flags 
	{
		SparseBindingBit = 0x00000001,
		SparseResidencyBit = 0x00000002,
		SparseAliasedBit = 0x00000004,
		MutableFormatBit = 0x00000008,
		CubeCompatibleBit = 0x00000010,
		AliasBit = 0x00000400,
		SplitInstanceBindRegionsBit = 0x00000040,
		e2DArrayCompatibleBit = 0x00000020,
		BlockTexelViewCompatibleBit = 0x00000080,
		ExtendedUsageBit = 0x00000100,
		ProtectedBit = 0x00000800,
		DisjointBit = 0x00000200,
		CornerSampledBitNV = 0x00002000,
		SampleLocationsCompatibleDepthBitEXT = 0x00001000,
		SubsampledBitEXT = 0x00004000,
		SplitInstanceBindRegionsBitKHR = SplitInstanceBindRegionsBit,
		e2DArrayCompatibleBitKHR = e2DArrayCompatibleBit,
		BlockTexelViewCompatibleBitKHR = BlockTexelViewCompatibleBit,
		ExtendedUsageBitKHR = ExtendedUsageBit,
		DisjointBitKHR = DisjointBit,
		AliasBitKHR = AliasBit,
	}

	[AllowDuplicates]
	public enum SampleCountFlags : Flags 
	{
		e1Bit = 0x00000001,
		e2Bit = 0x00000002,
		e4Bit = 0x00000004,
		e8Bit = 0x00000008,
		e16Bit = 0x00000010,
		e32Bit = 0x00000020,
		e64Bit = 0x00000040,
	}

	[AllowDuplicates]
	public enum QueueFlags : Flags 
	{
		GraphicsBit = 0x00000001,
		ComputeBit = 0x00000002,
		TransferBit = 0x00000004,
		SparseBindingBit = 0x00000008,
		ProtectedBit = 0x00000010,
	}

	[AllowDuplicates]
	public enum MemoryPropertyFlags : Flags 
	{
		DeviceLocalBit = 0x00000001,
		HostVisibleBit = 0x00000002,
		HostCoherentBit = 0x00000004,
		HostCachedBit = 0x00000008,
		LazilyAllocatedBit = 0x00000010,
		ProtectedBit = 0x00000020,
		DeviceCoherentBitAMD = 0x00000040,
		DeviceUncachedBitAMD = 0x00000080,
	}

	[AllowDuplicates]
	public enum MemoryHeapFlags : Flags 
	{
		DeviceLocalBit = 0x00000001,
		MultiInstanceBit = 0x00000002,
		MultiInstanceBitKHR = MultiInstanceBit,
	}

	[AllowDuplicates]
	public enum DeviceQueueCreateFlags : Flags 
	{
		ProtectedBit = 0x00000001,
	}

	[AllowDuplicates]
	public enum PipelineStageFlags : Flags 
	{
		TopOfPipeBit = 0x00000001,
		DrawIndirectBit = 0x00000002,
		VertexInputBit = 0x00000004,
		VertexShaderBit = 0x00000008,
		TessellationControlShaderBit = 0x00000010,
		TessellationEvaluationShaderBit = 0x00000020,
		GeometryShaderBit = 0x00000040,
		FragmentShaderBit = 0x00000080,
		EarlyFragmentTestsBit = 0x00000100,
		LateFragmentTestsBit = 0x00000200,
		ColorAttachmentOutputBit = 0x00000400,
		ComputeShaderBit = 0x00000800,
		TransferBit = 0x00001000,
		BottomOfPipeBit = 0x00002000,
		HostBit = 0x00004000,
		AllGraphicsBit = 0x00008000,
		AllCommandsBit = 0x00010000,
		TransformFeedbackBitEXT = 0x01000000,
		ConditionalRenderingBitEXT = 0x00040000,
		RayTracingShaderBitKHR = 0x00200000,
		AccelerationStructureBuildBitKHR = 0x02000000,
		ShadingRateImageBitNV = 0x00400000,
		TaskShaderBitNV = 0x00080000,
		MeshShaderBitNV = 0x00100000,
		FragmentDensityProcessBitEXT = 0x00800000,
		CommandPreprocessBitNV = 0x00020000,
		RayTracingShaderBitNV = RayTracingShaderBitKHR,
		AccelerationStructureBuildBitNV = AccelerationStructureBuildBitKHR,
	}

	[AllowDuplicates]
	public enum ImageAspectFlags : Flags 
	{
		ColorBit = 0x00000001,
		DepthBit = 0x00000002,
		StencilBit = 0x00000004,
		MetadataBit = 0x00000008,
		Plane0Bit = 0x00000010,
		Plane1Bit = 0x00000020,
		Plane2Bit = 0x00000040,
		MemoryPlane0BitEXT = 0x00000080,
		MemoryPlane1BitEXT = 0x00000100,
		MemoryPlane2BitEXT = 0x00000200,
		MemoryPlane3BitEXT = 0x00000400,
		Plane0BitKHR = Plane0Bit,
		Plane1BitKHR = Plane1Bit,
		Plane2BitKHR = Plane2Bit,
	}

	[AllowDuplicates]
	public enum SparseImageFormatFlags : Flags 
	{
		SingleMiptailBit = 0x00000001,
		AlignedMipSizeBit = 0x00000002,
		NonstandardBlockSizeBit = 0x00000004,
	}

	[AllowDuplicates]
	public enum SparseMemoryBindFlags : Flags 
	{
		MetadataBit = 0x00000001,
	}

	[AllowDuplicates]
	public enum FenceCreateFlags : Flags 
	{
		SignaledBit = 0x00000001,
	}

	[AllowDuplicates]
	public enum QueryPipelineStatisticFlags : Flags 
	{
		InputAssemblyVerticesBit = 0x00000001,
		InputAssemblyPrimitivesBit = 0x00000002,
		VertexShaderInvocationsBit = 0x00000004,
		GeometryShaderInvocationsBit = 0x00000008,
		GeometryShaderPrimitivesBit = 0x00000010,
		ClippingInvocationsBit = 0x00000020,
		ClippingPrimitivesBit = 0x00000040,
		FragmentShaderInvocationsBit = 0x00000080,
		TessellationControlShaderPatchesBit = 0x00000100,
		TessellationEvaluationShaderInvocationsBit = 0x00000200,
		ComputeShaderInvocationsBit = 0x00000400,
	}

	[AllowDuplicates]
	public enum QueryResultFlags : Flags 
	{
		e64Bit = 0x00000001,
		WaitBit = 0x00000002,
		WithAvailabilityBit = 0x00000004,
		PartialBit = 0x00000008,
	}

	[AllowDuplicates]
	public enum BufferCreateFlags : Flags 
	{
		SparseBindingBit = 0x00000001,
		SparseResidencyBit = 0x00000002,
		SparseAliasedBit = 0x00000004,
		ProtectedBit = 0x00000008,
		DeviceAddressCaptureReplayBit = 0x00000010,
		DeviceAddressCaptureReplayBitEXT = DeviceAddressCaptureReplayBit,
		DeviceAddressCaptureReplayBitKHR = DeviceAddressCaptureReplayBit,
	}

	[AllowDuplicates]
	public enum BufferUsageFlags : Flags 
	{
		TransferSrcBit = 0x00000001,
		TransferDstBit = 0x00000002,
		UniformTexelBufferBit = 0x00000004,
		StorageTexelBufferBit = 0x00000008,
		UniformBufferBit = 0x00000010,
		StorageBufferBit = 0x00000020,
		IndexBufferBit = 0x00000040,
		VertexBufferBit = 0x00000080,
		IndirectBufferBit = 0x00000100,
		ShaderDeviceAddressBit = 0x00020000,
		TransformFeedbackBufferBitEXT = 0x00000800,
		TransformFeedbackCounterBufferBitEXT = 0x00001000,
		ConditionalRenderingBitEXT = 0x00000200,
		RayTracingBitKHR = 0x00000400,
		RayTracingBitNV = RayTracingBitKHR,
		ShaderDeviceAddressBitEXT = ShaderDeviceAddressBit,
		ShaderDeviceAddressBitKHR = ShaderDeviceAddressBit,
	}

	[AllowDuplicates]
	public enum ImageViewCreateFlags : Flags 
	{
		FragmentDensityMapDynamicBitEXT = 0x00000001,
	}

	[AllowDuplicates]
	public enum ShaderModuleCreateFlags : Flags 
	{
	}

	[AllowDuplicates]
	public enum PipelineCacheCreateFlags : Flags 
	{
		ExternallySynchronizedBitEXT = 0x00000001,
	}

	[AllowDuplicates]
	public enum PipelineCreateFlags : Flags 
	{
		DisableOptimizationBit = 0x00000001,
		AllowDerivativesBit = 0x00000002,
		DerivativeBit = 0x00000004,
		ViewIndexFromDeviceIndexBit = 0x00000008,
		DispatchBaseBit = 0x00000010,
		RayTracingNoNullAnyHitShadersBitKHR = 0x00004000,
		RayTracingNoNullClosestHitShadersBitKHR = 0x00008000,
		RayTracingNoNullMissShadersBitKHR = 0x00010000,
		RayTracingNoNullIntersectionShadersBitKHR = 0x00020000,
		RayTracingSkipTrianglesBitKHR = 0x00001000,
		RayTracingSkipAabbsBitKHR = 0x00002000,
		DeferCompileBitNV = 0x00000020,
		CaptureStatisticsBitKHR = 0x00000040,
		CaptureInternalRepresentationsBitKHR = 0x00000080,
		IndirectBindableBitNV = 0x00040000,
		LibraryBitKHR = 0x00000800,
		FailOnPipelineCompileRequiredBitEXT = 0x00000100,
		EarlyReturnOnFailureBitEXT = 0x00000200,
		DispatchBase = DispatchBaseBit,
		ViewIndexFromDeviceIndexBitKHR = ViewIndexFromDeviceIndexBit,
		DispatchBaseKHR = DispatchBase,
	}

	[AllowDuplicates]
	public enum PipelineShaderStageCreateFlags : Flags 
	{
		AllowVaryingSubgroupSizeBitEXT = 0x00000001,
		RequireFullSubgroupsBitEXT = 0x00000002,
	}

	[AllowDuplicates]
	public enum ShaderStageFlags : Flags 
	{
		VertexBit = 0x00000001,
		TessellationControlBit = 0x00000002,
		TessellationEvaluationBit = 0x00000004,
		GeometryBit = 0x00000008,
		FragmentBit = 0x00000010,
		ComputeBit = 0x00000020,
		AllGraphics = 0x0000001F,
		All = 0x7FFFFFFF,
		RaygenBitKHR = 0x00000100,
		AnyHitBitKHR = 0x00000200,
		ClosestHitBitKHR = 0x00000400,
		MissBitKHR = 0x00000800,
		IntersectionBitKHR = 0x00001000,
		CallableBitKHR = 0x00002000,
		TaskBitNV = 0x00000040,
		MeshBitNV = 0x00000080,
		RaygenBitNV = RaygenBitKHR,
		AnyHitBitNV = AnyHitBitKHR,
		ClosestHitBitNV = ClosestHitBitKHR,
		MissBitNV = MissBitKHR,
		IntersectionBitNV = IntersectionBitKHR,
		CallableBitNV = CallableBitKHR,
	}

	[AllowDuplicates]
	public enum CullModeFlags : Flags 
	{
		None = 0,
		FrontBit = 0x00000001,
		BackBit = 0x00000002,
		FrontAndBack = 0x00000003,
	}

	[AllowDuplicates]
	public enum ColorComponentFlags : Flags 
	{
		RBit = 0x00000001,
		GBit = 0x00000002,
		BBit = 0x00000004,
		ABit = 0x00000008,
	}

	[AllowDuplicates]
	public enum SamplerCreateFlags : Flags 
	{
		SubsampledBitEXT = 0x00000001,
		SubsampledCoarseReconstructionBitEXT = 0x00000002,
	}

	[AllowDuplicates]
	public enum DescriptorSetLayoutCreateFlags : Flags 
	{
		UpdateAfterBindPoolBit = 0x00000002,
		PushDescriptorBitKHR = 0x00000001,
		UpdateAfterBindPoolBitEXT = UpdateAfterBindPoolBit,
	}

	[AllowDuplicates]
	public enum DescriptorPoolCreateFlags : Flags 
	{
		FreeDescriptorSetBit = 0x00000001,
		UpdateAfterBindBit = 0x00000002,
		UpdateAfterBindBitEXT = UpdateAfterBindBit,
	}

	[AllowDuplicates]
	public enum FramebufferCreateFlags : Flags 
	{
		ImagelessBit = 0x00000001,
		ImagelessBitKHR = ImagelessBit,
	}

	[AllowDuplicates]
	public enum RenderPassCreateFlags : Flags 
	{
		TransformBitQCOM = 0x00000002,
	}

	[AllowDuplicates]
	public enum AttachmentDescriptionFlags : Flags 
	{
		MayAliasBit = 0x00000001,
	}

	[AllowDuplicates]
	public enum SubpassDescriptionFlags : Flags 
	{
		PerViewAttributesBitNVX = 0x00000001,
		PerViewPositionXOnlyBitNVX = 0x00000002,
	}

	[AllowDuplicates]
	public enum AccessFlags : Flags 
	{
		IndirectCommandReadBit = 0x00000001,
		IndexReadBit = 0x00000002,
		VertexAttributeReadBit = 0x00000004,
		UniformReadBit = 0x00000008,
		InputAttachmentReadBit = 0x00000010,
		ShaderReadBit = 0x00000020,
		ShaderWriteBit = 0x00000040,
		ColorAttachmentReadBit = 0x00000080,
		ColorAttachmentWriteBit = 0x00000100,
		DepthStencilAttachmentReadBit = 0x00000200,
		DepthStencilAttachmentWriteBit = 0x00000400,
		TransferReadBit = 0x00000800,
		TransferWriteBit = 0x00001000,
		HostReadBit = 0x00002000,
		HostWriteBit = 0x00004000,
		MemoryReadBit = 0x00008000,
		MemoryWriteBit = 0x00010000,
		TransformFeedbackWriteBitEXT = 0x02000000,
		TransformFeedbackCounterReadBitEXT = 0x04000000,
		TransformFeedbackCounterWriteBitEXT = 0x08000000,
		ConditionalRenderingReadBitEXT = 0x00100000,
		ColorAttachmentReadNoncoherentBitEXT = 0x00080000,
		AccelerationStructureReadBitKHR = 0x00200000,
		AccelerationStructureWriteBitKHR = 0x00400000,
		ShadingRateImageReadBitNV = 0x00800000,
		FragmentDensityMapReadBitEXT = 0x01000000,
		CommandPreprocessReadBitNV = 0x00020000,
		CommandPreprocessWriteBitNV = 0x00040000,
		AccelerationStructureReadBitNV = AccelerationStructureReadBitKHR,
		AccelerationStructureWriteBitNV = AccelerationStructureWriteBitKHR,
	}

	[AllowDuplicates]
	public enum DependencyFlags : Flags 
	{
		ByRegionBit = 0x00000001,
		DeviceGroupBit = 0x00000004,
		ViewLocalBit = 0x00000002,
		ViewLocalBitKHR = ViewLocalBit,
		DeviceGroupBitKHR = DeviceGroupBit,
	}

	[AllowDuplicates]
	public enum CommandPoolCreateFlags : Flags 
	{
		TransientBit = 0x00000001,
		ResetCommandBufferBit = 0x00000002,
		ProtectedBit = 0x00000004,
	}

	[AllowDuplicates]
	public enum CommandPoolResetFlags : Flags 
	{
		ReleaseResourcesBit = 0x00000001,
	}

	[AllowDuplicates]
	public enum CommandBufferUsageFlags : Flags 
	{
		OneTimeSubmitBit = 0x00000001,
		RenderPassContinueBit = 0x00000002,
		SimultaneousUseBit = 0x00000004,
	}

	[AllowDuplicates]
	public enum QueryControlFlags : Flags 
	{
		PreciseBit = 0x00000001,
	}

	[AllowDuplicates]
	public enum CommandBufferResetFlags : Flags 
	{
		ReleaseResourcesBit = 0x00000001,
	}

	[AllowDuplicates]
	public enum StencilFaceFlags : Flags 
	{
		FrontBit = 0x00000001,
		BackBit = 0x00000002,
		FrontAndBack = 0x00000003,
		eVkFrontAndBack = FrontAndBack,
	}

	[AllowDuplicates]
	public enum PointClippingBehavior : Flags 
	{
		AllClipPlanes = 0,
		UserClipPlanesOnly = 1,
		AllClipPlanesKHR = AllClipPlanes,
		UserClipPlanesOnlyKHR = UserClipPlanesOnly,
	}

	[AllowDuplicates]
	public enum TessellationDomainOrigin : Flags 
	{
		UpperLeft = 0,
		LowerLeft = 1,
		UpperLeftKHR = UpperLeft,
		LowerLeftKHR = LowerLeft,
	}

	[AllowDuplicates]
	public enum SamplerYcbcrModelConversion : Flags 
	{
		RgbIdentity = 0,
		YcbcrIdentity = 1,
		Ycbcr709 = 2,
		Ycbcr601 = 3,
		Ycbcr2020 = 4,
		RgbIdentityKHR = RgbIdentity,
		YcbcrIdentityKHR = YcbcrIdentity,
		Ycbcr709KHR = Ycbcr709,
		Ycbcr601KHR = Ycbcr601,
		Ycbcr2020KHR = Ycbcr2020,
	}

	[AllowDuplicates]
	public enum SamplerYcbcrRange : Flags 
	{
		ItuFull = 0,
		ItuNarrow = 1,
		ItuFullKHR = ItuFull,
		ItuNarrowKHR = ItuNarrow,
	}

	[AllowDuplicates]
	public enum ChromaLocation : Flags 
	{
		CositedEven = 0,
		Midpoint = 1,
		CositedEvenKHR = CositedEven,
		MidpointKHR = Midpoint,
	}

	[AllowDuplicates]
	public enum DescriptorUpdateTemplateType : Flags 
	{
		DescriptorSet = 0,
		PushDescriptorsKHR = 1,
		DescriptorSetKHR = DescriptorSet,
	}

	[AllowDuplicates]
	public enum SubgroupFeatureFlags : Flags 
	{
		BasicBit = 0x00000001,
		VoteBit = 0x00000002,
		ArithmeticBit = 0x00000004,
		BallotBit = 0x00000008,
		ShuffleBit = 0x00000010,
		ShuffleRelativeBit = 0x00000020,
		ClusteredBit = 0x00000040,
		QuadBit = 0x00000080,
		PartitionedBitNV = 0x00000100,
	}

	[AllowDuplicates]
	public enum PeerMemoryFeatureFlags : Flags 
	{
		CopySrcBit = 0x00000001,
		CopyDstBit = 0x00000002,
		GenericSrcBit = 0x00000004,
		GenericDstBit = 0x00000008,
		CopySrcBitKHR = CopySrcBit,
		CopyDstBitKHR = CopyDstBit,
		GenericSrcBitKHR = GenericSrcBit,
		GenericDstBitKHR = GenericDstBit,
	}

	[AllowDuplicates]
	public enum MemoryAllocateFlags : Flags 
	{
		DeviceMaskBit = 0x00000001,
		DeviceAddressBit = 0x00000002,
		DeviceAddressCaptureReplayBit = 0x00000004,
		DeviceMaskBitKHR = DeviceMaskBit,
		DeviceAddressBitKHR = DeviceAddressBit,
		DeviceAddressCaptureReplayBitKHR = DeviceAddressCaptureReplayBit,
	}

	[AllowDuplicates]
	public enum ExternalMemoryHandleTypeFlags : Flags 
	{
		OpaqueFdBit = 0x00000001,
		OpaqueWin32Bit = 0x00000002,
		OpaqueWin32KmtBit = 0x00000004,
		D3D11TextureBit = 0x00000008,
		D3D11TextureKmtBit = 0x00000010,
		D3D12HeapBit = 0x00000020,
		D3D12ResourceBit = 0x00000040,
		DmaBufBitEXT = 0x00000200,
		AndroidHardwareBufferBitAndroid = 0x00000400,
		HostAllocationBitEXT = 0x00000080,
		HostMappedForeignMemoryBitEXT = 0x00000100,
		OpaqueFdBitKHR = OpaqueFdBit,
		OpaqueWin32BitKHR = OpaqueWin32Bit,
		OpaqueWin32KmtBitKHR = OpaqueWin32KmtBit,
		D3D11TextureBitKHR = D3D11TextureBit,
		D3D11TextureKmtBitKHR = D3D11TextureKmtBit,
		D3D12HeapBitKHR = D3D12HeapBit,
		D3D12ResourceBitKHR = D3D12ResourceBit,
	}

	[AllowDuplicates]
	public enum ExternalMemoryFeatureFlags : Flags 
	{
		DedicatedOnlyBit = 0x00000001,
		ExportableBit = 0x00000002,
		ImportableBit = 0x00000004,
		DedicatedOnlyBitKHR = DedicatedOnlyBit,
		ExportableBitKHR = ExportableBit,
		ImportableBitKHR = ImportableBit,
	}

	[AllowDuplicates]
	public enum ExternalFenceHandleTypeFlags : Flags 
	{
		OpaqueFdBit = 0x00000001,
		OpaqueWin32Bit = 0x00000002,
		OpaqueWin32KmtBit = 0x00000004,
		SyncFdBit = 0x00000008,
		OpaqueFdBitKHR = OpaqueFdBit,
		OpaqueWin32BitKHR = OpaqueWin32Bit,
		OpaqueWin32KmtBitKHR = OpaqueWin32KmtBit,
		SyncFdBitKHR = SyncFdBit,
	}

	[AllowDuplicates]
	public enum ExternalFenceFeatureFlags : Flags 
	{
		ExportableBit = 0x00000001,
		ImportableBit = 0x00000002,
		ExportableBitKHR = ExportableBit,
		ImportableBitKHR = ImportableBit,
	}

	[AllowDuplicates]
	public enum FenceImportFlags : Flags 
	{
		TemporaryBit = 0x00000001,
		TemporaryBitKHR = TemporaryBit,
	}

	[AllowDuplicates]
	public enum SemaphoreImportFlags : Flags 
	{
		TemporaryBit = 0x00000001,
		TemporaryBitKHR = TemporaryBit,
	}

	[AllowDuplicates]
	public enum ExternalSemaphoreHandleTypeFlags : Flags 
	{
		OpaqueFdBit = 0x00000001,
		OpaqueWin32Bit = 0x00000002,
		OpaqueWin32KmtBit = 0x00000004,
		D3D12FenceBit = 0x00000008,
		SyncFdBit = 0x00000010,
		OpaqueFdBitKHR = OpaqueFdBit,
		OpaqueWin32BitKHR = OpaqueWin32Bit,
		OpaqueWin32KmtBitKHR = OpaqueWin32KmtBit,
		D3D12FenceBitKHR = D3D12FenceBit,
		SyncFdBitKHR = SyncFdBit,
	}

	[AllowDuplicates]
	public enum ExternalSemaphoreFeatureFlags : Flags 
	{
		ExportableBit = 0x00000001,
		ImportableBit = 0x00000002,
		ExportableBitKHR = ExportableBit,
		ImportableBitKHR = ImportableBit,
	}

	[AllowDuplicates]
	public enum DriverId : Flags 
	{
		AmdProprietary = 1,
		AmdOpenSource = 2,
		MesaRadv = 3,
		NvidiaProprietary = 4,
		IntelProprietaryWindows = 5,
		IntelOpenSourceMesa = 6,
		ImaginationProprietary = 7,
		QualcommProprietary = 8,
		ArmProprietary = 9,
		GoogleSwiftshader = 10,
		GgpProprietary = 11,
		BroadcomProprietary = 12,
		AmdProprietaryKHR = AmdProprietary,
		AmdOpenSourceKHR = AmdOpenSource,
		MesaRadvKHR = MesaRadv,
		NvidiaProprietaryKHR = NvidiaProprietary,
		IntelProprietaryWindowsKHR = IntelProprietaryWindows,
		IntelOpenSourceMesaKHR = IntelOpenSourceMesa,
		ImaginationProprietaryKHR = ImaginationProprietary,
		QualcommProprietaryKHR = QualcommProprietary,
		ArmProprietaryKHR = ArmProprietary,
		GoogleSwiftshaderKHR = GoogleSwiftshader,
		GgpProprietaryKHR = GgpProprietary,
		BroadcomProprietaryKHR = BroadcomProprietary,
	}

	[AllowDuplicates]
	public enum ShaderFloatControlsIndependence : Flags 
	{
		e32BitOnly = 0,
		All = 1,
		None = 2,
		e32BitOnlyKHR = e32BitOnly,
		AllKHR = All,
		NoneKHR = None,
	}

	[AllowDuplicates]
	public enum SamplerReductionMode : Flags 
	{
		WeightedAverage = 0,
		Min = 1,
		Max = 2,
		WeightedAverageEXT = WeightedAverage,
		MinEXT = Min,
		MaxEXT = Max,
	}

	[AllowDuplicates]
	public enum SemaphoreType : Flags 
	{
		Binary = 0,
		Timeline = 1,
		BinaryKHR = Binary,
		TimelineKHR = Timeline,
	}

	[AllowDuplicates]
	public enum ResolveModeFlags : Flags 
	{
		None = 0,
		SampleZeroBit = 0x00000001,
		AverageBit = 0x00000002,
		MinBit = 0x00000004,
		MaxBit = 0x00000008,
		NoneKHR = None,
		SampleZeroBitKHR = SampleZeroBit,
		AverageBitKHR = AverageBit,
		MinBitKHR = MinBit,
		MaxBitKHR = MaxBit,
	}

	[AllowDuplicates]
	public enum DescriptorBindingFlags : Flags 
	{
		UpdateAfterBindBit = 0x00000001,
		UpdateUnusedWhilePendingBit = 0x00000002,
		PartiallyBoundBit = 0x00000004,
		VariableDescriptorCountBit = 0x00000008,
		UpdateAfterBindBitEXT = UpdateAfterBindBit,
		UpdateUnusedWhilePendingBitEXT = UpdateUnusedWhilePendingBit,
		PartiallyBoundBitEXT = PartiallyBoundBit,
		VariableDescriptorCountBitEXT = VariableDescriptorCountBit,
	}

	[AllowDuplicates]
	public enum SemaphoreWaitFlags : Flags 
	{
		AnyBit = 0x00000001,
		AnyBitKHR = AnyBit,
	}

	[AllowDuplicates]
	public enum ColorSpaceKHR : Flags 
	{
		SrgbNonlinearKHR = 0,
		DisplayP3NonlinearEXT = 1000104001,
		ExtendedSrgbLinearEXT = 1000104002,
		DisplayP3LinearEXT = 1000104003,
		DciP3NonlinearEXT = 1000104004,
		Bt709LinearEXT = 1000104005,
		Bt709NonlinearEXT = 1000104006,
		Bt2020LinearEXT = 1000104007,
		Hdr10St2084EXT = 1000104008,
		DolbyvisionEXT = 1000104009,
		Hdr10HlgEXT = 1000104010,
		AdobergbLinearEXT = 1000104011,
		AdobergbNonlinearEXT = 1000104012,
		PassThroughEXT = 1000104013,
		ExtendedSrgbNonlinearEXT = 1000104014,
		DisplayNativeAMD = 1000213000,
		ColorspaceSrgbNonlinearKHR = SrgbNonlinearKHR,
		DciP3LinearEXT = DisplayP3LinearEXT,
	}

	[AllowDuplicates]
	public enum PresentModeKHR : Flags 
	{
		ImmediateKHR = 0,
		MailboxKHR = 1,
		FifoKHR = 2,
		FifoRelaxedKHR = 3,
		SharedDemandRefreshKHR = 1000111000,
		SharedContinuousRefreshKHR = 1000111001,
	}

	[AllowDuplicates]
	public enum SurfaceTransformFlagsKHR : Flags 
	{
		IdentityBitKHR = 0x00000001,
		Rotate90BitKHR = 0x00000002,
		Rotate180BitKHR = 0x00000004,
		Rotate270BitKHR = 0x00000008,
		HorizontalMirrorBitKHR = 0x00000010,
		HorizontalMirrorRotate90BitKHR = 0x00000020,
		HorizontalMirrorRotate180BitKHR = 0x00000040,
		HorizontalMirrorRotate270BitKHR = 0x00000080,
		InheritBitKHR = 0x00000100,
	}

	[AllowDuplicates]
	public enum CompositeAlphaFlagsKHR : Flags 
	{
		OpaqueBitKHR = 0x00000001,
		PreMultipliedBitKHR = 0x00000002,
		PostMultipliedBitKHR = 0x00000004,
		InheritBitKHR = 0x00000008,
	}

	[AllowDuplicates]
	public enum SwapchainCreateFlagsKHR : Flags 
	{
		SplitInstanceBindRegionsBitKHR = 0x00000001,
		ProtectedBitKHR = 0x00000002,
		MutableFormatBitKHR = 0x00000004,
	}

	[AllowDuplicates]
	public enum DeviceGroupPresentModeFlagsKHR : Flags 
	{
		LocalBitKHR = 0x00000001,
		RemoteBitKHR = 0x00000002,
		SumBitKHR = 0x00000004,
		LocalMultiDeviceBitKHR = 0x00000008,
	}

	[AllowDuplicates]
	public enum DisplayPlaneAlphaFlagsKHR : Flags 
	{
		OpaqueBitKHR = 0x00000001,
		GlobalBitKHR = 0x00000002,
		PerPixelBitKHR = 0x00000004,
		PerPixelPremultipliedBitKHR = 0x00000008,
	}

	[AllowDuplicates]
	public enum PerformanceCounterUnitKHR : Flags 
	{
		GenericKHR = 0,
		PercentageKHR = 1,
		NanosecondsKHR = 2,
		BytesKHR = 3,
		BytesPerSecondKHR = 4,
		KelvinKHR = 5,
		WattsKHR = 6,
		VoltsKHR = 7,
		AmpsKHR = 8,
		HertzKHR = 9,
		CyclesKHR = 10,
	}

	[AllowDuplicates]
	public enum PerformanceCounterScopeKHR : Flags 
	{
		CommandBufferKHR = 0,
		RenderPassKHR = 1,
		CommandKHR = 2,
		QueryScopeCommandBufferKHR = CommandBufferKHR,
		QueryScopeRenderPassKHR = RenderPassKHR,
		QueryScopeCommandKHR = CommandKHR,
	}

	[AllowDuplicates]
	public enum PerformanceCounterStorageKHR : Flags 
	{
		Int32KHR = 0,
		Int64KHR = 1,
		Uint32KHR = 2,
		Uint64KHR = 3,
		Float32KHR = 4,
		Float64KHR = 5,
	}

	[AllowDuplicates]
	public enum PerformanceCounterDescriptionFlagsKHR : Flags 
	{
		PerformanceImpactingKHR = 0x00000001,
		ConcurrentlyImpactedKHR = 0x00000002,
	}

	[AllowDuplicates]
	public enum AcquireProfilingLockFlagsKHR : Flags 
	{
	}

	[AllowDuplicates]
	public enum PipelineExecutableStatisticFormatKHR : Flags 
	{
		Bool32KHR = 0,
		Int64KHR = 1,
		Uint64KHR = 2,
		Float64KHR = 3,
	}

	[AllowDuplicates]
	public enum DebugReportObjectTypeEXT : Flags 
	{
		UnknownEXT = 0,
		InstanceEXT = 1,
		PhysicalDeviceEXT = 2,
		DeviceEXT = 3,
		QueueEXT = 4,
		SemaphoreEXT = 5,
		CommandBufferEXT = 6,
		FenceEXT = 7,
		DeviceMemoryEXT = 8,
		BufferEXT = 9,
		ImageEXT = 10,
		EventEXT = 11,
		QueryPoolEXT = 12,
		BufferViewEXT = 13,
		ImageViewEXT = 14,
		ShaderModuleEXT = 15,
		PipelineCacheEXT = 16,
		PipelineLayoutEXT = 17,
		RenderPassEXT = 18,
		PipelineEXT = 19,
		DescriptorSetLayoutEXT = 20,
		SamplerEXT = 21,
		DescriptorPoolEXT = 22,
		DescriptorSetEXT = 23,
		FramebufferEXT = 24,
		CommandPoolEXT = 25,
		SurfaceKhrEXT = 26,
		SwapchainKhrEXT = 27,
		DebugReportCallbackExtEXT = 28,
		DisplayKhrEXT = 29,
		DisplayModeKhrEXT = 30,
		ValidationCacheExtEXT = 33,
		SamplerYcbcrConversionEXT = 1000156000,
		DescriptorUpdateTemplateEXT = 1000085000,
		AccelerationStructureKhrEXT = 1000165000,
		DebugReportEXT = DebugReportCallbackExtEXT,
		ValidationCacheEXT = ValidationCacheExtEXT,
		DescriptorUpdateTemplateKhrEXT = DescriptorUpdateTemplateEXT,
		SamplerYcbcrConversionKhrEXT = SamplerYcbcrConversionEXT,
		AccelerationStructureNvEXT = AccelerationStructureKhrEXT,
	}

	[AllowDuplicates]
	public enum DebugReportFlagsEXT : Flags 
	{
		InformationBitEXT = 0x00000001,
		WarningBitEXT = 0x00000002,
		PerformanceWarningBitEXT = 0x00000004,
		ErrorBitEXT = 0x00000008,
		DebugBitEXT = 0x00000010,
	}

	[AllowDuplicates]
	public enum RasterizationOrderAMD : Flags 
	{
		StrictAMD = 0,
		RelaxedAMD = 1,
	}

	[AllowDuplicates]
	public enum ShaderInfoTypeAMD : Flags 
	{
		StatisticsAMD = 0,
		BinaryAMD = 1,
		DisassemblyAMD = 2,
	}

	[AllowDuplicates]
	public enum ExternalMemoryHandleTypeFlagsNV : Flags 
	{
		OpaqueWin32BitNV = 0x00000001,
		OpaqueWin32KmtBitNV = 0x00000002,
		D3D11ImageBitNV = 0x00000004,
		D3D11ImageKmtBitNV = 0x00000008,
	}

	[AllowDuplicates]
	public enum ExternalMemoryFeatureFlagsNV : Flags 
	{
		DedicatedOnlyBitNV = 0x00000001,
		ExportableBitNV = 0x00000002,
		ImportableBitNV = 0x00000004,
	}

	[AllowDuplicates]
	public enum ValidationCheckEXT : Flags 
	{
		AllEXT = 0,
		ShadersEXT = 1,
	}

	[AllowDuplicates]
	public enum ConditionalRenderingFlagsEXT : Flags 
	{
		InvertedBitEXT = 0x00000001,
	}

	[AllowDuplicates]
	public enum SurfaceCounterFlagsEXT : Flags 
	{
		VblankEXT = 0x00000001,
	}

	[AllowDuplicates]
	public enum DisplayPowerStateEXT : Flags 
	{
		OffEXT = 0,
		SuspendEXT = 1,
		OnEXT = 2,
	}

	[AllowDuplicates]
	public enum DeviceEventTypeEXT : Flags 
	{
		DisplayHotplugEXT = 0,
	}

	[AllowDuplicates]
	public enum DisplayEventTypeEXT : Flags 
	{
		FirstPixelOutEXT = 0,
	}

	[AllowDuplicates]
	public enum ViewportCoordinateSwizzleNV : Flags 
	{
		PositiveXNV = 0,
		NegativeXNV = 1,
		PositiveYNV = 2,
		NegativeYNV = 3,
		PositiveZNV = 4,
		NegativeZNV = 5,
		PositiveWNV = 6,
		NegativeWNV = 7,
	}

	[AllowDuplicates]
	public enum DiscardRectangleModeEXT : Flags 
	{
		InclusiveEXT = 0,
		ExclusiveEXT = 1,
	}

	[AllowDuplicates]
	public enum ConservativeRasterizationModeEXT : Flags 
	{
		DisabledEXT = 0,
		OverestimateEXT = 1,
		UnderestimateEXT = 2,
	}

	[AllowDuplicates]
	public enum DebugUtilsMessageSeverityFlagsEXT : Flags 
	{
		VerboseBitEXT = 0x00000001,
		InfoBitEXT = 0x00000010,
		WarningBitEXT = 0x00000100,
		ErrorBitEXT = 0x00001000,
	}

	[AllowDuplicates]
	public enum DebugUtilsMessageTypeFlagsEXT : Flags 
	{
		GeneralBitEXT = 0x00000001,
		ValidationBitEXT = 0x00000002,
		PerformanceBitEXT = 0x00000004,
	}

	[AllowDuplicates]
	public enum BlendOverlapEXT : Flags 
	{
		UncorrelatedEXT = 0,
		DisjointEXT = 1,
		ConjointEXT = 2,
	}

	[AllowDuplicates]
	public enum CoverageModulationModeNV : Flags 
	{
		NoneNV = 0,
		RgbNV = 1,
		AlphaNV = 2,
		RgbaNV = 3,
	}

	[AllowDuplicates]
	public enum ValidationCacheHeaderVersionEXT : Flags 
	{
		OneEXT = 1,
	}

	[AllowDuplicates]
	public enum ShadingRatePaletteEntryNV : Flags 
	{
		NoInvocationsNV = 0,
		e16InvocationsPerPixelNV = 1,
		e8InvocationsPerPixelNV = 2,
		e4InvocationsPerPixelNV = 3,
		e2InvocationsPerPixelNV = 4,
		e1InvocationPerPixelNV = 5,
		e1InvocationPer2X1PixelsNV = 6,
		e1InvocationPer1X2PixelsNV = 7,
		e1InvocationPer2X2PixelsNV = 8,
		e1InvocationPer4X2PixelsNV = 9,
		e1InvocationPer2X4PixelsNV = 10,
		e1InvocationPer4X4PixelsNV = 11,
	}

	[AllowDuplicates]
	public enum CoarseSampleOrderTypeNV : Flags 
	{
		DefaultNV = 0,
		CustomNV = 1,
		PixelMajorNV = 2,
		SampleMajorNV = 3,
	}

	[AllowDuplicates]
	public enum RayTracingShaderGroupTypeKHR : Flags 
	{
		GeneralKHR = 0,
		TrianglesHitGroupKHR = 1,
		ProceduralHitGroupKHR = 2,
		GeneralNV = GeneralKHR,
		TrianglesHitGroupNV = TrianglesHitGroupKHR,
		ProceduralHitGroupNV = ProceduralHitGroupKHR,
	}

	[AllowDuplicates]
	public enum GeometryTypeKHR : Flags 
	{
		TrianglesKHR = 0,
		AabbsKHR = 1,
		InstancesKHR = 1000150000,
		TrianglesNV = TrianglesKHR,
		AabbsNV = AabbsKHR,
	}

	[AllowDuplicates]
	public enum AccelerationStructureTypeKHR : Flags 
	{
		TopLevelKHR = 0,
		BottomLevelKHR = 1,
		TopLevelNV = TopLevelKHR,
		BottomLevelNV = BottomLevelKHR,
	}

	[AllowDuplicates]
	public enum CopyAccelerationStructureModeKHR : Flags 
	{
		CloneKHR = 0,
		CompactKHR = 1,
		SerializeKHR = 2,
		DeserializeKHR = 3,
		CloneNV = CloneKHR,
		CompactNV = CompactKHR,
	}

	[AllowDuplicates]
	public enum AccelerationStructureMemoryRequirementsTypeKHR : Flags 
	{
		ObjectKHR = 0,
		BuildScratchKHR = 1,
		UpdateScratchKHR = 2,
		ObjectNV = ObjectKHR,
		BuildScratchNV = BuildScratchKHR,
		UpdateScratchNV = UpdateScratchKHR,
	}

	[AllowDuplicates]
	public enum GeometryFlagsKHR : Flags 
	{
		OpaqueBitKHR = 0x00000001,
		NoDuplicateAnyHitInvocationBitKHR = 0x00000002,
		OpaqueBitNV = OpaqueBitKHR,
		NoDuplicateAnyHitInvocationBitNV = NoDuplicateAnyHitInvocationBitKHR,
	}

	[AllowDuplicates]
	public enum GeometryInstanceFlagsKHR : Flags 
	{
		TriangleFacingCullDisableBitKHR = 0x00000001,
		TriangleFrontCounterclockwiseBitKHR = 0x00000002,
		ForceOpaqueBitKHR = 0x00000004,
		ForceNoOpaqueBitKHR = 0x00000008,
		TriangleCullDisableBitNV = TriangleFacingCullDisableBitKHR,
		TriangleFrontCounterclockwiseBitNV = TriangleFrontCounterclockwiseBitKHR,
		ForceOpaqueBitNV = ForceOpaqueBitKHR,
		ForceNoOpaqueBitNV = ForceNoOpaqueBitKHR,
	}

	[AllowDuplicates]
	public enum BuildAccelerationStructureFlagsKHR : Flags 
	{
		AllowUpdateBitKHR = 0x00000001,
		AllowCompactionBitKHR = 0x00000002,
		PreferFastTraceBitKHR = 0x00000004,
		PreferFastBuildBitKHR = 0x00000008,
		LowMemoryBitKHR = 0x00000010,
		AllowUpdateBitNV = AllowUpdateBitKHR,
		AllowCompactionBitNV = AllowCompactionBitKHR,
		PreferFastTraceBitNV = PreferFastTraceBitKHR,
		PreferFastBuildBitNV = PreferFastBuildBitKHR,
		LowMemoryBitNV = LowMemoryBitKHR,
	}

	[AllowDuplicates]
	public enum QueueGlobalPriorityEXT : Flags 
	{
		LowEXT = 128,
		MediumEXT = 256,
		HighEXT = 512,
		RealtimeEXT = 1024,
	}

	[AllowDuplicates]
	public enum PipelineCompilerControlFlagsAMD : Flags 
	{
	}

	[AllowDuplicates]
	public enum TimeDomainEXT : Flags 
	{
		DeviceEXT = 0,
		ClockMonotonicEXT = 1,
		ClockMonotonicRawEXT = 2,
		QueryPerformanceCounterEXT = 3,
	}

	[AllowDuplicates]
	public enum MemoryOverallocationBehaviorAMD : Flags 
	{
		DefaultAMD = 0,
		AllowedAMD = 1,
		DisallowedAMD = 2,
	}

	[AllowDuplicates]
	public enum PipelineCreationFeedbackFlagsEXT : Flags 
	{
		ValidBitEXT = 0x00000001,
		ApplicationPipelineCacheHitBitEXT = 0x00000002,
		BasePipelineAccelerationBitEXT = 0x00000004,
	}

	[AllowDuplicates]
	public enum PerformanceConfigurationTypeINTEL : Flags 
	{
		CommandQueueMetricsDiscoveryActivatedINTEL = 0,
	}

	[AllowDuplicates]
	public enum QueryPoolSamplingModeINTEL : Flags 
	{
		ManualINTEL = 0,
	}

	[AllowDuplicates]
	public enum PerformanceOverrideTypeINTEL : Flags 
	{
		NullHardwareINTEL = 0,
		FlushGpuCachesINTEL = 1,
	}

	[AllowDuplicates]
	public enum PerformanceParameterTypeINTEL : Flags 
	{
		HwCountersSupportedINTEL = 0,
		StreamMarkerValidBitsINTEL = 1,
	}

	[AllowDuplicates]
	public enum PerformanceValueTypeINTEL : Flags 
	{
		Uint32INTEL = 0,
		Uint64INTEL = 1,
		FloatINTEL = 2,
		BoolINTEL = 3,
		StringINTEL = 4,
	}

	[AllowDuplicates]
	public enum ShaderCorePropertiesFlagsAMD : Flags 
	{
	}

	[AllowDuplicates]
	public enum ToolPurposeFlagsEXT : Flags 
	{
		ValidationBitEXT = 0x00000001,
		ProfilingBitEXT = 0x00000002,
		TracingBitEXT = 0x00000004,
		AdditionalFeaturesBitEXT = 0x00000008,
		ModifyingFeaturesBitEXT = 0x00000010,
		DebugReportingBitEXT = 0x00000020,
		DebugMarkersBitEXT = 0x00000040,
	}

	[AllowDuplicates]
	public enum ValidationFeatureEnableEXT : Flags 
	{
		GpuAssistedEXT = 0,
		GpuAssistedReserveBindingSlotEXT = 1,
		BestPracticesEXT = 2,
		DebugPrintfEXT = 3,
	}

	[AllowDuplicates]
	public enum ValidationFeatureDisableEXT : Flags 
	{
		AllEXT = 0,
		ShadersEXT = 1,
		ThreadSafetyEXT = 2,
		ApiParametersEXT = 3,
		ObjectLifetimesEXT = 4,
		CoreChecksEXT = 5,
		UniqueHandlesEXT = 6,
	}

	[AllowDuplicates]
	public enum ComponentTypeNV : Flags 
	{
		Float16NV = 0,
		Float32NV = 1,
		Float64NV = 2,
		Sint8NV = 3,
		Sint16NV = 4,
		Sint32NV = 5,
		Sint64NV = 6,
		Uint8NV = 7,
		Uint16NV = 8,
		Uint32NV = 9,
		Uint64NV = 10,
	}

	[AllowDuplicates]
	public enum ScopeNV : Flags 
	{
		DeviceNV = 1,
		WorkgroupNV = 2,
		SubgroupNV = 3,
		QueueFamilyNV = 5,
	}

	[AllowDuplicates]
	public enum CoverageReductionModeNV : Flags 
	{
		MergeNV = 0,
		TruncateNV = 1,
	}

	[AllowDuplicates]
	public enum LineRasterizationModeEXT : Flags 
	{
		DefaultEXT = 0,
		RectangularEXT = 1,
		BresenhamEXT = 2,
		RectangularSmoothEXT = 3,
	}

	[AllowDuplicates]
	public enum IndirectCommandsTokenTypeNV : Flags 
	{
		ShaderGroupNV = 0,
		StateFlagsNV = 1,
		IndexBufferNV = 2,
		VertexBufferNV = 3,
		PushConstantNV = 4,
		DrawIndexedNV = 5,
		DrawNV = 6,
		DrawTasksNV = 7,
	}

	[AllowDuplicates]
	public enum IndirectStateFlagsNV : Flags 
	{
		FrontfaceBitNV = 0x00000001,
	}

	[AllowDuplicates]
	public enum IndirectCommandsLayoutUsageFlagsNV : Flags 
	{
		ExplicitPreprocessBitNV = 0x00000001,
		IndexedSequencesBitNV = 0x00000002,
		UnorderedSequencesBitNV = 0x00000004,
	}

	[AllowDuplicates]
	public enum DeviceDiagnosticsConfigFlagsNV : Flags 
	{
		EnableShaderDebugInfoBitNV = 0x00000001,
		EnableResourceTrackingBitNV = 0x00000002,
		EnableAutomaticCheckpointsBitNV = 0x00000004,
	}


}