using System;

namespace Vulkan 
{
	public static 
	{
		[CLink]
		public static extern Result vkCreateInstance(InstanceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Instance* pInstance);

		[CLink]
		public static extern void vkDestroyInstance(Instance instance,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkEnumeratePhysicalDevices(Instance instance,uint32* pPhysicalDeviceCount,PhysicalDevice* pPhysicalDevices);

		[CLink]
		public static extern void vkGetPhysicalDeviceFeatures(PhysicalDevice physicalDevice,PhysicalDeviceFeatures* pFeatures);

		[CLink]
		public static extern void vkGetPhysicalDeviceFormatProperties(PhysicalDevice physicalDevice,Format format,FormatProperties* pFormatProperties);

		[CLink]
		public static extern Result vkGetPhysicalDeviceImageFormatProperties(PhysicalDevice physicalDevice,Format format,ImageType type,ImageTiling tiling,ImageUsageFlags usage,ImageCreateFlags flags,ImageFormatProperties* pImageFormatProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceProperties(PhysicalDevice physicalDevice,PhysicalDeviceProperties* pProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceQueueFamilyProperties(PhysicalDevice physicalDevice,uint32* pQueueFamilyPropertyCount,QueueFamilyProperties* pQueueFamilyProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceMemoryProperties(PhysicalDevice physicalDevice,PhysicalDeviceMemoryProperties* pMemoryProperties);

		[CLink]
		public static extern PFN_vkVoidFunction vkGetInstanceProcAddr(Instance instance,char8* pName);

		[CLink]
		public static extern PFN_vkVoidFunction vkGetDeviceProcAddr(Device device,char8* pName);

		[CLink]
		public static extern Result vkCreateDevice(PhysicalDevice physicalDevice,DeviceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Device* pDevice);

		[CLink]
		public static extern void vkDestroyDevice(Device device,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkEnumerateInstanceExtensionProperties(char8* pLayerName,uint32* pPropertyCount,ExtensionProperties* pProperties);

		[CLink]
		public static extern Result vkEnumerateDeviceExtensionProperties(PhysicalDevice physicalDevice,char8* pLayerName,uint32* pPropertyCount,ExtensionProperties* pProperties);

		[CLink]
		public static extern Result vkEnumerateInstanceLayerProperties(uint32* pPropertyCount,LayerProperties* pProperties);

		[CLink]
		public static extern Result vkEnumerateDeviceLayerProperties(PhysicalDevice physicalDevice,uint32* pPropertyCount,LayerProperties* pProperties);

		[CLink]
		public static extern void vkGetDeviceQueue(Device device,uint32 queueFamilyIndex,uint32 queueIndex,Queue* pQueue);

		[CLink]
		public static extern Result vkQueueSubmit(Queue queue,uint32 submitCount,SubmitInfo* pSubmits,Fence fence);

		[CLink]
		public static extern Result vkQueueWaitIdle(Queue queue);

		[CLink]
		public static extern Result vkDeviceWaitIdle(Device device);

		[CLink]
		public static extern Result vkAllocateMemory(Device device,MemoryAllocateInfo* pAllocateInfo,AllocationCallbacks* pAllocator,DeviceMemory* pMemory);

		[CLink]
		public static extern void vkFreeMemory(Device device,DeviceMemory memory,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkMapMemory(Device device,DeviceMemory memory,DeviceSize offset,DeviceSize size,MemoryMapFlags flags,void** ppData);

		[CLink]
		public static extern void vkUnmapMemory(Device device,DeviceMemory memory);

		[CLink]
		public static extern Result vkFlushMappedMemoryRanges(Device device,uint32 memoryRangeCount,MappedMemoryRange* pMemoryRanges);

		[CLink]
		public static extern Result vkInvalidateMappedMemoryRanges(Device device,uint32 memoryRangeCount,MappedMemoryRange* pMemoryRanges);

		[CLink]
		public static extern void vkGetDeviceMemoryCommitment(Device device,DeviceMemory memory,DeviceSize* pCommittedMemoryInBytes);

		[CLink]
		public static extern Result vkBindBufferMemory(Device device,Buffer buffer,DeviceMemory memory,DeviceSize memoryOffset);

		[CLink]
		public static extern Result vkBindImageMemory(Device device,Image image,DeviceMemory memory,DeviceSize memoryOffset);

		[CLink]
		public static extern void vkGetBufferMemoryRequirements(Device device,Buffer buffer,MemoryRequirements* pMemoryRequirements);

		[CLink]
		public static extern void vkGetImageMemoryRequirements(Device device,Image image,MemoryRequirements* pMemoryRequirements);

		[CLink]
		public static extern void vkGetImageSparseMemoryRequirements(Device device,Image image,uint32* pSparseMemoryRequirementCount,SparseImageMemoryRequirements* pSparseMemoryRequirements);

		[CLink]
		public static extern void vkGetPhysicalDeviceSparseImageFormatProperties(PhysicalDevice physicalDevice,Format format,ImageType type,SampleCountFlags samples,ImageUsageFlags usage,ImageTiling tiling,uint32* pPropertyCount,SparseImageFormatProperties* pProperties);

		[CLink]
		public static extern Result vkQueueBindSparse(Queue queue,uint32 bindInfoCount,BindSparseInfo* pBindInfo,Fence fence);

		[CLink]
		public static extern Result vkCreateFence(Device device,FenceCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Fence* pFence);

		[CLink]
		public static extern void vkDestroyFence(Device device,Fence fence,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkResetFences(Device device,uint32 fenceCount,Fence* pFences);

		[CLink]
		public static extern Result vkGetFenceStatus(Device device,Fence fence);

		[CLink]
		public static extern Result vkWaitForFences(Device device,uint32 fenceCount,Fence* pFences,Bool32 waitAll,uint64 timeout);

		[CLink]
		public static extern Result vkCreateSemaphore(Device device,SemaphoreCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Semaphore* pSemaphore);

		[CLink]
		public static extern void vkDestroySemaphore(Device device,Semaphore semaphore,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkCreateEvent(Device device,EventCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Event* pEvent);

		[CLink]
		public static extern void vkDestroyEvent(Device device,Event event,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkGetEventStatus(Device device,Event event);

		[CLink]
		public static extern Result vkSetEvent(Device device,Event event);

		[CLink]
		public static extern Result vkResetEvent(Device device,Event event);

		[CLink]
		public static extern Result vkCreateQueryPool(Device device,QueryPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,QueryPool* pQueryPool);

		[CLink]
		public static extern void vkDestroyQueryPool(Device device,QueryPool queryPool,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkGetQueryPoolResults(Device device,QueryPool queryPool,uint32 firstQuery,uint32 queryCount,uint dataSize,void* pData,DeviceSize stride,QueryResultFlags flags);

		[CLink]
		public static extern Result vkCreateBuffer(Device device,BufferCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Buffer* pBuffer);

		[CLink]
		public static extern void vkDestroyBuffer(Device device,Buffer buffer,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkCreateBufferView(Device device,BufferViewCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,BufferView* pView);

		[CLink]
		public static extern void vkDestroyBufferView(Device device,BufferView bufferView,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkCreateImage(Device device,ImageCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Image* pImage);

		[CLink]
		public static extern void vkDestroyImage(Device device,Image image,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern void vkGetImageSubresourceLayout(Device device,Image image,ImageSubresource* pSubresource,SubresourceLayout* pLayout);

		[CLink]
		public static extern Result vkCreateImageView(Device device,ImageViewCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,ImageView* pView);

		[CLink]
		public static extern void vkDestroyImageView(Device device,ImageView imageView,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkCreateShaderModule(Device device,ShaderModuleCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,ShaderModule* pShaderModule);

		[CLink]
		public static extern void vkDestroyShaderModule(Device device,ShaderModule shaderModule,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkCreatePipelineCache(Device device,PipelineCacheCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,PipelineCache* pPipelineCache);

		[CLink]
		public static extern void vkDestroyPipelineCache(Device device,PipelineCache pipelineCache,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkGetPipelineCacheData(Device device,PipelineCache pipelineCache,uint* pDataSize,void* pData);

		[CLink]
		public static extern Result vkMergePipelineCaches(Device device,PipelineCache dstCache,uint32 srcCacheCount,PipelineCache* pSrcCaches);

		[CLink]
		public static extern Result vkCreateGraphicsPipelines(Device device,PipelineCache pipelineCache,uint32 createInfoCount,GraphicsPipelineCreateInfo* pCreateInfos,AllocationCallbacks* pAllocator,Pipeline* pPipelines);

		[CLink]
		public static extern Result vkCreateComputePipelines(Device device,PipelineCache pipelineCache,uint32 createInfoCount,ComputePipelineCreateInfo* pCreateInfos,AllocationCallbacks* pAllocator,Pipeline* pPipelines);

		[CLink]
		public static extern void vkDestroyPipeline(Device device,Pipeline pipeline,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkCreatePipelineLayout(Device device,PipelineLayoutCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,PipelineLayout* pPipelineLayout);

		[CLink]
		public static extern void vkDestroyPipelineLayout(Device device,PipelineLayout pipelineLayout,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkCreateSampler(Device device,SamplerCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Sampler* pSampler);

		[CLink]
		public static extern void vkDestroySampler(Device device,Sampler sampler,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkCreateDescriptorSetLayout(Device device,DescriptorSetLayoutCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorSetLayout* pSetLayout);

		[CLink]
		public static extern void vkDestroyDescriptorSetLayout(Device device,DescriptorSetLayout descriptorSetLayout,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkCreateDescriptorPool(Device device,DescriptorPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorPool* pDescriptorPool);

		[CLink]
		public static extern void vkDestroyDescriptorPool(Device device,DescriptorPool descriptorPool,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkResetDescriptorPool(Device device,DescriptorPool descriptorPool,DescriptorPoolResetFlags flags);

		[CLink]
		public static extern Result vkAllocateDescriptorSets(Device device,DescriptorSetAllocateInfo* pAllocateInfo,DescriptorSet* pDescriptorSets);

		[CLink]
		public static extern Result vkFreeDescriptorSets(Device device,DescriptorPool descriptorPool,uint32 descriptorSetCount,DescriptorSet* pDescriptorSets);

		[CLink]
		public static extern void vkUpdateDescriptorSets(Device device,uint32 descriptorWriteCount,WriteDescriptorSet* pDescriptorWrites,uint32 descriptorCopyCount,CopyDescriptorSet* pDescriptorCopies);

		[CLink]
		public static extern Result vkCreateFramebuffer(Device device,FramebufferCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,Framebuffer* pFramebuffer);

		[CLink]
		public static extern void vkDestroyFramebuffer(Device device,Framebuffer framebuffer,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkCreateRenderPass(Device device,RenderPassCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,RenderPass* pRenderPass);

		[CLink]
		public static extern void vkDestroyRenderPass(Device device,RenderPass renderPass,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern void vkGetRenderAreaGranularity(Device device,RenderPass renderPass,Extent2D* pGranularity);

		[CLink]
		public static extern Result vkCreateCommandPool(Device device,CommandPoolCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,CommandPool* pCommandPool);

		[CLink]
		public static extern void vkDestroyCommandPool(Device device,CommandPool commandPool,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkResetCommandPool(Device device,CommandPool commandPool,CommandPoolResetFlags flags);

		[CLink]
		public static extern Result vkAllocateCommandBuffers(Device device,CommandBufferAllocateInfo* pAllocateInfo,CommandBuffer* pCommandBuffers);

		[CLink]
		public static extern void vkFreeCommandBuffers(Device device,CommandPool commandPool,uint32 commandBufferCount,CommandBuffer* pCommandBuffers);

		[CLink]
		public static extern Result vkBeginCommandBuffer(CommandBuffer commandBuffer,CommandBufferBeginInfo* pBeginInfo);

		[CLink]
		public static extern Result vkEndCommandBuffer(CommandBuffer commandBuffer);

		[CLink]
		public static extern Result vkResetCommandBuffer(CommandBuffer commandBuffer,CommandBufferResetFlags flags);

		[CLink]
		public static extern void vkCmdBindPipeline(CommandBuffer commandBuffer,PipelineBindPoint pipelineBindPoint,Pipeline pipeline);

		[CLink]
		public static extern void vkCmdSetViewport(CommandBuffer commandBuffer,uint32 firstViewport,uint32 viewportCount,Viewport* pViewports);

		[CLink]
		public static extern void vkCmdSetScissor(CommandBuffer commandBuffer,uint32 firstScissor,uint32 scissorCount,Rect2D* pScissors);

		[CLink]
		public static extern void vkCmdSetLineWidth(CommandBuffer commandBuffer,float lineWidth);

		[CLink]
		public static extern void vkCmdSetDepthBias(CommandBuffer commandBuffer,float depthBiasConstantFactor,float depthBiasClamp,float depthBiasSlopeFactor);

		[CLink]
		public static extern void vkCmdSetBlendConstants(CommandBuffer commandBuffer,float blendConstants);

		[CLink]
		public static extern void vkCmdSetDepthBounds(CommandBuffer commandBuffer,float minDepthBounds,float maxDepthBounds);

		[CLink]
		public static extern void vkCmdSetStencilCompareMask(CommandBuffer commandBuffer,StencilFaceFlags faceMask,uint32 compareMask);

		[CLink]
		public static extern void vkCmdSetStencilWriteMask(CommandBuffer commandBuffer,StencilFaceFlags faceMask,uint32 writeMask);

		[CLink]
		public static extern void vkCmdSetStencilReference(CommandBuffer commandBuffer,StencilFaceFlags faceMask,uint32 reference);

		[CLink]
		public static extern void vkCmdBindDescriptorSets(CommandBuffer commandBuffer,PipelineBindPoint pipelineBindPoint,PipelineLayout layout,uint32 firstSet,uint32 descriptorSetCount,DescriptorSet* pDescriptorSets,uint32 dynamicOffsetCount,uint32* pDynamicOffsets);

		[CLink]
		public static extern void vkCmdBindIndexBuffer(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,IndexType indexType);

		[CLink]
		public static extern void vkCmdBindVertexBuffers(CommandBuffer commandBuffer,uint32 firstBinding,uint32 bindingCount,Buffer* pBuffers,DeviceSize* pOffsets);

		[CLink]
		public static extern void vkCmdDraw(CommandBuffer commandBuffer,uint32 vertexCount,uint32 instanceCount,uint32 firstVertex,uint32 firstInstance);

		[CLink]
		public static extern void vkCmdDrawIndexed(CommandBuffer commandBuffer,uint32 indexCount,uint32 instanceCount,uint32 firstIndex,int32 vertexOffset,uint32 firstInstance);

		[CLink]
		public static extern void vkCmdDrawIndirect(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,uint32 drawCount,uint32 stride);

		[CLink]
		public static extern void vkCmdDrawIndexedIndirect(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,uint32 drawCount,uint32 stride);

		[CLink]
		public static extern void vkCmdDispatch(CommandBuffer commandBuffer,uint32 groupCountX,uint32 groupCountY,uint32 groupCountZ);

		[CLink]
		public static extern void vkCmdDispatchIndirect(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset);

		[CLink]
		public static extern void vkCmdCopyBuffer(CommandBuffer commandBuffer,Buffer srcBuffer,Buffer dstBuffer,uint32 regionCount,BufferCopy* pRegions);

		[CLink]
		public static extern void vkCmdCopyImage(CommandBuffer commandBuffer,Image srcImage,ImageLayout srcImageLayout,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,ImageCopy* pRegions);

		[CLink]
		public static extern void vkCmdBlitImage(CommandBuffer commandBuffer,Image srcImage,ImageLayout srcImageLayout,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,ImageBlit* pRegions,Filter filter);

		[CLink]
		public static extern void vkCmdCopyBufferToImage(CommandBuffer commandBuffer,Buffer srcBuffer,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,BufferImageCopy* pRegions);

		[CLink]
		public static extern void vkCmdCopyImageToBuffer(CommandBuffer commandBuffer,Image srcImage,ImageLayout srcImageLayout,Buffer dstBuffer,uint32 regionCount,BufferImageCopy* pRegions);

		[CLink]
		public static extern void vkCmdUpdateBuffer(CommandBuffer commandBuffer,Buffer dstBuffer,DeviceSize dstOffset,DeviceSize dataSize,void* pData);

		[CLink]
		public static extern void vkCmdFillBuffer(CommandBuffer commandBuffer,Buffer dstBuffer,DeviceSize dstOffset,DeviceSize size,uint32 data);

		[CLink]
		public static extern void vkCmdClearColorImage(CommandBuffer commandBuffer,Image image,ImageLayout imageLayout,ClearColorValue* pColor,uint32 rangeCount,ImageSubresourceRange* pRanges);

		[CLink]
		public static extern void vkCmdClearDepthStencilImage(CommandBuffer commandBuffer,Image image,ImageLayout imageLayout,ClearDepthStencilValue* pDepthStencil,uint32 rangeCount,ImageSubresourceRange* pRanges);

		[CLink]
		public static extern void vkCmdClearAttachments(CommandBuffer commandBuffer,uint32 attachmentCount,ClearAttachment* pAttachments,uint32 rectCount,ClearRect* pRects);

		[CLink]
		public static extern void vkCmdResolveImage(CommandBuffer commandBuffer,Image srcImage,ImageLayout srcImageLayout,Image dstImage,ImageLayout dstImageLayout,uint32 regionCount,ImageResolve* pRegions);

		[CLink]
		public static extern void vkCmdSetEvent(CommandBuffer commandBuffer,Event event,PipelineStageFlags stageMask);

		[CLink]
		public static extern void vkCmdResetEvent(CommandBuffer commandBuffer,Event event,PipelineStageFlags stageMask);

		[CLink]
		public static extern void vkCmdWaitEvents(CommandBuffer commandBuffer,uint32 eventCount,Event* pEvents,PipelineStageFlags srcStageMask,PipelineStageFlags dstStageMask,uint32 memoryBarrierCount,MemoryBarrier* pMemoryBarriers,uint32 bufferMemoryBarrierCount,BufferMemoryBarrier* pBufferMemoryBarriers,uint32 imageMemoryBarrierCount,ImageMemoryBarrier* pImageMemoryBarriers);

		[CLink]
		public static extern void vkCmdPipelineBarrier(CommandBuffer commandBuffer,PipelineStageFlags srcStageMask,PipelineStageFlags dstStageMask,DependencyFlags dependencyFlags,uint32 memoryBarrierCount,MemoryBarrier* pMemoryBarriers,uint32 bufferMemoryBarrierCount,BufferMemoryBarrier* pBufferMemoryBarriers,uint32 imageMemoryBarrierCount,ImageMemoryBarrier* pImageMemoryBarriers);

		[CLink]
		public static extern void vkCmdBeginQuery(CommandBuffer commandBuffer,QueryPool queryPool,uint32 query,QueryControlFlags flags);

		[CLink]
		public static extern void vkCmdEndQuery(CommandBuffer commandBuffer,QueryPool queryPool,uint32 query);

		[CLink]
		public static extern void vkCmdResetQueryPool(CommandBuffer commandBuffer,QueryPool queryPool,uint32 firstQuery,uint32 queryCount);

		[CLink]
		public static extern void vkCmdWriteTimestamp(CommandBuffer commandBuffer,PipelineStageFlags pipelineStage,QueryPool queryPool,uint32 query);

		[CLink]
		public static extern void vkCmdCopyQueryPoolResults(CommandBuffer commandBuffer,QueryPool queryPool,uint32 firstQuery,uint32 queryCount,Buffer dstBuffer,DeviceSize dstOffset,DeviceSize stride,QueryResultFlags flags);

		[CLink]
		public static extern void vkCmdPushConstants(CommandBuffer commandBuffer,PipelineLayout layout,ShaderStageFlags stageFlags,uint32 offset,uint32 size,void* pValues);

		[CLink]
		public static extern void vkCmdBeginRenderPass(CommandBuffer commandBuffer,RenderPassBeginInfo* pRenderPassBegin,SubpassContents contents);

		[CLink]
		public static extern void vkCmdNextSubpass(CommandBuffer commandBuffer,SubpassContents contents);

		[CLink]
		public static extern void vkCmdEndRenderPass(CommandBuffer commandBuffer);

		[CLink]
		public static extern void vkCmdExecuteCommands(CommandBuffer commandBuffer,uint32 commandBufferCount,CommandBuffer* pCommandBuffers);

		[CLink]
		public static extern Result vkEnumerateInstanceVersion(uint32* pApiVersion);

		[CLink]
		public static extern Result vkBindBufferMemory2(Device device,uint32 bindInfoCount,BindBufferMemoryInfo* pBindInfos);

		[CLink]
		public static extern Result vkBindImageMemory2(Device device,uint32 bindInfoCount,BindImageMemoryInfo* pBindInfos);

		[CLink]
		public static extern void vkGetDeviceGroupPeerMemoryFeatures(Device device,uint32 heapIndex,uint32 localDeviceIndex,uint32 remoteDeviceIndex,PeerMemoryFeatureFlags* pPeerMemoryFeatures);

		[CLink]
		public static extern void vkCmdSetDeviceMask(CommandBuffer commandBuffer,uint32 deviceMask);

		[CLink]
		public static extern void vkCmdDispatchBase(CommandBuffer commandBuffer,uint32 baseGroupX,uint32 baseGroupY,uint32 baseGroupZ,uint32 groupCountX,uint32 groupCountY,uint32 groupCountZ);

		[CLink]
		public static extern Result vkEnumeratePhysicalDeviceGroups(Instance instance,uint32* pPhysicalDeviceGroupCount,PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties);

		[CLink]
		public static extern void vkGetImageMemoryRequirements2(Device device,ImageMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements);

		[CLink]
		public static extern void vkGetBufferMemoryRequirements2(Device device,BufferMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements);

		[CLink]
		public static extern void vkGetImageSparseMemoryRequirements2(Device device,ImageSparseMemoryRequirementsInfo2* pInfo,uint32* pSparseMemoryRequirementCount,SparseImageMemoryRequirements2* pSparseMemoryRequirements);

		[CLink]
		public static extern void vkGetPhysicalDeviceFeatures2(PhysicalDevice physicalDevice,PhysicalDeviceFeatures2* pFeatures);

		[CLink]
		public static extern void vkGetPhysicalDeviceProperties2(PhysicalDevice physicalDevice,PhysicalDeviceProperties2* pProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceFormatProperties2(PhysicalDevice physicalDevice,Format format,FormatProperties2* pFormatProperties);

		[CLink]
		public static extern Result vkGetPhysicalDeviceImageFormatProperties2(PhysicalDevice physicalDevice,PhysicalDeviceImageFormatInfo2* pImageFormatInfo,ImageFormatProperties2* pImageFormatProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceQueueFamilyProperties2(PhysicalDevice physicalDevice,uint32* pQueueFamilyPropertyCount,QueueFamilyProperties2* pQueueFamilyProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceMemoryProperties2(PhysicalDevice physicalDevice,PhysicalDeviceMemoryProperties2* pMemoryProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceSparseImageFormatProperties2(PhysicalDevice physicalDevice,PhysicalDeviceSparseImageFormatInfo2* pFormatInfo,uint32* pPropertyCount,SparseImageFormatProperties2* pProperties);

		[CLink]
		public static extern void vkTrimCommandPool(Device device,CommandPool commandPool,CommandPoolTrimFlags flags);

		[CLink]
		public static extern void vkGetDeviceQueue2(Device device,DeviceQueueInfo2* pQueueInfo,Queue* pQueue);

		[CLink]
		public static extern Result vkCreateSamplerYcbcrConversion(Device device,SamplerYcbcrConversionCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,SamplerYcbcrConversion* pYcbcrConversion);

		[CLink]
		public static extern void vkDestroySamplerYcbcrConversion(Device device,SamplerYcbcrConversion ycbcrConversion,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkCreateDescriptorUpdateTemplate(Device device,DescriptorUpdateTemplateCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorUpdateTemplate* pDescriptorUpdateTemplate);

		[CLink]
		public static extern void vkDestroyDescriptorUpdateTemplate(Device device,DescriptorUpdateTemplate descriptorUpdateTemplate,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern void vkUpdateDescriptorSetWithTemplate(Device device,DescriptorSet descriptorSet,DescriptorUpdateTemplate descriptorUpdateTemplate,void* pData);

		[CLink]
		public static extern void vkGetPhysicalDeviceExternalBufferProperties(PhysicalDevice physicalDevice,PhysicalDeviceExternalBufferInfo* pExternalBufferInfo,ExternalBufferProperties* pExternalBufferProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceExternalFenceProperties(PhysicalDevice physicalDevice,PhysicalDeviceExternalFenceInfo* pExternalFenceInfo,ExternalFenceProperties* pExternalFenceProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceExternalSemaphoreProperties(PhysicalDevice physicalDevice,PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo,ExternalSemaphoreProperties* pExternalSemaphoreProperties);

		[CLink]
		public static extern void vkGetDescriptorSetLayoutSupport(Device device,DescriptorSetLayoutCreateInfo* pCreateInfo,DescriptorSetLayoutSupport* pSupport);

		[CLink]
		public static extern void vkCmdDrawIndirectCount(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[CLink]
		public static extern void vkCmdDrawIndexedIndirectCount(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[CLink]
		public static extern Result vkCreateRenderPass2(Device device,RenderPassCreateInfo2* pCreateInfo,AllocationCallbacks* pAllocator,RenderPass* pRenderPass);

		[CLink]
		public static extern void vkCmdBeginRenderPass2(CommandBuffer commandBuffer,RenderPassBeginInfo* pRenderPassBegin,SubpassBeginInfo* pSubpassBeginInfo);

		[CLink]
		public static extern void vkCmdNextSubpass2(CommandBuffer commandBuffer,SubpassBeginInfo* pSubpassBeginInfo,SubpassEndInfo* pSubpassEndInfo);

		[CLink]
		public static extern void vkCmdEndRenderPass2(CommandBuffer commandBuffer,SubpassEndInfo* pSubpassEndInfo);

		[CLink]
		public static extern void vkResetQueryPool(Device device,QueryPool queryPool,uint32 firstQuery,uint32 queryCount);

		[CLink]
		public static extern Result vkGetSemaphoreCounterValue(Device device,Semaphore semaphore,uint64* pValue);

		[CLink]
		public static extern Result vkWaitSemaphores(Device device,SemaphoreWaitInfo* pWaitInfo,uint64 timeout);

		[CLink]
		public static extern Result vkSignalSemaphore(Device device,SemaphoreSignalInfo* pSignalInfo);

		[CLink]
		public static extern DeviceAddress vkGetBufferDeviceAddress(Device device,BufferDeviceAddressInfo* pInfo);

		[CLink]
		public static extern uint64 vkGetBufferOpaqueCaptureAddress(Device device,BufferDeviceAddressInfo* pInfo);

		[CLink]
		public static extern uint64 vkGetDeviceMemoryOpaqueCaptureAddress(Device device,DeviceMemoryOpaqueCaptureAddressInfo* pInfo);

		[CLink]
		public static extern void vkDestroySurfaceKHR(Instance instance,SurfaceKHR surface,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkGetPhysicalDeviceSurfaceSupportKHR(PhysicalDevice physicalDevice,uint32 queueFamilyIndex,SurfaceKHR surface,Bool32* pSupported);

		[CLink]
		public static extern Result vkGetPhysicalDeviceSurfaceCapabilitiesKHR(PhysicalDevice physicalDevice,SurfaceKHR surface,SurfaceCapabilitiesKHR* pSurfaceCapabilities);

		[CLink]
		public static extern Result vkGetPhysicalDeviceSurfaceFormatsKHR(PhysicalDevice physicalDevice,SurfaceKHR surface,uint32* pSurfaceFormatCount,SurfaceFormatKHR* pSurfaceFormats);

		[CLink]
		public static extern Result vkGetPhysicalDeviceSurfacePresentModesKHR(PhysicalDevice physicalDevice,SurfaceKHR surface,uint32* pPresentModeCount,PresentModeKHR* pPresentModes);

		[CLink]
		public static extern Result vkCreateSwapchainKHR(Device device,SwapchainCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,SwapchainKHR* pSwapchain);

		[CLink]
		public static extern void vkDestroySwapchainKHR(Device device,SwapchainKHR swapchain,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkGetSwapchainImagesKHR(Device device,SwapchainKHR swapchain,uint32* pSwapchainImageCount,Image* pSwapchainImages);

		[CLink]
		public static extern Result vkAcquireNextImageKHR(Device device,SwapchainKHR swapchain,uint64 timeout,Semaphore semaphore,Fence fence,uint32* pImageIndex);

		[CLink]
		public static extern Result vkQueuePresentKHR(Queue queue,PresentInfoKHR* pPresentInfo);

		[CLink]
		public static extern Result vkGetDeviceGroupPresentCapabilitiesKHR(Device device,DeviceGroupPresentCapabilitiesKHR* pDeviceGroupPresentCapabilities);

		[CLink]
		public static extern Result vkGetDeviceGroupSurfacePresentModesKHR(Device device,SurfaceKHR surface,DeviceGroupPresentModeFlagsKHR* pModes);

		[CLink]
		public static extern Result vkGetPhysicalDevicePresentRectanglesKHR(PhysicalDevice physicalDevice,SurfaceKHR surface,uint32* pRectCount,Rect2D* pRects);

		[CLink]
		public static extern Result vkAcquireNextImage2KHR(Device device,AcquireNextImageInfoKHR* pAcquireInfo,uint32* pImageIndex);

		[CLink]
		public static extern Result vkGetPhysicalDeviceDisplayPropertiesKHR(PhysicalDevice physicalDevice,uint32* pPropertyCount,DisplayPropertiesKHR* pProperties);

		[CLink]
		public static extern Result vkGetPhysicalDeviceDisplayPlanePropertiesKHR(PhysicalDevice physicalDevice,uint32* pPropertyCount,DisplayPlanePropertiesKHR* pProperties);

		[CLink]
		public static extern Result vkGetDisplayPlaneSupportedDisplaysKHR(PhysicalDevice physicalDevice,uint32 planeIndex,uint32* pDisplayCount,DisplayKHR* pDisplays);

		[CLink]
		public static extern Result vkGetDisplayModePropertiesKHR(PhysicalDevice physicalDevice,DisplayKHR display,uint32* pPropertyCount,DisplayModePropertiesKHR* pProperties);

		[CLink]
		public static extern Result vkCreateDisplayModeKHR(PhysicalDevice physicalDevice,DisplayKHR display,DisplayModeCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,DisplayModeKHR* pMode);

		[CLink]
		public static extern Result vkGetDisplayPlaneCapabilitiesKHR(PhysicalDevice physicalDevice,DisplayModeKHR mode,uint32 planeIndex,DisplayPlaneCapabilitiesKHR* pCapabilities);

		[CLink]
		public static extern Result vkCreateDisplayPlaneSurfaceKHR(Instance instance,DisplaySurfaceCreateInfoKHR* pCreateInfo,AllocationCallbacks* pAllocator,SurfaceKHR* pSurface);

		[CLink]
		public static extern Result vkCreateSharedSwapchainsKHR(Device device,uint32 swapchainCount,SwapchainCreateInfoKHR* pCreateInfos,AllocationCallbacks* pAllocator,SwapchainKHR* pSwapchains);

		[CLink]
		public static extern void vkGetPhysicalDeviceFeatures2KHR(PhysicalDevice physicalDevice,PhysicalDeviceFeatures2* pFeatures);

		[CLink]
		public static extern void vkGetPhysicalDeviceProperties2KHR(PhysicalDevice physicalDevice,PhysicalDeviceProperties2* pProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceFormatProperties2KHR(PhysicalDevice physicalDevice,Format format,FormatProperties2* pFormatProperties);

		[CLink]
		public static extern Result vkGetPhysicalDeviceImageFormatProperties2KHR(PhysicalDevice physicalDevice,PhysicalDeviceImageFormatInfo2* pImageFormatInfo,ImageFormatProperties2* pImageFormatProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceQueueFamilyProperties2KHR(PhysicalDevice physicalDevice,uint32* pQueueFamilyPropertyCount,QueueFamilyProperties2* pQueueFamilyProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceMemoryProperties2KHR(PhysicalDevice physicalDevice,PhysicalDeviceMemoryProperties2* pMemoryProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceSparseImageFormatProperties2KHR(PhysicalDevice physicalDevice,PhysicalDeviceSparseImageFormatInfo2* pFormatInfo,uint32* pPropertyCount,SparseImageFormatProperties2* pProperties);

		[CLink]
		public static extern void vkGetDeviceGroupPeerMemoryFeaturesKHR(Device device,uint32 heapIndex,uint32 localDeviceIndex,uint32 remoteDeviceIndex,PeerMemoryFeatureFlags* pPeerMemoryFeatures);

		[CLink]
		public static extern void vkCmdSetDeviceMaskKHR(CommandBuffer commandBuffer,uint32 deviceMask);

		[CLink]
		public static extern void vkCmdDispatchBaseKHR(CommandBuffer commandBuffer,uint32 baseGroupX,uint32 baseGroupY,uint32 baseGroupZ,uint32 groupCountX,uint32 groupCountY,uint32 groupCountZ);

		[CLink]
		public static extern void vkTrimCommandPoolKHR(Device device,CommandPool commandPool,CommandPoolTrimFlags flags);

		[CLink]
		public static extern Result vkEnumeratePhysicalDeviceGroupsKHR(Instance instance,uint32* pPhysicalDeviceGroupCount,PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceExternalBufferPropertiesKHR(PhysicalDevice physicalDevice,PhysicalDeviceExternalBufferInfo* pExternalBufferInfo,ExternalBufferProperties* pExternalBufferProperties);

		[CLink]
		public static extern Result vkGetMemoryFdKHR(Device device,MemoryGetFdInfoKHR* pGetFdInfo,int* pFd);

		[CLink]
		public static extern Result vkGetMemoryFdPropertiesKHR(Device device,ExternalMemoryHandleTypeFlags handleType,int fd,MemoryFdPropertiesKHR* pMemoryFdProperties);

		[CLink]
		public static extern void vkGetPhysicalDeviceExternalSemaphorePropertiesKHR(PhysicalDevice physicalDevice,PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo,ExternalSemaphoreProperties* pExternalSemaphoreProperties);

		[CLink]
		public static extern Result vkImportSemaphoreFdKHR(Device device,ImportSemaphoreFdInfoKHR* pImportSemaphoreFdInfo);

		[CLink]
		public static extern Result vkGetSemaphoreFdKHR(Device device,SemaphoreGetFdInfoKHR* pGetFdInfo,int* pFd);

		[CLink]
		public static extern void vkCmdPushDescriptorSetKHR(CommandBuffer commandBuffer,PipelineBindPoint pipelineBindPoint,PipelineLayout layout,uint32 set,uint32 descriptorWriteCount,WriteDescriptorSet* pDescriptorWrites);

		[CLink]
		public static extern void vkCmdPushDescriptorSetWithTemplateKHR(CommandBuffer commandBuffer,DescriptorUpdateTemplate descriptorUpdateTemplate,PipelineLayout layout,uint32 set,void* pData);

		[CLink]
		public static extern Result vkCreateDescriptorUpdateTemplateKHR(Device device,DescriptorUpdateTemplateCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,DescriptorUpdateTemplate* pDescriptorUpdateTemplate);

		[CLink]
		public static extern void vkDestroyDescriptorUpdateTemplateKHR(Device device,DescriptorUpdateTemplate descriptorUpdateTemplate,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern void vkUpdateDescriptorSetWithTemplateKHR(Device device,DescriptorSet descriptorSet,DescriptorUpdateTemplate descriptorUpdateTemplate,void* pData);

		[CLink]
		public static extern Result vkCreateRenderPass2KHR(Device device,RenderPassCreateInfo2* pCreateInfo,AllocationCallbacks* pAllocator,RenderPass* pRenderPass);

		[CLink]
		public static extern void vkCmdBeginRenderPass2KHR(CommandBuffer commandBuffer,RenderPassBeginInfo* pRenderPassBegin,SubpassBeginInfo* pSubpassBeginInfo);

		[CLink]
		public static extern void vkCmdNextSubpass2KHR(CommandBuffer commandBuffer,SubpassBeginInfo* pSubpassBeginInfo,SubpassEndInfo* pSubpassEndInfo);

		[CLink]
		public static extern void vkCmdEndRenderPass2KHR(CommandBuffer commandBuffer,SubpassEndInfo* pSubpassEndInfo);

		[CLink]
		public static extern Result vkGetSwapchainStatusKHR(Device device,SwapchainKHR swapchain);

		[CLink]
		public static extern void vkGetPhysicalDeviceExternalFencePropertiesKHR(PhysicalDevice physicalDevice,PhysicalDeviceExternalFenceInfo* pExternalFenceInfo,ExternalFenceProperties* pExternalFenceProperties);

		[CLink]
		public static extern Result vkImportFenceFdKHR(Device device,ImportFenceFdInfoKHR* pImportFenceFdInfo);

		[CLink]
		public static extern Result vkGetFenceFdKHR(Device device,FenceGetFdInfoKHR* pGetFdInfo,int* pFd);

		[CLink]
		public static extern Result vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(PhysicalDevice physicalDevice,uint32 queueFamilyIndex,uint32* pCounterCount,PerformanceCounterKHR* pCounters,PerformanceCounterDescriptionKHR* pCounterDescriptions);

		[CLink]
		public static extern void vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(PhysicalDevice physicalDevice,QueryPoolPerformanceCreateInfoKHR* pPerformanceQueryCreateInfo,uint32* pNumPasses);

		[CLink]
		public static extern Result vkAcquireProfilingLockKHR(Device device,AcquireProfilingLockInfoKHR* pInfo);

		[CLink]
		public static extern void vkReleaseProfilingLockKHR(Device device);

		[CLink]
		public static extern Result vkGetPhysicalDeviceSurfaceCapabilities2KHR(PhysicalDevice physicalDevice,PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo,SurfaceCapabilities2KHR* pSurfaceCapabilities);

		[CLink]
		public static extern Result vkGetPhysicalDeviceSurfaceFormats2KHR(PhysicalDevice physicalDevice,PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo,uint32* pSurfaceFormatCount,SurfaceFormat2KHR* pSurfaceFormats);

		[CLink]
		public static extern Result vkGetPhysicalDeviceDisplayProperties2KHR(PhysicalDevice physicalDevice,uint32* pPropertyCount,DisplayProperties2KHR* pProperties);

		[CLink]
		public static extern Result vkGetPhysicalDeviceDisplayPlaneProperties2KHR(PhysicalDevice physicalDevice,uint32* pPropertyCount,DisplayPlaneProperties2KHR* pProperties);

		[CLink]
		public static extern Result vkGetDisplayModeProperties2KHR(PhysicalDevice physicalDevice,DisplayKHR display,uint32* pPropertyCount,DisplayModeProperties2KHR* pProperties);

		[CLink]
		public static extern Result vkGetDisplayPlaneCapabilities2KHR(PhysicalDevice physicalDevice,DisplayPlaneInfo2KHR* pDisplayPlaneInfo,DisplayPlaneCapabilities2KHR* pCapabilities);

		[CLink]
		public static extern void vkGetImageMemoryRequirements2KHR(Device device,ImageMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements);

		[CLink]
		public static extern void vkGetBufferMemoryRequirements2KHR(Device device,BufferMemoryRequirementsInfo2* pInfo,MemoryRequirements2* pMemoryRequirements);

		[CLink]
		public static extern void vkGetImageSparseMemoryRequirements2KHR(Device device,ImageSparseMemoryRequirementsInfo2* pInfo,uint32* pSparseMemoryRequirementCount,SparseImageMemoryRequirements2* pSparseMemoryRequirements);

		[CLink]
		public static extern Result vkCreateSamplerYcbcrConversionKHR(Device device,SamplerYcbcrConversionCreateInfo* pCreateInfo,AllocationCallbacks* pAllocator,SamplerYcbcrConversion* pYcbcrConversion);

		[CLink]
		public static extern void vkDestroySamplerYcbcrConversionKHR(Device device,SamplerYcbcrConversion ycbcrConversion,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkBindBufferMemory2KHR(Device device,uint32 bindInfoCount,BindBufferMemoryInfo* pBindInfos);

		[CLink]
		public static extern Result vkBindImageMemory2KHR(Device device,uint32 bindInfoCount,BindImageMemoryInfo* pBindInfos);

		[CLink]
		public static extern void vkGetDescriptorSetLayoutSupportKHR(Device device,DescriptorSetLayoutCreateInfo* pCreateInfo,DescriptorSetLayoutSupport* pSupport);

		[CLink]
		public static extern void vkCmdDrawIndirectCountKHR(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[CLink]
		public static extern void vkCmdDrawIndexedIndirectCountKHR(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[CLink]
		public static extern Result vkGetSemaphoreCounterValueKHR(Device device,Semaphore semaphore,uint64* pValue);

		[CLink]
		public static extern Result vkWaitSemaphoresKHR(Device device,SemaphoreWaitInfo* pWaitInfo,uint64 timeout);

		[CLink]
		public static extern Result vkSignalSemaphoreKHR(Device device,SemaphoreSignalInfo* pSignalInfo);

		[CLink]
		public static extern DeviceAddress vkGetBufferDeviceAddressKHR(Device device,BufferDeviceAddressInfo* pInfo);

		[CLink]
		public static extern uint64 vkGetBufferOpaqueCaptureAddressKHR(Device device,BufferDeviceAddressInfo* pInfo);

		[CLink]
		public static extern uint64 vkGetDeviceMemoryOpaqueCaptureAddressKHR(Device device,DeviceMemoryOpaqueCaptureAddressInfo* pInfo);

		[CLink]
		public static extern Result vkGetPipelineExecutablePropertiesKHR(Device device,PipelineInfoKHR* pPipelineInfo,uint32* pExecutableCount,PipelineExecutablePropertiesKHR* pProperties);

		[CLink]
		public static extern Result vkGetPipelineExecutableStatisticsKHR(Device device,PipelineExecutableInfoKHR* pExecutableInfo,uint32* pStatisticCount,PipelineExecutableStatisticKHR* pStatistics);

		[CLink]
		public static extern Result vkGetPipelineExecutableInternalRepresentationsKHR(Device device,PipelineExecutableInfoKHR* pExecutableInfo,uint32* pInternalRepresentationCount,PipelineExecutableInternalRepresentationKHR* pInternalRepresentations);

		[CLink]
		public static extern Result vkCreateDebugReportCallbackEXT(Instance instance,DebugReportCallbackCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,DebugReportCallbackEXT* pCallback);

		[CLink]
		public static extern void vkDestroyDebugReportCallbackEXT(Instance instance,DebugReportCallbackEXT callback,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern void vkDebugReportMessageEXT(Instance instance,DebugReportFlagsEXT flags,DebugReportObjectTypeEXT objectType,uint64 object,uint location,int32 messageCode,char8* pLayerPrefix,char8* pMessage);

		[CLink]
		public static extern Result vkDebugMarkerSetObjectTagEXT(Device device,DebugMarkerObjectTagInfoEXT* pTagInfo);

		[CLink]
		public static extern Result vkDebugMarkerSetObjectNameEXT(Device device,DebugMarkerObjectNameInfoEXT* pNameInfo);

		[CLink]
		public static extern void vkCmdDebugMarkerBeginEXT(CommandBuffer commandBuffer,DebugMarkerMarkerInfoEXT* pMarkerInfo);

		[CLink]
		public static extern void vkCmdDebugMarkerEndEXT(CommandBuffer commandBuffer);

		[CLink]
		public static extern void vkCmdDebugMarkerInsertEXT(CommandBuffer commandBuffer,DebugMarkerMarkerInfoEXT* pMarkerInfo);

		[CLink]
		public static extern void vkCmdBindTransformFeedbackBuffersEXT(CommandBuffer commandBuffer,uint32 firstBinding,uint32 bindingCount,Buffer* pBuffers,DeviceSize* pOffsets,DeviceSize* pSizes);

		[CLink]
		public static extern void vkCmdBeginTransformFeedbackEXT(CommandBuffer commandBuffer,uint32 firstCounterBuffer,uint32 counterBufferCount,Buffer* pCounterBuffers,DeviceSize* pCounterBufferOffsets);

		[CLink]
		public static extern void vkCmdEndTransformFeedbackEXT(CommandBuffer commandBuffer,uint32 firstCounterBuffer,uint32 counterBufferCount,Buffer* pCounterBuffers,DeviceSize* pCounterBufferOffsets);

		[CLink]
		public static extern void vkCmdBeginQueryIndexedEXT(CommandBuffer commandBuffer,QueryPool queryPool,uint32 query,QueryControlFlags flags,uint32 index);

		[CLink]
		public static extern void vkCmdEndQueryIndexedEXT(CommandBuffer commandBuffer,QueryPool queryPool,uint32 query,uint32 index);

		[CLink]
		public static extern void vkCmdDrawIndirectByteCountEXT(CommandBuffer commandBuffer,uint32 instanceCount,uint32 firstInstance,Buffer counterBuffer,DeviceSize counterBufferOffset,uint32 counterOffset,uint32 vertexStride);

		[CLink]
		public static extern uint32 vkGetImageViewHandleNVX(Device device,ImageViewHandleInfoNVX* pInfo);

		[CLink]
		public static extern void vkCmdDrawIndirectCountAMD(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[CLink]
		public static extern void vkCmdDrawIndexedIndirectCountAMD(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[CLink]
		public static extern Result vkGetShaderInfoAMD(Device device,Pipeline pipeline,ShaderStageFlags shaderStage,ShaderInfoTypeAMD infoType,uint* pInfoSize,void* pInfo);

		[CLink]
		public static extern Result vkGetPhysicalDeviceExternalImageFormatPropertiesNV(PhysicalDevice physicalDevice,Format format,ImageType type,ImageTiling tiling,ImageUsageFlags usage,ImageCreateFlags flags,ExternalMemoryHandleTypeFlagsNV externalHandleType,ExternalImageFormatPropertiesNV* pExternalImageFormatProperties);

		[CLink]
		public static extern void vkCmdBeginConditionalRenderingEXT(CommandBuffer commandBuffer,ConditionalRenderingBeginInfoEXT* pConditionalRenderingBegin);

		[CLink]
		public static extern void vkCmdEndConditionalRenderingEXT(CommandBuffer commandBuffer);

		[CLink]
		public static extern void vkCmdSetViewportWScalingNV(CommandBuffer commandBuffer,uint32 firstViewport,uint32 viewportCount,ViewportWScalingNV* pViewportWScalings);

		[CLink]
		public static extern Result vkReleaseDisplayEXT(PhysicalDevice physicalDevice,DisplayKHR display);

		[CLink]
		public static extern Result vkGetPhysicalDeviceSurfaceCapabilities2EXT(PhysicalDevice physicalDevice,SurfaceKHR surface,SurfaceCapabilities2EXT* pSurfaceCapabilities);

		[CLink]
		public static extern Result vkDisplayPowerControlEXT(Device device,DisplayKHR display,DisplayPowerInfoEXT* pDisplayPowerInfo);

		[CLink]
		public static extern Result vkRegisterDeviceEventEXT(Device device,DeviceEventInfoEXT* pDeviceEventInfo,AllocationCallbacks* pAllocator,Fence* pFence);

		[CLink]
		public static extern Result vkRegisterDisplayEventEXT(Device device,DisplayKHR display,DisplayEventInfoEXT* pDisplayEventInfo,AllocationCallbacks* pAllocator,Fence* pFence);

		[CLink]
		public static extern Result vkGetSwapchainCounterEXT(Device device,SwapchainKHR swapchain,SurfaceCounterFlagsEXT counter,uint64* pCounterValue);

		[CLink]
		public static extern Result vkGetRefreshCycleDurationGOOGLE(Device device,SwapchainKHR swapchain,RefreshCycleDurationGOOGLE* pDisplayTimingProperties);

		[CLink]
		public static extern Result vkGetPastPresentationTimingGOOGLE(Device device,SwapchainKHR swapchain,uint32* pPresentationTimingCount,PastPresentationTimingGOOGLE* pPresentationTimings);

		[CLink]
		public static extern void vkCmdSetDiscardRectangleEXT(CommandBuffer commandBuffer,uint32 firstDiscardRectangle,uint32 discardRectangleCount,Rect2D* pDiscardRectangles);

		[CLink]
		public static extern void vkSetHdrMetadataEXT(Device device,uint32 swapchainCount,SwapchainKHR* pSwapchains,HdrMetadataEXT* pMetadata);

		[CLink]
		public static extern Result vkSetDebugUtilsObjectNameEXT(Device device,DebugUtilsObjectNameInfoEXT* pNameInfo);

		[CLink]
		public static extern Result vkSetDebugUtilsObjectTagEXT(Device device,DebugUtilsObjectTagInfoEXT* pTagInfo);

		[CLink]
		public static extern void vkQueueBeginDebugUtilsLabelEXT(Queue queue,DebugUtilsLabelEXT* pLabelInfo);

		[CLink]
		public static extern void vkQueueEndDebugUtilsLabelEXT(Queue queue);

		[CLink]
		public static extern void vkQueueInsertDebugUtilsLabelEXT(Queue queue,DebugUtilsLabelEXT* pLabelInfo);

		[CLink]
		public static extern void vkCmdBeginDebugUtilsLabelEXT(CommandBuffer commandBuffer,DebugUtilsLabelEXT* pLabelInfo);

		[CLink]
		public static extern void vkCmdEndDebugUtilsLabelEXT(CommandBuffer commandBuffer);

		[CLink]
		public static extern void vkCmdInsertDebugUtilsLabelEXT(CommandBuffer commandBuffer,DebugUtilsLabelEXT* pLabelInfo);

		[CLink]
		public static extern Result vkCreateDebugUtilsMessengerEXT(Instance instance,DebugUtilsMessengerCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,DebugUtilsMessengerEXT* pMessenger);

		[CLink]
		public static extern void vkDestroyDebugUtilsMessengerEXT(Instance instance,DebugUtilsMessengerEXT messenger,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern void vkSubmitDebugUtilsMessageEXT(Instance instance,DebugUtilsMessageSeverityFlagsEXT messageSeverity,DebugUtilsMessageTypeFlagsEXT messageTypes,DebugUtilsMessengerCallbackDataEXT* pCallbackData);

		[CLink]
		public static extern void vkCmdSetSampleLocationsEXT(CommandBuffer commandBuffer,SampleLocationsInfoEXT* pSampleLocationsInfo);

		[CLink]
		public static extern void vkGetPhysicalDeviceMultisamplePropertiesEXT(PhysicalDevice physicalDevice,SampleCountFlags samples,MultisamplePropertiesEXT* pMultisampleProperties);

		[CLink]
		public static extern Result vkGetImageDrmFormatModifierPropertiesEXT(Device device,Image image,ImageDrmFormatModifierPropertiesEXT* pProperties);

		[CLink]
		public static extern Result vkCreateValidationCacheEXT(Device device,ValidationCacheCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,ValidationCacheEXT* pValidationCache);

		[CLink]
		public static extern void vkDestroyValidationCacheEXT(Device device,ValidationCacheEXT validationCache,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern Result vkMergeValidationCachesEXT(Device device,ValidationCacheEXT dstCache,uint32 srcCacheCount,ValidationCacheEXT* pSrcCaches);

		[CLink]
		public static extern Result vkGetValidationCacheDataEXT(Device device,ValidationCacheEXT validationCache,uint* pDataSize,void* pData);

		[CLink]
		public static extern void vkCmdBindShadingRateImageNV(CommandBuffer commandBuffer,ImageView imageView,ImageLayout imageLayout);

		[CLink]
		public static extern void vkCmdSetViewportShadingRatePaletteNV(CommandBuffer commandBuffer,uint32 firstViewport,uint32 viewportCount,ShadingRatePaletteNV* pShadingRatePalettes);

		[CLink]
		public static extern void vkCmdSetCoarseSampleOrderNV(CommandBuffer commandBuffer,CoarseSampleOrderTypeNV sampleOrderType,uint32 customSampleOrderCount,CoarseSampleOrderCustomNV* pCustomSampleOrders);

		[CLink]
		public static extern Result vkCreateAccelerationStructureNV(Device device,AccelerationStructureCreateInfoNV* pCreateInfo,AllocationCallbacks* pAllocator,AccelerationStructureNV* pAccelerationStructure);

		[CLink]
		public static extern void vkDestroyAccelerationStructureKHR(Device device,AccelerationStructureKHR accelerationStructure,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern void vkDestroyAccelerationStructureNV(Device device,AccelerationStructureKHR accelerationStructure,AllocationCallbacks* pAllocator);

		[CLink]
		public static extern void vkGetAccelerationStructureMemoryRequirementsNV(Device device,AccelerationStructureMemoryRequirementsInfoNV* pInfo,MemoryRequirements2KHR* pMemoryRequirements);

		[CLink]
		public static extern Result vkBindAccelerationStructureMemoryKHR(Device device,uint32 bindInfoCount,BindAccelerationStructureMemoryInfoKHR* pBindInfos);

		[CLink]
		public static extern Result vkBindAccelerationStructureMemoryNV(Device device,uint32 bindInfoCount,BindAccelerationStructureMemoryInfoKHR* pBindInfos);

		[CLink]
		public static extern void vkCmdBuildAccelerationStructureNV(CommandBuffer commandBuffer,AccelerationStructureInfoNV* pInfo,Buffer instanceData,DeviceSize instanceOffset,Bool32 update,AccelerationStructureKHR dst,AccelerationStructureKHR src,Buffer scratch,DeviceSize scratchOffset);

		[CLink]
		public static extern void vkCmdCopyAccelerationStructureNV(CommandBuffer commandBuffer,AccelerationStructureKHR dst,AccelerationStructureKHR src,CopyAccelerationStructureModeKHR mode);

		[CLink]
		public static extern void vkCmdTraceRaysNV(CommandBuffer commandBuffer,Buffer raygenShaderBindingTableBuffer,DeviceSize raygenShaderBindingOffset,Buffer missShaderBindingTableBuffer,DeviceSize missShaderBindingOffset,DeviceSize missShaderBindingStride,Buffer hitShaderBindingTableBuffer,DeviceSize hitShaderBindingOffset,DeviceSize hitShaderBindingStride,Buffer callableShaderBindingTableBuffer,DeviceSize callableShaderBindingOffset,DeviceSize callableShaderBindingStride,uint32 width,uint32 height,uint32 depth);

		[CLink]
		public static extern Result vkCreateRayTracingPipelinesNV(Device device,PipelineCache pipelineCache,uint32 createInfoCount,RayTracingPipelineCreateInfoNV* pCreateInfos,AllocationCallbacks* pAllocator,Pipeline* pPipelines);

		[CLink]
		public static extern Result vkGetRayTracingShaderGroupHandlesKHR(Device device,Pipeline pipeline,uint32 firstGroup,uint32 groupCount,uint dataSize,void* pData);

		[CLink]
		public static extern Result vkGetRayTracingShaderGroupHandlesNV(Device device,Pipeline pipeline,uint32 firstGroup,uint32 groupCount,uint dataSize,void* pData);

		[CLink]
		public static extern Result vkGetAccelerationStructureHandleNV(Device device,AccelerationStructureKHR accelerationStructure,uint dataSize,void* pData);

		[CLink]
		public static extern void vkCmdWriteAccelerationStructuresPropertiesKHR(CommandBuffer commandBuffer,uint32 accelerationStructureCount,AccelerationStructureKHR* pAccelerationStructures,QueryType queryType,QueryPool queryPool,uint32 firstQuery);

		[CLink]
		public static extern void vkCmdWriteAccelerationStructuresPropertiesNV(CommandBuffer commandBuffer,uint32 accelerationStructureCount,AccelerationStructureKHR* pAccelerationStructures,QueryType queryType,QueryPool queryPool,uint32 firstQuery);

		[CLink]
		public static extern Result vkCompileDeferredNV(Device device,Pipeline pipeline,uint32 shader);

		[CLink]
		public static extern Result vkGetMemoryHostPointerPropertiesEXT(Device device,ExternalMemoryHandleTypeFlags handleType,void* pHostPointer,MemoryHostPointerPropertiesEXT* pMemoryHostPointerProperties);

		[CLink]
		public static extern void vkCmdWriteBufferMarkerAMD(CommandBuffer commandBuffer,PipelineStageFlags pipelineStage,Buffer dstBuffer,DeviceSize dstOffset,uint32 marker);

		[CLink]
		public static extern Result vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(PhysicalDevice physicalDevice,uint32* pTimeDomainCount,TimeDomainEXT* pTimeDomains);

		[CLink]
		public static extern Result vkGetCalibratedTimestampsEXT(Device device,uint32 timestampCount,CalibratedTimestampInfoEXT* pTimestampInfos,uint64* pTimestamps,uint64* pMaxDeviation);

		[CLink]
		public static extern void vkCmdDrawMeshTasksNV(CommandBuffer commandBuffer,uint32 taskCount,uint32 firstTask);

		[CLink]
		public static extern void vkCmdDrawMeshTasksIndirectNV(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,uint32 drawCount,uint32 stride);

		[CLink]
		public static extern void vkCmdDrawMeshTasksIndirectCountNV(CommandBuffer commandBuffer,Buffer buffer,DeviceSize offset,Buffer countBuffer,DeviceSize countBufferOffset,uint32 maxDrawCount,uint32 stride);

		[CLink]
		public static extern void vkCmdSetExclusiveScissorNV(CommandBuffer commandBuffer,uint32 firstExclusiveScissor,uint32 exclusiveScissorCount,Rect2D* pExclusiveScissors);

		[CLink]
		public static extern void vkCmdSetCheckpointNV(CommandBuffer commandBuffer,void* pCheckpointMarker);

		[CLink]
		public static extern void vkGetQueueCheckpointDataNV(Queue queue,uint32* pCheckpointDataCount,CheckpointDataNV* pCheckpointData);

		[CLink]
		public static extern Result vkInitializePerformanceApiINTEL(Device device,InitializePerformanceApiInfoINTEL* pInitializeInfo);

		[CLink]
		public static extern void vkUninitializePerformanceApiINTEL(Device device);

		[CLink]
		public static extern Result vkCmdSetPerformanceMarkerINTEL(CommandBuffer commandBuffer,PerformanceMarkerInfoINTEL* pMarkerInfo);

		[CLink]
		public static extern Result vkCmdSetPerformanceStreamMarkerINTEL(CommandBuffer commandBuffer,PerformanceStreamMarkerInfoINTEL* pMarkerInfo);

		[CLink]
		public static extern Result vkCmdSetPerformanceOverrideINTEL(CommandBuffer commandBuffer,PerformanceOverrideInfoINTEL* pOverrideInfo);

		[CLink]
		public static extern Result vkAcquirePerformanceConfigurationINTEL(Device device,PerformanceConfigurationAcquireInfoINTEL* pAcquireInfo,PerformanceConfigurationINTEL* pConfiguration);

		[CLink]
		public static extern Result vkReleasePerformanceConfigurationINTEL(Device device,PerformanceConfigurationINTEL configuration);

		[CLink]
		public static extern Result vkQueueSetPerformanceConfigurationINTEL(Queue queue,PerformanceConfigurationINTEL configuration);

		[CLink]
		public static extern Result vkGetPerformanceParameterINTEL(Device device,PerformanceParameterTypeINTEL parameter,PerformanceValueINTEL* pValue);

		[CLink]
		public static extern void vkSetLocalDimmingAMD(Device device,SwapchainKHR swapChain,Bool32 localDimmingEnable);

		[CLink]
		public static extern DeviceAddress vkGetBufferDeviceAddressEXT(Device device,BufferDeviceAddressInfo* pInfo);

		[CLink]
		public static extern Result vkGetPhysicalDeviceToolPropertiesEXT(PhysicalDevice physicalDevice,uint32* pToolCount,PhysicalDeviceToolPropertiesEXT* pToolProperties);

		[CLink]
		public static extern Result vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(PhysicalDevice physicalDevice,uint32* pPropertyCount,CooperativeMatrixPropertiesNV* pProperties);

		[CLink]
		public static extern Result vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(PhysicalDevice physicalDevice,uint32* pCombinationCount,FramebufferMixedSamplesCombinationNV* pCombinations);

		[CLink]
		public static extern Result vkCreateHeadlessSurfaceEXT(Instance instance,HeadlessSurfaceCreateInfoEXT* pCreateInfo,AllocationCallbacks* pAllocator,SurfaceKHR* pSurface);

		[CLink]
		public static extern void vkCmdSetLineStippleEXT(CommandBuffer commandBuffer,uint32 lineStippleFactor,uint16 lineStipplePattern);

		[CLink]
		public static extern void vkResetQueryPoolEXT(Device device,QueryPool queryPool,uint32 firstQuery,uint32 queryCount);

		[CLink]
		public static extern void vkGetGeneratedCommandsMemoryRequirementsNV(Device device,GeneratedCommandsMemoryRequirementsInfoNV* pInfo,MemoryRequirements2* pMemoryRequirements);

		[CLink]
		public static extern void vkCmdPreprocessGeneratedCommandsNV(CommandBuffer commandBuffer,GeneratedCommandsInfoNV* pGeneratedCommandsInfo);

		[CLink]
		public static extern void vkCmdExecuteGeneratedCommandsNV(CommandBuffer commandBuffer,Bool32 isPreprocessed,GeneratedCommandsInfoNV* pGeneratedCommandsInfo);

		[CLink]
		public static extern void vkCmdBindPipelineShaderGroupNV(CommandBuffer commandBuffer,PipelineBindPoint pipelineBindPoint,Pipeline pipeline,uint32 groupIndex);

		[CLink]
		public static extern Result vkCreateIndirectCommandsLayoutNV(Device device,IndirectCommandsLayoutCreateInfoNV* pCreateInfo,AllocationCallbacks* pAllocator,IndirectCommandsLayoutNV* pIndirectCommandsLayout);

		[CLink]
		public static extern void vkDestroyIndirectCommandsLayoutNV(Device device,IndirectCommandsLayoutNV indirectCommandsLayout,AllocationCallbacks* pAllocator);


}
}