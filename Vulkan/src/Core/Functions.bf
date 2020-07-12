using System;

namespace Vulkan 
{
	public static 
	{
		[LinkName("vkCreateInstance"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateInstance(InstanceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Instance* pInstance);

		[LinkName("vkDestroyInstance"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyInstance(Instance instance,AllocationCallbacks* pAllocator);

		[LinkName("vkEnumeratePhysicalDevices"), CallingConvention(.Stdcall)]
		public static extern Result vkEnumeratePhysicalDevices(Instance instance,uint32* pPhysicalDeviceCount,PhysicalDevice* pPhysicalDevices);

		[LinkName("vkGetPhysicalDeviceFeatures"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceFeatures(PhysicalDevice physicalDevice,PhysicalDeviceFeatures* pFeatures);

		[LinkName("vkGetPhysicalDeviceFormatProperties"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceFormatProperties(PhysicalDevice physicalDevice,Format format,FormatProperties* pFormatProperties);

		[LinkName("vkGetPhysicalDeviceImageFormatProperties"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceImageFormatProperties(PhysicalDevice physicalDevice,Format format,ImageType type,ImageTiling tiling,ImageUsageFlags usage,ImageCreateFlags flags,ImageFormatProperties* pImageFormatProperties);

		[LinkName("vkGetPhysicalDeviceProperties"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceProperties(PhysicalDevice physicalDevice,PhysicalDeviceProperties* pProperties);

		[LinkName("vkGetPhysicalDeviceQueueFamilyProperties"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceQueueFamilyProperties(PhysicalDevice physicalDevice,uint32* pQueueFamilyPropertyCount,QueueFamilyProperties* pQueueFamilyProperties);

		[LinkName("vkGetPhysicalDeviceMemoryProperties"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceMemoryProperties(PhysicalDevice physicalDevice,PhysicalDeviceMemoryProperties* pMemoryProperties);

		[LinkName("vkGetInstanceProcAddr"), CallingConvention(.Stdcall)]
		public static extern PFN_vkVoidFunction vkGetInstanceProcAddr(Instance instance,char8* pName);

		[LinkName("vkGetDeviceProcAddr"), CallingConvention(.Stdcall)]
		public static extern PFN_vkVoidFunction vkGetDeviceProcAddr(Device device,char8* pName);

		[LinkName("vkCreateDevice"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateDevice(PhysicalDevice physicalDevice,DeviceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Device* pDevice);

		[LinkName("vkDestroyDevice"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyDevice(Device device,AllocationCallbacks* pAllocator);

		[LinkName("vkEnumerateInstanceExtensionProperties"), CallingConvention(.Stdcall)]
		public static extern Result vkEnumerateInstanceExtensionProperties(char8* pLayerName,uint32* pPropertyCount,ExtensionProperties* pProperties);

		[LinkName("vkEnumerateDeviceExtensionProperties"), CallingConvention(.Stdcall)]
		public static extern Result vkEnumerateDeviceExtensionProperties(PhysicalDevice physicalDevice,char8* pLayerName,uint32* pPropertyCount,ExtensionProperties* pProperties);

		[LinkName("vkEnumerateInstanceLayerProperties"), CallingConvention(.Stdcall)]
		public static extern Result vkEnumerateInstanceLayerProperties(uint32* pPropertyCount,LayerProperties* pProperties);

		[LinkName("vkEnumerateDeviceLayerProperties"), CallingConvention(.Stdcall)]
		public static extern Result vkEnumerateDeviceLayerProperties(PhysicalDevice physicalDevice,uint32* pPropertyCount,LayerProperties* pProperties);

		[LinkName("vkGetDeviceQueue"), CallingConvention(.Stdcall)]
		public static extern void vkGetDeviceQueue(Device device,uint32 queueFamilyIndex,uint32 queueIndex,Queue* pQueue);

		[LinkName("vkQueueSubmit"), CallingConvention(.Stdcall)]
		public static extern Result vkQueueSubmit(Queue queue,uint32 submitCount,SubmitInfo* pSubmits,Fence fence);

		[LinkName("vkQueueWaitIdle"), CallingConvention(.Stdcall)]
		public static extern Result vkQueueWaitIdle(Queue queue);

		[LinkName("vkDeviceWaitIdle"), CallingConvention(.Stdcall)]
		public static extern Result vkDeviceWaitIdle(Device device);

		[LinkName("vkAllocateMemory"), CallingConvention(.Stdcall)]
		public static extern Result vkAllocateMemory(Device device,MemoryAllocateInfo* pAllocateInfo,AllocationCallbacks* pAllocator,DeviceMemory* pMemory);

		[LinkName("vkFreeMemory"), CallingConvention(.Stdcall)]
		public static extern void vkFreeMemory(Device device,DeviceMemory memory,AllocationCallbacks* pAllocator);

		[LinkName("vkMapMemory"), CallingConvention(.Stdcall)]
		public static extern Result vkMapMemory(Device device,DeviceMemory memory,DeviceSize offset,DeviceSize size,MemoryMapFlags flags,void** ppData);

		[LinkName("vkUnmapMemory"), CallingConvention(.Stdcall)]
		public static extern void vkUnmapMemory(Device device,DeviceMemory memory);

		[LinkName("vkFlushMappedMemoryRanges"), CallingConvention(.Stdcall)]
		public static extern Result vkFlushMappedMemoryRanges(Device device,uint32 memoryRangeCount,MappedMemoryRange* pMemoryRanges);

		[LinkName("vkInvalidateMappedMemoryRanges"), CallingConvention(.Stdcall)]
		public static extern Result vkInvalidateMappedMemoryRanges(Device device,uint32 memoryRangeCount,MappedMemoryRange* pMemoryRanges);

		[LinkName("vkGetDeviceMemoryCommitment"), CallingConvention(.Stdcall)]
		public static extern void vkGetDeviceMemoryCommitment(Device device,DeviceMemory memory,DeviceSize* pCommittedMemoryInBytes);

		[LinkName("vkBindBufferMemory"), CallingConvention(.Stdcall)]
		public static extern Result vkBindBufferMemory(Device device,Buffer buffer,DeviceMemory memory,DeviceSize memoryOffset);

		[LinkName("vkBindImageMemory"), CallingConvention(.Stdcall)]
		public static extern Result vkBindImageMemory(Device device,Image image,DeviceMemory memory,DeviceSize memoryOffset);

		[LinkName("vkGetBufferMemoryRequirements"), CallingConvention(.Stdcall)]
		public static extern void vkGetBufferMemoryRequirements(Device device,Buffer buffer,MemoryRequirements* pMemoryRequirements);

		[LinkName("vkGetImageMemoryRequirements"), CallingConvention(.Stdcall)]
		public static extern void vkGetImageMemoryRequirements(Device device,Image image,MemoryRequirements* pMemoryRequirements);

		[LinkName("vkGetImageSparseMemoryRequirements"), CallingConvention(.Stdcall)]
		public static extern void vkGetImageSparseMemoryRequirements(Device device,Image image,uint32* pSparseMemoryRequirementCount,SparseImageMemoryRequirements* pSparseMemoryRequirements);

		[LinkName("vkGetPhysicalDeviceSparseImageFormatProperties"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceSparseImageFormatProperties(PhysicalDevice physicalDevice,Format format,ImageType type,SampleCountFlags samples,ImageUsageFlags usage,ImageTiling tiling,uint32* pPropertyCount,SparseImageFormatProperties* pProperties);

		[LinkName("vkQueueBindSparse"), CallingConvention(.Stdcall)]
		public static extern Result vkQueueBindSparse(Queue queue,uint32 bindInfoCount,BindSparseInfo* pBindInfo,Fence fence);

		[LinkName("vkCreateFence"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateFence(Device device,FenceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Fence* pFence);

		[LinkName("vkDestroyFence"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyFence(Device device,Fence fence,AllocationCallbacks* pAllocator);

		[LinkName("vkResetFences"), CallingConvention(.Stdcall)]
		public static extern Result vkResetFences(Device device,uint32 fenceCount,Fence* pFences);

		[LinkName("vkGetFenceStatus"), CallingConvention(.Stdcall)]
		public static extern Result vkGetFenceStatus(Device device,Fence fence);

		[LinkName("vkWaitForFences"), CallingConvention(.Stdcall)]
		public static extern Result vkWaitForFences(Device device,uint32 fenceCount,Fence* pFences,Bool32 waitAll,uint64 timeout);

		[LinkName("vkCreateSemaphore"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateSemaphore(Device device,SemaphoreCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Semaphore* pSemaphore);

		[LinkName("vkDestroySemaphore"), CallingConvention(.Stdcall)]
		public static extern void vkDestroySemaphore(Device device,Semaphore semaphore,AllocationCallbacks* pAllocator);

		[LinkName("vkCreateEvent"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateEvent(Device device,EventCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Event* pEvent);

		[LinkName("vkDestroyEvent"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyEvent(Device device,Event event,AllocationCallbacks* pAllocator);

		[LinkName("vkGetEventStatus"), CallingConvention(.Stdcall)]
		public static extern Result vkGetEventStatus(Device device,Event event);

		[LinkName("vkSetEvent"), CallingConvention(.Stdcall)]
		public static extern Result vkSetEvent(Device device,Event event);

		[LinkName("vkResetEvent"), CallingConvention(.Stdcall)]
		public static extern Result vkResetEvent(Device device,Event event);

		[LinkName("vkCreateQueryPool"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateQueryPool(Device device,QueryPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,QueryPool* pQueryPool);

		[LinkName("vkDestroyQueryPool"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyQueryPool(Device device,QueryPool queryPool,AllocationCallbacks* pAllocator);

		[LinkName("vkGetQueryPoolResults"), CallingConvention(.Stdcall)]
		public static extern Result vkGetQueryPoolResults(Device device,QueryPool queryPool,uint32 firstQuery,uint32 queryCount,uint dataSize,void* pData,DeviceSize stride,QueryResultFlags flags);

		[LinkName("vkCreateBuffer"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateBuffer(Device device,BufferCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Buffer* pBuffer);

		[LinkName("vkDestroyBuffer"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyBuffer(Device device,Buffer buffer,AllocationCallbacks* pAllocator);

		[LinkName("vkCreateBufferView"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateBufferView(Device device,BufferViewCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,BufferView* pView);

		[LinkName("vkDestroyBufferView"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyBufferView(Device device,BufferView bufferView,AllocationCallbacks* pAllocator);

		[LinkName("vkCreateImage"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateImage(Device device,ImageCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Image* pImage);

		[LinkName("vkDestroyImage"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyImage(Device device,Image image,AllocationCallbacks* pAllocator);

		[LinkName("vkGetImageSubresourceLayout"), CallingConvention(.Stdcall)]
		public static extern void vkGetImageSubresourceLayout(Device device,Image image,ImageSubresource* pSubresource,SubresourceLayout* pLayout);

		[LinkName("vkCreateImageView"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateImageView(Device device,ImageViewCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,ImageView* pView);

		[LinkName("vkDestroyImageView"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyImageView(Device device,ImageView imageView,AllocationCallbacks* pAllocator);

		[LinkName("vkCreateShaderModule"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateShaderModule(Device device,ShaderModuleCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,ShaderModule* pShaderModule);

		[LinkName("vkDestroyShaderModule"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyShaderModule(Device device,ShaderModule shaderModule,AllocationCallbacks* pAllocator);

		[LinkName("vkCreatePipelineCache"), CallingConvention(.Stdcall)]
		public static extern Result vkCreatePipelineCache(Device device,PipelineCacheCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,PipelineCache* pPipelineCache);

		[LinkName("vkDestroyPipelineCache"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyPipelineCache(Device device,PipelineCache pipelineCache,AllocationCallbacks* pAllocator);

		[LinkName("vkGetPipelineCacheData"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPipelineCacheData(Device device,PipelineCache pipelineCache,uint* pDataSize,void* pData);

		[LinkName("vkMergePipelineCaches"), CallingConvention(.Stdcall)]
		public static extern Result vkMergePipelineCaches(Device device,PipelineCache dstCache,uint32 srcCacheCount,PipelineCache* pSrcCaches);

		[LinkName("vkCreateGraphicsPipelines"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateGraphicsPipelines(Device device,PipelineCache pipelineCache,uint32 createInfoCount,GraphicsPipelineCreateInfo* pCreateInfos,AllocationCallbacks* pAllocator,Pipeline* pPipelines);

		[LinkName("vkCreateComputePipelines"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateComputePipelines(Device device,PipelineCache pipelineCache,uint32 createInfoCount,ComputePipelineCreateInfo* pCreateInfos,AllocationCallbacks* pAllocator,Pipeline* pPipelines);

		[LinkName("vkDestroyPipeline"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyPipeline(Device device,Pipeline pipeline,AllocationCallbacks* pAllocator);

		[LinkName("vkCreatePipelineLayout"), CallingConvention(.Stdcall)]
		public static extern Result vkCreatePipelineLayout(Device device,PipelineLayoutCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,PipelineLayout* pPipelineLayout);

		[LinkName("vkDestroyPipelineLayout"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyPipelineLayout(Device device,PipelineLayout pipelineLayout,AllocationCallbacks* pAllocator);

		[LinkName("vkCreateSampler"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateSampler(Device device,SamplerCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Sampler* pSampler);

		[LinkName("vkDestroySampler"), CallingConvention(.Stdcall)]
		public static extern void vkDestroySampler(Device device,Sampler sampler,AllocationCallbacks* pAllocator);

		[LinkName("vkCreateDescriptorSetLayout"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateDescriptorSetLayout(Device device,DescriptorSetLayoutCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorSetLayout* pSetLayout);

		[LinkName("vkDestroyDescriptorSetLayout"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyDescriptorSetLayout(Device device,DescriptorSetLayout descriptorSetLayout,AllocationCallbacks* pAllocator);

		[LinkName("vkCreateDescriptorPool"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateDescriptorPool(Device device,DescriptorPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorPool* pDescriptorPool);

		[LinkName("vkDestroyDescriptorPool"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyDescriptorPool(Device device,DescriptorPool descriptorPool,AllocationCallbacks* pAllocator);

		[LinkName("vkResetDescriptorPool"), CallingConvention(.Stdcall)]
		public static extern Result vkResetDescriptorPool(Device device,DescriptorPool descriptorPool,DescriptorPoolResetFlags flags);

		[LinkName("vkAllocateDescriptorSets"), CallingConvention(.Stdcall)]
		public static extern Result vkAllocateDescriptorSets(Device device,DescriptorSetAllocateInfo* pAllocateInfo,DescriptorSet* pDescriptorSets);

		[LinkName("vkFreeDescriptorSets"), CallingConvention(.Stdcall)]
		public static extern Result vkFreeDescriptorSets(Device device,DescriptorPool descriptorPool,uint32 descriptorSetCount,DescriptorSet* pDescriptorSets);

		[LinkName("vkUpdateDescriptorSets"), CallingConvention(.Stdcall)]
		public static extern void vkUpdateDescriptorSets(Device device,uint32 descriptorWriteCount,WriteDescriptorSet* pDescriptorWrites,uint32 descriptorCopyCount,CopyDescriptorSet* pDescriptorCopies);

		[LinkName("vkCreateFramebuffer"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateFramebuffer(Device device,FramebufferCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Framebuffer* pFramebuffer);

		[LinkName("vkDestroyFramebuffer"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyFramebuffer(Device device,Framebuffer framebuffer,AllocationCallbacks* pAllocator);

		[LinkName("vkCreateRenderPass"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateRenderPass(Device device,RenderPassCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,RenderPass* pRenderPass);

		[LinkName("vkDestroyRenderPass"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyRenderPass(Device device,RenderPass renderPass,AllocationCallbacks* pAllocator);

		[LinkName("vkGetRenderAreaGranularity"), CallingConvention(.Stdcall)]
		public static extern void vkGetRenderAreaGranularity(Device device,RenderPass renderPass,Extent2D* pGranularity);

		[LinkName("vkCreateCommandPool"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateCommandPool(Device device,CommandPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,CommandPool* pCommandPool);

		[LinkName("vkDestroyCommandPool"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyCommandPool(Device device,CommandPool commandPool,AllocationCallbacks* pAllocator);

		[LinkName("vkResetCommandPool"), CallingConvention(.Stdcall)]
		public static extern Result vkResetCommandPool(Device device,CommandPool commandPool,CommandPoolResetFlags flags);

		[LinkName("vkAllocateCommandBuffers"), CallingConvention(.Stdcall)]
		public static extern Result vkAllocateCommandBuffers(Device device,CommandBufferAllocateInfo* pAllocateInfo,CommandBuffer* pCommandBuffers);

		[LinkName("vkFreeCommandBuffers"), CallingConvention(.Stdcall)]
		public static extern void vkFreeCommandBuffers(Device device,CommandPool commandPool,uint32 commandBufferCount,CommandBuffer* pCommandBuffers);

		[LinkName("vkBeginCommandBuffer"), CallingConvention(.Stdcall)]
		public static extern Result vkBeginCommandBuffer(CommandBuffer commandBuffer,CommandBufferBeginInfo* pBeginInfo);

		[LinkName("vkEndCommandBuffer"), CallingConvention(.Stdcall)]
		public static extern Result vkEndCommandBuffer(CommandBuffer commandBuffer);

		[LinkName("vkResetCommandBuffer"), CallingConvention(.Stdcall)]
		public static extern Result vkResetCommandBuffer(CommandBuffer commandBuffer,CommandBufferResetFlags flags);

		[LinkName("vkCmdBindPipeline"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBindPipeline(CommandBuffer commandBuffer,PipelineBindPoint pipelineBindPoint,Pipeline pipeline);

		[LinkName("vkCmdSetViewport"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetViewport(CommandBuffer commandBuffer,uint32 firstViewport,uint32 viewportCount,Viewport* pViewports);

		[LinkName("vkCmdSetScissor"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetScissor(CommandBuffer commandBuffer,uint32 firstScissor,uint32 scissorCount,Rect2D* pScissors);

		[LinkName("vkCmdSetLineWidth"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetLineWidth(CommandBuffer commandBuffer,float lineWidth);

		[LinkName("vkCmdSetDepthBias"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetDepthBias(CommandBuffer commandBuffer,float depthBiasConstantFactor,float depthBiasClamp,float depthBiasSlopeFactor);

		[LinkName("vkCmdSetBlendConstants"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetBlendConstants(CommandBuffer commandBuffer,float blendConstants);

		[LinkName("vkCmdSetDepthBounds"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetDepthBounds(CommandBuffer commandBuffer,float minDepthBounds,float maxDepthBounds);

		[LinkName("vkCmdSetStencilCompareMask"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetStencilCompareMask(CommandBuffer commandBuffer,StencilFaceFlags faceMask,uint32 compareMask);

		[LinkName("vkCmdSetStencilWriteMask"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetStencilWriteMask(CommandBuffer commandBuffer,StencilFaceFlags faceMask,uint32 writeMask);

		[LinkName("vkCmdSetStencilReference"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetStencilReference(CommandBuffer commandBuffer,StencilFaceFlags faceMask,uint32 reference);

		[LinkName("vkCmdBindDescriptorSets"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBindDescriptorSets(CommandBuffer commandBuffer,PipelineBindPoint pipelineBindPoint,PipelineLayout layout,uint32 firstSet,uint32 descriptorSetCount,DescriptorSet* pDescriptorSets,uint32 dynamicOffsetCount,uint32* pDynamicOffsets);

		[LinkName("vkCmdBindIndexBuffer"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBindIndexBuffer(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,IndexType indexType);

		[LinkName("vkCmdBindVertexBuffers"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBindVertexBuffers(CommandBuffer commandBuffer,uint32 firstBinding,uint32 bindingCount,Buffer* pBuffers,DeviceSize* pOffsets);

		[LinkName("vkCmdDraw"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDraw(CommandBuffer commandBuffer,uint32 vertexCount,uint32 instanceCount,uint32 firstVertex,uint32 firstInstance);

		[LinkName("vkCmdDrawIndexed"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawIndexed(CommandBuffer commandBuffer,uint32 indexCount,uint32 instanceCount,uint32 firstIndex,int32 vertexOffset,uint32 firstInstance);

		[LinkName("vkCmdDrawIndirect"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawIndirect(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,uint32 drawCount,uint32 stride);

		[LinkName("vkCmdDrawIndexedIndirect"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawIndexedIndirect(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,uint32 drawCount,uint32 stride);

		[LinkName("vkCmdDispatch"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDispatch(CommandBuffer commandBuffer,uint32 groupCountX,uint32 groupCountY,uint32 groupCountZ);

		[LinkName("vkCmdDispatchIndirect"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDispatchIndirect(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset);

		[LinkName("vkCmdCopyBuffer"), CallingConvention(.Stdcall)]
		public static extern void vkCmdCopyBuffer(CommandBuffer commandBuffer,Buffer srcBuffer,Buffer dstBuffer,uint32 regionCount,BufferCopy* pRegions);

		[LinkName("vkCmdCopyImage"), CallingConvention(.Stdcall)]
		public static extern void vkCmdCopyImage(CommandBuffer commandBuffer,Image srcImage,ImageLayout srcImageLayout,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,ImageCopy* pRegions);

		[LinkName("vkCmdBlitImage"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBlitImage(CommandBuffer commandBuffer,Image srcImage,ImageLayout srcImageLayout,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,ImageBlit* pRegions,Filter filter);

		[LinkName("vkCmdCopyBufferToImage"), CallingConvention(.Stdcall)]
		public static extern void vkCmdCopyBufferToImage(CommandBuffer commandBuffer,Buffer srcBuffer,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,BufferImageCopy* pRegions);

		[LinkName("vkCmdCopyImageToBuffer"), CallingConvention(.Stdcall)]
		public static extern void vkCmdCopyImageToBuffer(CommandBuffer commandBuffer,Image srcImage,ImageLayout srcImageLayout,Buffer dstBuffer,uint32 regionCount,BufferImageCopy* pRegions);

		[LinkName("vkCmdUpdateBuffer"), CallingConvention(.Stdcall)]
		public static extern void vkCmdUpdateBuffer(CommandBuffer commandBuffer,Buffer dstBuffer,DeviceSize dstOffset,DeviceSize dataSize,void* pData);

		[LinkName("vkCmdFillBuffer"), CallingConvention(.Stdcall)]
		public static extern void vkCmdFillBuffer(CommandBuffer commandBuffer,Buffer dstBuffer,DeviceSize dstOffset,DeviceSize size,uint32 data);

		[LinkName("vkCmdClearColorImage"), CallingConvention(.Stdcall)]
		public static extern void vkCmdClearColorImage(CommandBuffer commandBuffer,Image image,ImageLayout imageLayout,ClearColorValue* pColor,uint32 rangeCount,ImageSubresourceRange* pRanges);

		[LinkName("vkCmdClearDepthStencilImage"), CallingConvention(.Stdcall)]
		public static extern void vkCmdClearDepthStencilImage(CommandBuffer commandBuffer,Image image,ImageLayout imageLayout,ClearDepthStencilValue* pDepthStencil,uint32 rangeCount,ImageSubresourceRange* pRanges);

		[LinkName("vkCmdClearAttachments"), CallingConvention(.Stdcall)]
		public static extern void vkCmdClearAttachments(CommandBuffer commandBuffer,uint32 attachmentCount,ClearAttachment* pAttachments,uint32 rectCount,ClearRect* pRects);

		[LinkName("vkCmdResolveImage"), CallingConvention(.Stdcall)]
		public static extern void vkCmdResolveImage(CommandBuffer commandBuffer,Image srcImage,ImageLayout srcImageLayout,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,ImageResolve* pRegions);

		[LinkName("vkCmdSetEvent"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetEvent(CommandBuffer commandBuffer,Event event,PipelineStageFlags stageMask);

		[LinkName("vkCmdResetEvent"), CallingConvention(.Stdcall)]
		public static extern void vkCmdResetEvent(CommandBuffer commandBuffer,Event event,PipelineStageFlags stageMask);

		[LinkName("vkCmdWaitEvents"), CallingConvention(.Stdcall)]
		public static extern void vkCmdWaitEvents(CommandBuffer commandBuffer,uint32 eventCount,Event* pEvents,PipelineStageFlags srcStageMask,PipelineStageFlags dstStageMask,uint32 memoryBarrierCount,MemoryBarrier* pMemoryBarriers,uint32 bufferMemoryBarrierCount,BufferMemoryBarrier* pBufferMemoryBarriers,uint32 imageMemoryBarrierCount,ImageMemoryBarrier* pImageMemoryBarriers);

		[LinkName("vkCmdPipelineBarrier"), CallingConvention(.Stdcall)]
		public static extern void vkCmdPipelineBarrier(CommandBuffer commandBuffer,PipelineStageFlags srcStageMask,PipelineStageFlags dstStageMask,DependencyFlags dependencyFlags,uint32 memoryBarrierCount,MemoryBarrier* pMemoryBarriers,uint32 bufferMemoryBarrierCount,BufferMemoryBarrier* pBufferMemoryBarriers,uint32 imageMemoryBarrierCount,ImageMemoryBarrier* pImageMemoryBarriers);

		[LinkName("vkCmdBeginQuery"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBeginQuery(CommandBuffer commandBuffer,QueryPool queryPool,uint32 query,QueryControlFlags flags);

		[LinkName("vkCmdEndQuery"), CallingConvention(.Stdcall)]
		public static extern void vkCmdEndQuery(CommandBuffer commandBuffer,QueryPool queryPool,uint32 query);

		[LinkName("vkCmdResetQueryPool"), CallingConvention(.Stdcall)]
		public static extern void vkCmdResetQueryPool(CommandBuffer commandBuffer,QueryPool queryPool,uint32 firstQuery,uint32 queryCount);

		[LinkName("vkCmdWriteTimestamp"), CallingConvention(.Stdcall)]
		public static extern void vkCmdWriteTimestamp(CommandBuffer commandBuffer,PipelineStageFlags pipelineStage,QueryPool queryPool,uint32 query);

		[LinkName("vkCmdCopyQueryPoolResults"), CallingConvention(.Stdcall)]
		public static extern void vkCmdCopyQueryPoolResults(CommandBuffer commandBuffer,QueryPool queryPool,uint32 firstQuery,uint32 queryCount,Buffer dstBuffer,DeviceSize dstOffset,DeviceSize stride,QueryResultFlags flags);

		[LinkName("vkCmdPushConstants"), CallingConvention(.Stdcall)]
		public static extern void vkCmdPushConstants(CommandBuffer commandBuffer,PipelineLayout layout,ShaderStageFlags stageFlags,uint32 offset,uint32 size,void* pValues);

		[LinkName("vkCmdBeginRenderPass"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBeginRenderPass(CommandBuffer commandBuffer,RenderPassBeginInfo* pRenderPassBegin,SubpassContents contents);

		[LinkName("vkCmdNextSubpass"), CallingConvention(.Stdcall)]
		public static extern void vkCmdNextSubpass(CommandBuffer commandBuffer,SubpassContents contents);

		[LinkName("vkCmdEndRenderPass"), CallingConvention(.Stdcall)]
		public static extern void vkCmdEndRenderPass(CommandBuffer commandBuffer);

		[LinkName("vkCmdExecuteCommands"), CallingConvention(.Stdcall)]
		public static extern void vkCmdExecuteCommands(CommandBuffer commandBuffer,uint32 commandBufferCount,CommandBuffer* pCommandBuffers);

		[LinkName("vkEnumerateInstanceVersion"), CallingConvention(.Stdcall)]
		public static extern Result vkEnumerateInstanceVersion(uint32* pApiVersion);

		[LinkName("vkBindBufferMemory2"), CallingConvention(.Stdcall)]
		public static extern Result vkBindBufferMemory2(Device device,uint32 bindInfoCount,BindBufferMemoryInfo* pBindInfos);

		[LinkName("vkBindImageMemory2"), CallingConvention(.Stdcall)]
		public static extern Result vkBindImageMemory2(Device device,uint32 bindInfoCount,BindImageMemoryInfo* pBindInfos);

		[LinkName("vkGetDeviceGroupPeerMemoryFeatures"), CallingConvention(.Stdcall)]
		public static extern void vkGetDeviceGroupPeerMemoryFeatures(Device device,uint32 heapIndex,uint32 localDeviceIndex,uint32 remoteDeviceIndex,PeerMemoryFeatureFlags* pPeerMemoryFeatures);

		[LinkName("vkCmdSetDeviceMask"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetDeviceMask(CommandBuffer commandBuffer,uint32 deviceMask);

		[LinkName("vkCmdDispatchBase"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDispatchBase(CommandBuffer commandBuffer,uint32 baseGroupX,uint32 baseGroupY,uint32 baseGroupZ,uint32 groupCountX,uint32 groupCountY,uint32 groupCountZ);

		[LinkName("vkEnumeratePhysicalDeviceGroups"), CallingConvention(.Stdcall)]
		public static extern Result vkEnumeratePhysicalDeviceGroups(Instance instance,uint32* pPhysicalDeviceGroupCount,PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties);

		[LinkName("vkGetImageMemoryRequirements2"), CallingConvention(.Stdcall)]
		public static extern void vkGetImageMemoryRequirements2(Device device,ImageMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements);

		[LinkName("vkGetBufferMemoryRequirements2"), CallingConvention(.Stdcall)]
		public static extern void vkGetBufferMemoryRequirements2(Device device,BufferMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements);

		[LinkName("vkGetImageSparseMemoryRequirements2"), CallingConvention(.Stdcall)]
		public static extern void vkGetImageSparseMemoryRequirements2(Device device,ImageSparseMemoryRequirementsInfo2* pInfo,uint32* pSparseMemoryRequirementCount,SparseImageMemoryRequirements2* pSparseMemoryRequirements);

		[LinkName("vkGetPhysicalDeviceFeatures2"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceFeatures2(PhysicalDevice physicalDevice,PhysicalDeviceFeatures2* pFeatures);

		[LinkName("vkGetPhysicalDeviceProperties2"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceProperties2(PhysicalDevice physicalDevice,PhysicalDeviceProperties2* pProperties);

		[LinkName("vkGetPhysicalDeviceFormatProperties2"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceFormatProperties2(PhysicalDevice physicalDevice,Format format,FormatProperties2* pFormatProperties);

		[LinkName("vkGetPhysicalDeviceImageFormatProperties2"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceImageFormatProperties2(PhysicalDevice physicalDevice,PhysicalDeviceImageFormatInfo2* pImageFormatInfo,ImageFormatProperties2* pImageFormatProperties);

		[LinkName("vkGetPhysicalDeviceQueueFamilyProperties2"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceQueueFamilyProperties2(PhysicalDevice physicalDevice,uint32* pQueueFamilyPropertyCount,QueueFamilyProperties2* pQueueFamilyProperties);

		[LinkName("vkGetPhysicalDeviceMemoryProperties2"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceMemoryProperties2(PhysicalDevice physicalDevice,PhysicalDeviceMemoryProperties2* pMemoryProperties);

		[LinkName("vkGetPhysicalDeviceSparseImageFormatProperties2"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceSparseImageFormatProperties2(PhysicalDevice physicalDevice,PhysicalDeviceSparseImageFormatInfo2* pFormatInfo,uint32* pPropertyCount,SparseImageFormatProperties2* pProperties);

		[LinkName("vkTrimCommandPool"), CallingConvention(.Stdcall)]
		public static extern void vkTrimCommandPool(Device device,CommandPool commandPool,CommandPoolTrimFlags flags);

		[LinkName("vkGetDeviceQueue2"), CallingConvention(.Stdcall)]
		public static extern void vkGetDeviceQueue2(Device device,DeviceQueueInfo2* pQueueInfo,Queue* pQueue);

		[LinkName("vkCreateSamplerYcbcrConversion"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateSamplerYcbcrConversion(Device device,SamplerYcbcrConversionCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,SamplerYcbcrConversion* pYcbcrConversion);

		[LinkName("vkDestroySamplerYcbcrConversion"), CallingConvention(.Stdcall)]
		public static extern void vkDestroySamplerYcbcrConversion(Device device,SamplerYcbcrConversion ycbcrConversion,AllocationCallbacks* pAllocator);

		[LinkName("vkCreateDescriptorUpdateTemplate"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateDescriptorUpdateTemplate(Device device,DescriptorUpdateTemplateCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorUpdateTemplate* pDescriptorUpdateTemplate);

		[LinkName("vkDestroyDescriptorUpdateTemplate"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyDescriptorUpdateTemplate(Device device,DescriptorUpdateTemplate descriptorUpdateTemplate,AllocationCallbacks* pAllocator);

		[LinkName("vkUpdateDescriptorSetWithTemplate"), CallingConvention(.Stdcall)]
		public static extern void vkUpdateDescriptorSetWithTemplate(Device device,DescriptorSet descriptorSet,DescriptorUpdateTemplate descriptorUpdateTemplate,void* pData);

		[LinkName("vkGetPhysicalDeviceExternalBufferProperties"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceExternalBufferProperties(PhysicalDevice physicalDevice,PhysicalDeviceExternalBufferInfo* pExternalBufferInfo,ExternalBufferProperties* pExternalBufferProperties);

		[LinkName("vkGetPhysicalDeviceExternalFenceProperties"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceExternalFenceProperties(PhysicalDevice physicalDevice,PhysicalDeviceExternalFenceInfo* pExternalFenceInfo,ExternalFenceProperties* pExternalFenceProperties);

		[LinkName("vkGetPhysicalDeviceExternalSemaphoreProperties"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceExternalSemaphoreProperties(PhysicalDevice physicalDevice,PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo,ExternalSemaphoreProperties* pExternalSemaphoreProperties);

		[LinkName("vkGetDescriptorSetLayoutSupport"), CallingConvention(.Stdcall)]
		public static extern void vkGetDescriptorSetLayoutSupport(Device device,DescriptorSetLayoutCreateInfo* pCreateInfo,DescriptorSetLayoutSupport* pSupport);

		[LinkName("vkCmdDrawIndirectCount"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawIndirectCount(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[LinkName("vkCmdDrawIndexedIndirectCount"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawIndexedIndirectCount(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[LinkName("vkCreateRenderPass2"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateRenderPass2(Device device,RenderPassCreateInfo2* pCreateInfo,AllocationCallbacks* pAllocator,RenderPass* pRenderPass);

		[LinkName("vkCmdBeginRenderPass2"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBeginRenderPass2(CommandBuffer commandBuffer,RenderPassBeginInfo* pRenderPassBegin,SubpassBeginInfo* pSubpassBeginInfo);

		[LinkName("vkCmdNextSubpass2"), CallingConvention(.Stdcall)]
		public static extern void vkCmdNextSubpass2(CommandBuffer commandBuffer,SubpassBeginInfo* pSubpassBeginInfo,SubpassEndInfo* pSubpassEndInfo);

		[LinkName("vkCmdEndRenderPass2"), CallingConvention(.Stdcall)]
		public static extern void vkCmdEndRenderPass2(CommandBuffer commandBuffer,SubpassEndInfo* pSubpassEndInfo);

		[LinkName("vkResetQueryPool"), CallingConvention(.Stdcall)]
		public static extern void vkResetQueryPool(Device device,QueryPool queryPool,uint32 firstQuery,uint32 queryCount);

		[LinkName("vkGetSemaphoreCounterValue"), CallingConvention(.Stdcall)]
		public static extern Result vkGetSemaphoreCounterValue(Device device,Semaphore semaphore,uint64* pValue);

		[LinkName("vkWaitSemaphores"), CallingConvention(.Stdcall)]
		public static extern Result vkWaitSemaphores(Device device,SemaphoreWaitInfo* pWaitInfo,uint64 timeout);

		[LinkName("vkSignalSemaphore"), CallingConvention(.Stdcall)]
		public static extern Result vkSignalSemaphore(Device device,SemaphoreSignalInfo* pSignalInfo);

		[LinkName("vkGetBufferDeviceAddress"), CallingConvention(.Stdcall)]
		public static extern DeviceAddress vkGetBufferDeviceAddress(Device device,BufferDeviceAddressInfo* pInfo);

		[LinkName("vkGetBufferOpaqueCaptureAddress"), CallingConvention(.Stdcall)]
		public static extern uint64 vkGetBufferOpaqueCaptureAddress(Device device,BufferDeviceAddressInfo* pInfo);

		[LinkName("vkGetDeviceMemoryOpaqueCaptureAddress"), CallingConvention(.Stdcall)]
		public static extern uint64 vkGetDeviceMemoryOpaqueCaptureAddress(Device device,DeviceMemoryOpaqueCaptureAddressInfo* pInfo);

		[LinkName("vkDestroySurfaceKHR"), CallingConvention(.Stdcall)]
		public static extern void vkDestroySurfaceKHR(Instance instance,SurfaceKHR surface,AllocationCallbacks* pAllocator);

		[LinkName("vkGetPhysicalDeviceSurfaceSupportKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceSurfaceSupportKHR(PhysicalDevice physicalDevice,uint32 queueFamilyIndex,SurfaceKHR surface,Bool32* pSupported);

		[LinkName("vkGetPhysicalDeviceSurfaceCapabilitiesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceSurfaceCapabilitiesKHR(PhysicalDevice physicalDevice,SurfaceKHR surface,SurfaceCapabilitiesKHR* pSurfaceCapabilities);

		[LinkName("vkGetPhysicalDeviceSurfaceFormatsKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceSurfaceFormatsKHR(PhysicalDevice physicalDevice,SurfaceKHR surface,uint32* pSurfaceFormatCount,SurfaceFormatKHR* pSurfaceFormats);

		[LinkName("vkGetPhysicalDeviceSurfacePresentModesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceSurfacePresentModesKHR(PhysicalDevice physicalDevice,SurfaceKHR surface,uint32* pPresentModeCount,PresentModeKHR* pPresentModes);

		[LinkName("vkCreateSwapchainKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateSwapchainKHR(Device device,SwapchainCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,SwapchainKHR* pSwapchain);

		[LinkName("vkDestroySwapchainKHR"), CallingConvention(.Stdcall)]
		public static extern void vkDestroySwapchainKHR(Device device,SwapchainKHR swapchain,AllocationCallbacks* pAllocator);

		[LinkName("vkGetSwapchainImagesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetSwapchainImagesKHR(Device device,SwapchainKHR swapchain,uint32* pSwapchainImageCount,Image* pSwapchainImages);

		[LinkName("vkAcquireNextImageKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkAcquireNextImageKHR(Device device,SwapchainKHR swapchain,uint64 timeout,Semaphore semaphore,Fence fence,uint32* pImageIndex);

		[LinkName("vkQueuePresentKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkQueuePresentKHR(Queue queue,PresentInfoKHR* pPresentInfo);

		[LinkName("vkGetDeviceGroupPresentCapabilitiesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetDeviceGroupPresentCapabilitiesKHR(Device device,DeviceGroupPresentCapabilitiesKHR* pDeviceGroupPresentCapabilities);

		[LinkName("vkGetDeviceGroupSurfacePresentModesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetDeviceGroupSurfacePresentModesKHR(Device device,SurfaceKHR surface,DeviceGroupPresentModeFlagsKHR* pModes);

		[LinkName("vkGetPhysicalDevicePresentRectanglesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDevicePresentRectanglesKHR(PhysicalDevice physicalDevice,SurfaceKHR surface,uint32* pRectCount,Rect2D* pRects);

		[LinkName("vkAcquireNextImage2KHR"), CallingConvention(.Stdcall)]
		public static extern Result vkAcquireNextImage2KHR(Device device,AcquireNextImageInfoKHR* pAcquireInfo,uint32* pImageIndex);

		[LinkName("vkGetPhysicalDeviceDisplayPropertiesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceDisplayPropertiesKHR(PhysicalDevice physicalDevice,uint32* pPropertyCount,DisplayPropertiesKHR* pProperties);

		[LinkName("vkGetPhysicalDeviceDisplayPlanePropertiesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceDisplayPlanePropertiesKHR(PhysicalDevice physicalDevice,uint32* pPropertyCount,DisplayPlanePropertiesKHR* pProperties);

		[LinkName("vkGetDisplayPlaneSupportedDisplaysKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetDisplayPlaneSupportedDisplaysKHR(PhysicalDevice physicalDevice,uint32 planeIndex,uint32* pDisplayCount,DisplayKHR* pDisplays);

		[LinkName("vkGetDisplayModePropertiesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetDisplayModePropertiesKHR(PhysicalDevice physicalDevice,DisplayKHR display,uint32* pPropertyCount,DisplayModePropertiesKHR* pProperties);

		[LinkName("vkCreateDisplayModeKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateDisplayModeKHR(PhysicalDevice physicalDevice,DisplayKHR display,DisplayModeCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,DisplayModeKHR* pMode);

		[LinkName("vkGetDisplayPlaneCapabilitiesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetDisplayPlaneCapabilitiesKHR(PhysicalDevice physicalDevice,DisplayModeKHR mode,uint32 planeIndex,DisplayPlaneCapabilitiesKHR* pCapabilities);

		[LinkName("vkCreateDisplayPlaneSurfaceKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateDisplayPlaneSurfaceKHR(Instance instance,DisplaySurfaceCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,SurfaceKHR* pSurface);

		[LinkName("vkCreateSharedSwapchainsKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateSharedSwapchainsKHR(Device device,uint32 swapchainCount,SwapchainCreateInfoKHR* pCreateInfos,AllocationCallbacks* pAllocator,SwapchainKHR* pSwapchains);

		[LinkName("vkGetPhysicalDeviceFeatures2KHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceFeatures2KHR(PhysicalDevice physicalDevice,PhysicalDeviceFeatures2* pFeatures);

		[LinkName("vkGetPhysicalDeviceProperties2KHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceProperties2KHR(PhysicalDevice physicalDevice,PhysicalDeviceProperties2* pProperties);

		[LinkName("vkGetPhysicalDeviceFormatProperties2KHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceFormatProperties2KHR(PhysicalDevice physicalDevice,Format format,FormatProperties2* pFormatProperties);

		[LinkName("vkGetPhysicalDeviceImageFormatProperties2KHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceImageFormatProperties2KHR(PhysicalDevice physicalDevice,PhysicalDeviceImageFormatInfo2* pImageFormatInfo,ImageFormatProperties2* pImageFormatProperties);

		[LinkName("vkGetPhysicalDeviceQueueFamilyProperties2KHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceQueueFamilyProperties2KHR(PhysicalDevice physicalDevice,uint32* pQueueFamilyPropertyCount,QueueFamilyProperties2* pQueueFamilyProperties);

		[LinkName("vkGetPhysicalDeviceMemoryProperties2KHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceMemoryProperties2KHR(PhysicalDevice physicalDevice,PhysicalDeviceMemoryProperties2* pMemoryProperties);

		[LinkName("vkGetPhysicalDeviceSparseImageFormatProperties2KHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceSparseImageFormatProperties2KHR(PhysicalDevice physicalDevice,PhysicalDeviceSparseImageFormatInfo2* pFormatInfo,uint32* pPropertyCount,SparseImageFormatProperties2* pProperties);

		[LinkName("vkGetDeviceGroupPeerMemoryFeaturesKHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetDeviceGroupPeerMemoryFeaturesKHR(Device device,uint32 heapIndex,uint32 localDeviceIndex,uint32 remoteDeviceIndex,PeerMemoryFeatureFlags* pPeerMemoryFeatures);

		[LinkName("vkCmdSetDeviceMaskKHR"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetDeviceMaskKHR(CommandBuffer commandBuffer,uint32 deviceMask);

		[LinkName("vkCmdDispatchBaseKHR"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDispatchBaseKHR(CommandBuffer commandBuffer,uint32 baseGroupX,uint32 baseGroupY,uint32 baseGroupZ,uint32 groupCountX,uint32 groupCountY,uint32 groupCountZ);

		[LinkName("vkTrimCommandPoolKHR"), CallingConvention(.Stdcall)]
		public static extern void vkTrimCommandPoolKHR(Device device,CommandPool commandPool,CommandPoolTrimFlags flags);

		[LinkName("vkEnumeratePhysicalDeviceGroupsKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkEnumeratePhysicalDeviceGroupsKHR(Instance instance,uint32* pPhysicalDeviceGroupCount,PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties);

		[LinkName("vkGetPhysicalDeviceExternalBufferPropertiesKHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceExternalBufferPropertiesKHR(PhysicalDevice physicalDevice,PhysicalDeviceExternalBufferInfo* pExternalBufferInfo,ExternalBufferProperties* pExternalBufferProperties);

		[LinkName("vkGetMemoryFdKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetMemoryFdKHR(Device device,MemoryGetFdInfoKHR* pGetFdInfo,int* pFd);

		[LinkName("vkGetMemoryFdPropertiesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetMemoryFdPropertiesKHR(Device device,ExternalMemoryHandleTypeFlags handleType,int fd,MemoryFdPropertiesKHR* pMemoryFdProperties);

		[LinkName("vkGetPhysicalDeviceExternalSemaphorePropertiesKHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceExternalSemaphorePropertiesKHR(PhysicalDevice physicalDevice,PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo,ExternalSemaphoreProperties* pExternalSemaphoreProperties);

		[LinkName("vkImportSemaphoreFdKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkImportSemaphoreFdKHR(Device device,ImportSemaphoreFdInfoKHR* pImportSemaphoreFdInfo);

		[LinkName("vkGetSemaphoreFdKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetSemaphoreFdKHR(Device device,SemaphoreGetFdInfoKHR* pGetFdInfo,int* pFd);

		[LinkName("vkCmdPushDescriptorSetKHR"), CallingConvention(.Stdcall)]
		public static extern void vkCmdPushDescriptorSetKHR(CommandBuffer commandBuffer,PipelineBindPoint pipelineBindPoint,PipelineLayout layout,uint32 set,uint32 descriptorWriteCount,WriteDescriptorSet* pDescriptorWrites);

		[LinkName("vkCmdPushDescriptorSetWithTemplateKHR"), CallingConvention(.Stdcall)]
		public static extern void vkCmdPushDescriptorSetWithTemplateKHR(CommandBuffer commandBuffer,DescriptorUpdateTemplate descriptorUpdateTemplate,PipelineLayout layout,uint32 set,void* pData);

		[LinkName("vkCreateDescriptorUpdateTemplateKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateDescriptorUpdateTemplateKHR(Device device,DescriptorUpdateTemplateCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorUpdateTemplate* pDescriptorUpdateTemplate);

		[LinkName("vkDestroyDescriptorUpdateTemplateKHR"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyDescriptorUpdateTemplateKHR(Device device,DescriptorUpdateTemplate descriptorUpdateTemplate,AllocationCallbacks* pAllocator);

		[LinkName("vkUpdateDescriptorSetWithTemplateKHR"), CallingConvention(.Stdcall)]
		public static extern void vkUpdateDescriptorSetWithTemplateKHR(Device device,DescriptorSet descriptorSet,DescriptorUpdateTemplate descriptorUpdateTemplate,void* pData);

		[LinkName("vkCreateRenderPass2KHR"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateRenderPass2KHR(Device device,RenderPassCreateInfo2* pCreateInfo,AllocationCallbacks* pAllocator,RenderPass* pRenderPass);

		[LinkName("vkCmdBeginRenderPass2KHR"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBeginRenderPass2KHR(CommandBuffer commandBuffer,RenderPassBeginInfo* pRenderPassBegin,SubpassBeginInfo* pSubpassBeginInfo);

		[LinkName("vkCmdNextSubpass2KHR"), CallingConvention(.Stdcall)]
		public static extern void vkCmdNextSubpass2KHR(CommandBuffer commandBuffer,SubpassBeginInfo* pSubpassBeginInfo,SubpassEndInfo* pSubpassEndInfo);

		[LinkName("vkCmdEndRenderPass2KHR"), CallingConvention(.Stdcall)]
		public static extern void vkCmdEndRenderPass2KHR(CommandBuffer commandBuffer,SubpassEndInfo* pSubpassEndInfo);

		[LinkName("vkGetSwapchainStatusKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetSwapchainStatusKHR(Device device,SwapchainKHR swapchain);

		[LinkName("vkGetPhysicalDeviceExternalFencePropertiesKHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceExternalFencePropertiesKHR(PhysicalDevice physicalDevice,PhysicalDeviceExternalFenceInfo* pExternalFenceInfo,ExternalFenceProperties* pExternalFenceProperties);

		[LinkName("vkImportFenceFdKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkImportFenceFdKHR(Device device,ImportFenceFdInfoKHR* pImportFenceFdInfo);

		[LinkName("vkGetFenceFdKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetFenceFdKHR(Device device,FenceGetFdInfoKHR* pGetFdInfo,int* pFd);

		[LinkName("vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(PhysicalDevice physicalDevice,uint32 queueFamilyIndex,uint32* pCounterCount,PerformanceCounterKHR* pCounters,PerformanceCounterDescriptionKHR* pCounterDescriptions);

		[LinkName("vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(PhysicalDevice physicalDevice,QueryPoolPerformanceCreateInfoKHR* pPerformanceQueryCreateInfo,uint32* pNumPasses);

		[LinkName("vkAcquireProfilingLockKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkAcquireProfilingLockKHR(Device device,AcquireProfilingLockInfoKHR* pInfo);

		[LinkName("vkReleaseProfilingLockKHR"), CallingConvention(.Stdcall)]
		public static extern void vkReleaseProfilingLockKHR(Device device);

		[LinkName("vkGetPhysicalDeviceSurfaceCapabilities2KHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceSurfaceCapabilities2KHR(PhysicalDevice physicalDevice,PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo,SurfaceCapabilities2KHR* pSurfaceCapabilities);

		[LinkName("vkGetPhysicalDeviceSurfaceFormats2KHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceSurfaceFormats2KHR(PhysicalDevice physicalDevice,PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo,uint32* pSurfaceFormatCount,SurfaceFormat2KHR* pSurfaceFormats);

		[LinkName("vkGetPhysicalDeviceDisplayProperties2KHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceDisplayProperties2KHR(PhysicalDevice physicalDevice,uint32* pPropertyCount,DisplayProperties2KHR* pProperties);

		[LinkName("vkGetPhysicalDeviceDisplayPlaneProperties2KHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceDisplayPlaneProperties2KHR(PhysicalDevice physicalDevice,uint32* pPropertyCount,DisplayPlaneProperties2KHR* pProperties);

		[LinkName("vkGetDisplayModeProperties2KHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetDisplayModeProperties2KHR(PhysicalDevice physicalDevice,DisplayKHR display,uint32* pPropertyCount,DisplayModeProperties2KHR* pProperties);

		[LinkName("vkGetDisplayPlaneCapabilities2KHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetDisplayPlaneCapabilities2KHR(PhysicalDevice physicalDevice,DisplayPlaneInfo2KHR* pDisplayPlaneInfo,DisplayPlaneCapabilities2KHR* pCapabilities);

		[LinkName("vkGetImageMemoryRequirements2KHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetImageMemoryRequirements2KHR(Device device,ImageMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements);

		[LinkName("vkGetBufferMemoryRequirements2KHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetBufferMemoryRequirements2KHR(Device device,BufferMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements);

		[LinkName("vkGetImageSparseMemoryRequirements2KHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetImageSparseMemoryRequirements2KHR(Device device,ImageSparseMemoryRequirementsInfo2* pInfo,uint32* pSparseMemoryRequirementCount,SparseImageMemoryRequirements2* pSparseMemoryRequirements);

		[LinkName("vkCreateSamplerYcbcrConversionKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateSamplerYcbcrConversionKHR(Device device,SamplerYcbcrConversionCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,SamplerYcbcrConversion* pYcbcrConversion);

		[LinkName("vkDestroySamplerYcbcrConversionKHR"), CallingConvention(.Stdcall)]
		public static extern void vkDestroySamplerYcbcrConversionKHR(Device device,SamplerYcbcrConversion ycbcrConversion,AllocationCallbacks* pAllocator);

		[LinkName("vkBindBufferMemory2KHR"), CallingConvention(.Stdcall)]
		public static extern Result vkBindBufferMemory2KHR(Device device,uint32 bindInfoCount,BindBufferMemoryInfo* pBindInfos);

		[LinkName("vkBindImageMemory2KHR"), CallingConvention(.Stdcall)]
		public static extern Result vkBindImageMemory2KHR(Device device,uint32 bindInfoCount,BindImageMemoryInfo* pBindInfos);

		[LinkName("vkGetDescriptorSetLayoutSupportKHR"), CallingConvention(.Stdcall)]
		public static extern void vkGetDescriptorSetLayoutSupportKHR(Device device,DescriptorSetLayoutCreateInfo* pCreateInfo,DescriptorSetLayoutSupport* pSupport);

		[LinkName("vkCmdDrawIndirectCountKHR"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawIndirectCountKHR(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[LinkName("vkCmdDrawIndexedIndirectCountKHR"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawIndexedIndirectCountKHR(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[LinkName("vkGetSemaphoreCounterValueKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetSemaphoreCounterValueKHR(Device device,Semaphore semaphore,uint64* pValue);

		[LinkName("vkWaitSemaphoresKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkWaitSemaphoresKHR(Device device,SemaphoreWaitInfo* pWaitInfo,uint64 timeout);

		[LinkName("vkSignalSemaphoreKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkSignalSemaphoreKHR(Device device,SemaphoreSignalInfo* pSignalInfo);

		[LinkName("vkGetBufferDeviceAddressKHR"), CallingConvention(.Stdcall)]
		public static extern DeviceAddress vkGetBufferDeviceAddressKHR(Device device,BufferDeviceAddressInfo* pInfo);

		[LinkName("vkGetBufferOpaqueCaptureAddressKHR"), CallingConvention(.Stdcall)]
		public static extern uint64 vkGetBufferOpaqueCaptureAddressKHR(Device device,BufferDeviceAddressInfo* pInfo);

		[LinkName("vkGetDeviceMemoryOpaqueCaptureAddressKHR"), CallingConvention(.Stdcall)]
		public static extern uint64 vkGetDeviceMemoryOpaqueCaptureAddressKHR(Device device,DeviceMemoryOpaqueCaptureAddressInfo* pInfo);

		[LinkName("vkGetPipelineExecutablePropertiesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPipelineExecutablePropertiesKHR(Device device,PipelineInfoKHR* pPipelineInfo,uint32* pExecutableCount,PipelineExecutablePropertiesKHR* pProperties);

		[LinkName("vkGetPipelineExecutableStatisticsKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPipelineExecutableStatisticsKHR(Device device,PipelineExecutableInfoKHR* pExecutableInfo,uint32* pStatisticCount,PipelineExecutableStatisticKHR* pStatistics);

		[LinkName("vkGetPipelineExecutableInternalRepresentationsKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPipelineExecutableInternalRepresentationsKHR(Device device,PipelineExecutableInfoKHR* pExecutableInfo,uint32* pInternalRepresentationCount,PipelineExecutableInternalRepresentationKHR* pInternalRepresentations);

		[LinkName("vkCreateDebugReportCallbackEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateDebugReportCallbackEXT(Instance instance,DebugReportCallbackCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,DebugReportCallbackEXT* pCallback);

		[LinkName("vkDestroyDebugReportCallbackEXT"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyDebugReportCallbackEXT(Instance instance,DebugReportCallbackEXT callback,AllocationCallbacks* pAllocator);

		[LinkName("vkDebugReportMessageEXT"), CallingConvention(.Stdcall)]
		public static extern void vkDebugReportMessageEXT(Instance instance,DebugReportFlagsEXT flags,DebugReportObjectTypeEXT objectType,uint64 object,uint location,int32 messageCode,char8* pLayerPrefix,char8* pMessage);

		[LinkName("vkDebugMarkerSetObjectTagEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkDebugMarkerSetObjectTagEXT(Device device,DebugMarkerObjectTagInfoEXT* pTagInfo);

		[LinkName("vkDebugMarkerSetObjectNameEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkDebugMarkerSetObjectNameEXT(Device device,DebugMarkerObjectNameInfoEXT* pNameInfo);

		[LinkName("vkCmdDebugMarkerBeginEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDebugMarkerBeginEXT(CommandBuffer commandBuffer,DebugMarkerMarkerInfoEXT* pMarkerInfo);

		[LinkName("vkCmdDebugMarkerEndEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDebugMarkerEndEXT(CommandBuffer commandBuffer);

		[LinkName("vkCmdDebugMarkerInsertEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDebugMarkerInsertEXT(CommandBuffer commandBuffer,DebugMarkerMarkerInfoEXT* pMarkerInfo);

		[LinkName("vkCmdBindTransformFeedbackBuffersEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBindTransformFeedbackBuffersEXT(CommandBuffer commandBuffer,uint32 firstBinding,uint32 bindingCount,Buffer* pBuffers,DeviceSize* pOffsets,DeviceSize* pSizes);

		[LinkName("vkCmdBeginTransformFeedbackEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBeginTransformFeedbackEXT(CommandBuffer commandBuffer,uint32 firstCounterBuffer,uint32 counterBufferCount,Buffer* pCounterBuffers,DeviceSize* pCounterBufferOffsets);

		[LinkName("vkCmdEndTransformFeedbackEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdEndTransformFeedbackEXT(CommandBuffer commandBuffer,uint32 firstCounterBuffer,uint32 counterBufferCount,Buffer* pCounterBuffers,DeviceSize* pCounterBufferOffsets);

		[LinkName("vkCmdBeginQueryIndexedEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBeginQueryIndexedEXT(CommandBuffer commandBuffer,QueryPool queryPool,uint32 query,QueryControlFlags flags,uint32 index);

		[LinkName("vkCmdEndQueryIndexedEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdEndQueryIndexedEXT(CommandBuffer commandBuffer,QueryPool queryPool,uint32 query,uint32 index);

		[LinkName("vkCmdDrawIndirectByteCountEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawIndirectByteCountEXT(CommandBuffer commandBuffer,uint32 instanceCount,uint32 firstInstance,Buffer counterBuffer,DeviceSize counterBufferOffset,uint32 counterOffset,uint32 vertexStride);

		[LinkName("vkGetImageViewHandleNVX"), CallingConvention(.Stdcall)]
		public static extern uint32 vkGetImageViewHandleNVX(Device device,ImageViewHandleInfoNVX* pInfo);

		[LinkName("vkCmdDrawIndirectCountAMD"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawIndirectCountAMD(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[LinkName("vkCmdDrawIndexedIndirectCountAMD"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawIndexedIndirectCountAMD(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[LinkName("vkGetShaderInfoAMD"), CallingConvention(.Stdcall)]
		public static extern Result vkGetShaderInfoAMD(Device device,Pipeline pipeline,ShaderStageFlags shaderStage,ShaderInfoTypeAMD infoType,uint* pInfoSize,void* pInfo);

		[LinkName("vkGetPhysicalDeviceExternalImageFormatPropertiesNV"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceExternalImageFormatPropertiesNV(PhysicalDevice physicalDevice,Format format,ImageType type,ImageTiling tiling,ImageUsageFlags usage,ImageCreateFlags flags,ExternalMemoryHandleTypeFlagsNV externalHandleType,ExternalImageFormatPropertiesNV* pExternalImageFormatProperties);

		[LinkName("vkCmdBeginConditionalRenderingEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBeginConditionalRenderingEXT(CommandBuffer commandBuffer,ConditionalRenderingBeginInfoEXT* pConditionalRenderingBegin);

		[LinkName("vkCmdEndConditionalRenderingEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdEndConditionalRenderingEXT(CommandBuffer commandBuffer);

		[LinkName("vkCmdSetViewportWScalingNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetViewportWScalingNV(CommandBuffer commandBuffer,uint32 firstViewport,uint32 viewportCount,ViewportWScalingNV* pViewportWScalings);

		[LinkName("vkReleaseDisplayEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkReleaseDisplayEXT(PhysicalDevice physicalDevice,DisplayKHR display);

		[LinkName("vkGetPhysicalDeviceSurfaceCapabilities2EXT"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceSurfaceCapabilities2EXT(PhysicalDevice physicalDevice,SurfaceKHR surface,SurfaceCapabilities2EXT* pSurfaceCapabilities);

		[LinkName("vkDisplayPowerControlEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkDisplayPowerControlEXT(Device device,DisplayKHR display,DisplayPowerInfoEXT* pDisplayPowerInfo);

		[LinkName("vkRegisterDeviceEventEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkRegisterDeviceEventEXT(Device device,DeviceEventInfoEXT* pDeviceEventInfo,AllocationCallbacks* pAllocator,Fence* pFence);

		[LinkName("vkRegisterDisplayEventEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkRegisterDisplayEventEXT(Device device,DisplayKHR display,DisplayEventInfoEXT* pDisplayEventInfo,AllocationCallbacks* pAllocator,Fence* pFence);

		[LinkName("vkGetSwapchainCounterEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkGetSwapchainCounterEXT(Device device,SwapchainKHR swapchain,SurfaceCounterFlagsEXT counter,uint64* pCounterValue);

		[LinkName("vkGetRefreshCycleDurationGOOGLE"), CallingConvention(.Stdcall)]
		public static extern Result vkGetRefreshCycleDurationGOOGLE(Device device,SwapchainKHR swapchain,RefreshCycleDurationGOOGLE* pDisplayTimingProperties);

		[LinkName("vkGetPastPresentationTimingGOOGLE"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPastPresentationTimingGOOGLE(Device device,SwapchainKHR swapchain,uint32* pPresentationTimingCount,PastPresentationTimingGOOGLE* pPresentationTimings);

		[LinkName("vkCmdSetDiscardRectangleEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetDiscardRectangleEXT(CommandBuffer commandBuffer,uint32 firstDiscardRectangle,uint32 discardRectangleCount,Rect2D* pDiscardRectangles);

		[LinkName("vkSetHdrMetadataEXT"), CallingConvention(.Stdcall)]
		public static extern void vkSetHdrMetadataEXT(Device device,uint32 swapchainCount,SwapchainKHR* pSwapchains,HdrMetadataEXT* pMetadata);

		[LinkName("vkSetDebugUtilsObjectNameEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkSetDebugUtilsObjectNameEXT(Device device,DebugUtilsObjectNameInfoEXT* pNameInfo);

		[LinkName("vkSetDebugUtilsObjectTagEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkSetDebugUtilsObjectTagEXT(Device device,DebugUtilsObjectTagInfoEXT* pTagInfo);

		[LinkName("vkQueueBeginDebugUtilsLabelEXT"), CallingConvention(.Stdcall)]
		public static extern void vkQueueBeginDebugUtilsLabelEXT(Queue queue,DebugUtilsLabelEXT* pLabelInfo);

		[LinkName("vkQueueEndDebugUtilsLabelEXT"), CallingConvention(.Stdcall)]
		public static extern void vkQueueEndDebugUtilsLabelEXT(Queue queue);

		[LinkName("vkQueueInsertDebugUtilsLabelEXT"), CallingConvention(.Stdcall)]
		public static extern void vkQueueInsertDebugUtilsLabelEXT(Queue queue,DebugUtilsLabelEXT* pLabelInfo);

		[LinkName("vkCmdBeginDebugUtilsLabelEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBeginDebugUtilsLabelEXT(CommandBuffer commandBuffer,DebugUtilsLabelEXT* pLabelInfo);

		[LinkName("vkCmdEndDebugUtilsLabelEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdEndDebugUtilsLabelEXT(CommandBuffer commandBuffer);

		[LinkName("vkCmdInsertDebugUtilsLabelEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdInsertDebugUtilsLabelEXT(CommandBuffer commandBuffer,DebugUtilsLabelEXT* pLabelInfo);

		[LinkName("vkCreateDebugUtilsMessengerEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateDebugUtilsMessengerEXT(Instance instance,DebugUtilsMessengerCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,DebugUtilsMessengerEXT* pMessenger);

		[LinkName("vkDestroyDebugUtilsMessengerEXT"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyDebugUtilsMessengerEXT(Instance instance,DebugUtilsMessengerEXT messenger,AllocationCallbacks* pAllocator);

		[LinkName("vkSubmitDebugUtilsMessageEXT"), CallingConvention(.Stdcall)]
		public static extern void vkSubmitDebugUtilsMessageEXT(Instance instance,DebugUtilsMessageSeverityFlagsEXT messageSeverity,DebugUtilsMessageTypeFlagsEXT messageTypes,DebugUtilsMessengerCallbackDataEXT* pCallbackData);

		[LinkName("vkCmdSetSampleLocationsEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetSampleLocationsEXT(CommandBuffer commandBuffer,SampleLocationsInfoEXT* pSampleLocationsInfo);

		[LinkName("vkGetPhysicalDeviceMultisamplePropertiesEXT"), CallingConvention(.Stdcall)]
		public static extern void vkGetPhysicalDeviceMultisamplePropertiesEXT(PhysicalDevice physicalDevice,SampleCountFlags samples,MultisamplePropertiesEXT* pMultisampleProperties);

		[LinkName("vkGetImageDrmFormatModifierPropertiesEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkGetImageDrmFormatModifierPropertiesEXT(Device device,Image image,ImageDrmFormatModifierPropertiesEXT* pProperties);

		[LinkName("vkCreateValidationCacheEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateValidationCacheEXT(Device device,ValidationCacheCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,ValidationCacheEXT* pValidationCache);

		[LinkName("vkDestroyValidationCacheEXT"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyValidationCacheEXT(Device device,ValidationCacheEXT validationCache,AllocationCallbacks* pAllocator);

		[LinkName("vkMergeValidationCachesEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkMergeValidationCachesEXT(Device device,ValidationCacheEXT dstCache,uint32 srcCacheCount,ValidationCacheEXT* pSrcCaches);

		[LinkName("vkGetValidationCacheDataEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkGetValidationCacheDataEXT(Device device,ValidationCacheEXT validationCache,uint* pDataSize,void* pData);

		[LinkName("vkCmdBindShadingRateImageNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBindShadingRateImageNV(CommandBuffer commandBuffer,ImageView imageView,ImageLayout imageLayout);

		[LinkName("vkCmdSetViewportShadingRatePaletteNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetViewportShadingRatePaletteNV(CommandBuffer commandBuffer,uint32 firstViewport,uint32 viewportCount,ShadingRatePaletteNV* pShadingRatePalettes);

		[LinkName("vkCmdSetCoarseSampleOrderNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetCoarseSampleOrderNV(CommandBuffer commandBuffer,CoarseSampleOrderTypeNV sampleOrderType,uint32 customSampleOrderCount,CoarseSampleOrderCustomNV* pCustomSampleOrders);

		[LinkName("vkCreateAccelerationStructureNV"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateAccelerationStructureNV(Device device,AccelerationStructureCreateInfoNV* pCreateInfo,AllocationCallbacks* pAllocator,AccelerationStructureNV* pAccelerationStructure);

		[LinkName("vkDestroyAccelerationStructureKHR"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyAccelerationStructureKHR(Device device,AccelerationStructureKHR accelerationStructure,AllocationCallbacks* pAllocator);

		[LinkName("vkDestroyAccelerationStructureNV"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyAccelerationStructureNV(Device device,AccelerationStructureKHR accelerationStructure,AllocationCallbacks* pAllocator);

		[LinkName("vkGetAccelerationStructureMemoryRequirementsNV"), CallingConvention(.Stdcall)]
		public static extern void vkGetAccelerationStructureMemoryRequirementsNV(Device device,AccelerationStructureMemoryRequirementsInfoNV* pInfo,MemoryRequirements2KHR* pMemoryRequirements);

		[LinkName("vkBindAccelerationStructureMemoryKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkBindAccelerationStructureMemoryKHR(Device device,uint32 bindInfoCount,BindAccelerationStructureMemoryInfoKHR* pBindInfos);

		[LinkName("vkBindAccelerationStructureMemoryNV"), CallingConvention(.Stdcall)]
		public static extern Result vkBindAccelerationStructureMemoryNV(Device device,uint32 bindInfoCount,BindAccelerationStructureMemoryInfoKHR* pBindInfos);

		[LinkName("vkCmdBuildAccelerationStructureNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBuildAccelerationStructureNV(CommandBuffer commandBuffer,AccelerationStructureInfoNV* pInfo,Buffer instanceData,DeviceSize instanceOffset,Bool32 update,AccelerationStructureKHR dst,AccelerationStructureKHR src,Buffer scratch,DeviceSize scratchOffset);

		[LinkName("vkCmdCopyAccelerationStructureNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdCopyAccelerationStructureNV(CommandBuffer commandBuffer,AccelerationStructureKHR dst,AccelerationStructureKHR src,CopyAccelerationStructureModeKHR mode);

		[LinkName("vkCmdTraceRaysNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdTraceRaysNV(CommandBuffer commandBuffer,Buffer raygenShaderBindingTableBuffer,DeviceSize raygenShaderBindingOffset,Buffer missShaderBindingTableBuffer,DeviceSize missShaderBindingOffset,DeviceSize missShaderBindingStride,Buffer hitShaderBindingTableBuffer,DeviceSize hitShaderBindingOffset,DeviceSize hitShaderBindingStride,Buffer callableShaderBindingTableBuffer,DeviceSize callableShaderBindingOffset,DeviceSize callableShaderBindingStride,uint32 width,uint32 height,uint32 depth);

		[LinkName("vkCreateRayTracingPipelinesNV"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateRayTracingPipelinesNV(Device device,PipelineCache pipelineCache,uint32 createInfoCount,RayTracingPipelineCreateInfoNV* pCreateInfos,AllocationCallbacks* pAllocator,Pipeline* pPipelines);

		[LinkName("vkGetRayTracingShaderGroupHandlesKHR"), CallingConvention(.Stdcall)]
		public static extern Result vkGetRayTracingShaderGroupHandlesKHR(Device device,Pipeline pipeline,uint32 firstGroup,uint32 groupCount,uint dataSize,void* pData);

		[LinkName("vkGetRayTracingShaderGroupHandlesNV"), CallingConvention(.Stdcall)]
		public static extern Result vkGetRayTracingShaderGroupHandlesNV(Device device,Pipeline pipeline,uint32 firstGroup,uint32 groupCount,uint dataSize,void* pData);

		[LinkName("vkGetAccelerationStructureHandleNV"), CallingConvention(.Stdcall)]
		public static extern Result vkGetAccelerationStructureHandleNV(Device device,AccelerationStructureKHR accelerationStructure,uint dataSize,void* pData);

		[LinkName("vkCmdWriteAccelerationStructuresPropertiesKHR"), CallingConvention(.Stdcall)]
		public static extern void vkCmdWriteAccelerationStructuresPropertiesKHR(CommandBuffer commandBuffer,uint32 accelerationStructureCount,AccelerationStructureKHR* pAccelerationStructures,QueryType queryType,QueryPool queryPool,uint32 firstQuery);

		[LinkName("vkCmdWriteAccelerationStructuresPropertiesNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdWriteAccelerationStructuresPropertiesNV(CommandBuffer commandBuffer,uint32 accelerationStructureCount,AccelerationStructureKHR* pAccelerationStructures,QueryType queryType,QueryPool queryPool,uint32 firstQuery);

		[LinkName("vkCompileDeferredNV"), CallingConvention(.Stdcall)]
		public static extern Result vkCompileDeferredNV(Device device,Pipeline pipeline,uint32 shader);

		[LinkName("vkGetMemoryHostPointerPropertiesEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkGetMemoryHostPointerPropertiesEXT(Device device,ExternalMemoryHandleTypeFlags handleType,void* pHostPointer,MemoryHostPointerPropertiesEXT* pMemoryHostPointerProperties);

		[LinkName("vkCmdWriteBufferMarkerAMD"), CallingConvention(.Stdcall)]
		public static extern void vkCmdWriteBufferMarkerAMD(CommandBuffer commandBuffer,PipelineStageFlags pipelineStage,Buffer dstBuffer,DeviceSize dstOffset,uint32 marker);

		[LinkName("vkGetPhysicalDeviceCalibrateableTimeDomainsEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(PhysicalDevice physicalDevice,uint32* pTimeDomainCount,TimeDomainEXT* pTimeDomains);

		[LinkName("vkGetCalibratedTimestampsEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkGetCalibratedTimestampsEXT(Device device,uint32 timestampCount,CalibratedTimestampInfoEXT* pTimestampInfos,uint64* pTimestamps,uint64* pMaxDeviation);

		[LinkName("vkCmdDrawMeshTasksNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawMeshTasksNV(CommandBuffer commandBuffer,uint32 taskCount,uint32 firstTask);

		[LinkName("vkCmdDrawMeshTasksIndirectNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawMeshTasksIndirectNV(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,uint32 drawCount,uint32 stride);

		[LinkName("vkCmdDrawMeshTasksIndirectCountNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdDrawMeshTasksIndirectCountNV(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[LinkName("vkCmdSetExclusiveScissorNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetExclusiveScissorNV(CommandBuffer commandBuffer,uint32 firstExclusiveScissor,uint32 exclusiveScissorCount,Rect2D* pExclusiveScissors);

		[LinkName("vkCmdSetCheckpointNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetCheckpointNV(CommandBuffer commandBuffer,void* pCheckpointMarker);

		[LinkName("vkGetQueueCheckpointDataNV"), CallingConvention(.Stdcall)]
		public static extern void vkGetQueueCheckpointDataNV(Queue queue,uint32* pCheckpointDataCount,CheckpointDataNV* pCheckpointData);

		[LinkName("vkInitializePerformanceApiINTEL"), CallingConvention(.Stdcall)]
		public static extern Result vkInitializePerformanceApiINTEL(Device device,InitializePerformanceApiInfoINTEL* pInitializeInfo);

		[LinkName("vkUninitializePerformanceApiINTEL"), CallingConvention(.Stdcall)]
		public static extern void vkUninitializePerformanceApiINTEL(Device device);

		[LinkName("vkCmdSetPerformanceMarkerINTEL"), CallingConvention(.Stdcall)]
		public static extern Result vkCmdSetPerformanceMarkerINTEL(CommandBuffer commandBuffer,PerformanceMarkerInfoINTEL* pMarkerInfo);

		[LinkName("vkCmdSetPerformanceStreamMarkerINTEL"), CallingConvention(.Stdcall)]
		public static extern Result vkCmdSetPerformanceStreamMarkerINTEL(CommandBuffer commandBuffer,PerformanceStreamMarkerInfoINTEL* pMarkerInfo);

		[LinkName("vkCmdSetPerformanceOverrideINTEL"), CallingConvention(.Stdcall)]
		public static extern Result vkCmdSetPerformanceOverrideINTEL(CommandBuffer commandBuffer,PerformanceOverrideInfoINTEL* pOverrideInfo);

		[LinkName("vkAcquirePerformanceConfigurationINTEL"), CallingConvention(.Stdcall)]
		public static extern Result vkAcquirePerformanceConfigurationINTEL(Device device,PerformanceConfigurationAcquireInfoINTEL* pAcquireInfo,PerformanceConfigurationINTEL* pConfiguration);

		[LinkName("vkReleasePerformanceConfigurationINTEL"), CallingConvention(.Stdcall)]
		public static extern Result vkReleasePerformanceConfigurationINTEL(Device device,PerformanceConfigurationINTEL configuration);

		[LinkName("vkQueueSetPerformanceConfigurationINTEL"), CallingConvention(.Stdcall)]
		public static extern Result vkQueueSetPerformanceConfigurationINTEL(Queue queue,PerformanceConfigurationINTEL configuration);

		[LinkName("vkGetPerformanceParameterINTEL"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPerformanceParameterINTEL(Device device,PerformanceParameterTypeINTEL parameter,PerformanceValueINTEL* pValue);

		[LinkName("vkSetLocalDimmingAMD"), CallingConvention(.Stdcall)]
		public static extern void vkSetLocalDimmingAMD(Device device,SwapchainKHR swapChain,Bool32 localDimmingEnable);

		[LinkName("vkGetBufferDeviceAddressEXT"), CallingConvention(.Stdcall)]
		public static extern DeviceAddress vkGetBufferDeviceAddressEXT(Device device,BufferDeviceAddressInfo* pInfo);

		[LinkName("vkGetPhysicalDeviceToolPropertiesEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceToolPropertiesEXT(PhysicalDevice physicalDevice,uint32* pToolCount,PhysicalDeviceToolPropertiesEXT* pToolProperties);

		[LinkName("vkGetPhysicalDeviceCooperativeMatrixPropertiesNV"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(PhysicalDevice physicalDevice,uint32* pPropertyCount,CooperativeMatrixPropertiesNV* pProperties);

		[LinkName("vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV"), CallingConvention(.Stdcall)]
		public static extern Result vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(PhysicalDevice physicalDevice,uint32* pCombinationCount,FramebufferMixedSamplesCombinationNV* pCombinations);

		[LinkName("vkCreateHeadlessSurfaceEXT"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateHeadlessSurfaceEXT(Instance instance,HeadlessSurfaceCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,SurfaceKHR* pSurface);

		[LinkName("vkCmdSetLineStippleEXT"), CallingConvention(.Stdcall)]
		public static extern void vkCmdSetLineStippleEXT(CommandBuffer commandBuffer,uint32 lineStippleFactor,uint16 lineStipplePattern);

		[LinkName("vkResetQueryPoolEXT"), CallingConvention(.Stdcall)]
		public static extern void vkResetQueryPoolEXT(Device device,QueryPool queryPool,uint32 firstQuery,uint32 queryCount);

		[LinkName("vkGetGeneratedCommandsMemoryRequirementsNV"), CallingConvention(.Stdcall)]
		public static extern void vkGetGeneratedCommandsMemoryRequirementsNV(Device device,GeneratedCommandsMemoryRequirementsInfoNV* pInfo,MemoryRequirements2* pMemoryRequirements);

		[LinkName("vkCmdPreprocessGeneratedCommandsNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdPreprocessGeneratedCommandsNV(CommandBuffer commandBuffer,GeneratedCommandsInfoNV* pGeneratedCommandsInfo);

		[LinkName("vkCmdExecuteGeneratedCommandsNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdExecuteGeneratedCommandsNV(CommandBuffer commandBuffer,Bool32 isPreprocessed,GeneratedCommandsInfoNV* pGeneratedCommandsInfo);

		[LinkName("vkCmdBindPipelineShaderGroupNV"), CallingConvention(.Stdcall)]
		public static extern void vkCmdBindPipelineShaderGroupNV(CommandBuffer commandBuffer,PipelineBindPoint pipelineBindPoint,Pipeline pipeline,uint32 groupIndex);

		[LinkName("vkCreateIndirectCommandsLayoutNV"), CallingConvention(.Stdcall)]
		public static extern Result vkCreateIndirectCommandsLayoutNV(Device device,IndirectCommandsLayoutCreateInfoNV* pCreateInfo,AllocationCallbacks* pAllocator,IndirectCommandsLayoutNV* pIndirectCommandsLayout);

		[LinkName("vkDestroyIndirectCommandsLayoutNV"), CallingConvention(.Stdcall)]
		public static extern void vkDestroyIndirectCommandsLayoutNV(Device device,IndirectCommandsLayoutNV indirectCommandsLayout,AllocationCallbacks* pAllocator);


}
}