using System;

namespace Vulkan 
{
	function void* PFN_vkAllocationFunction(void* pUserData, uint size, uint alignment, SystemAllocationScope allocationScope);

	function void* PFN_vkReallocationFunction(void* pUserData, void* pOriginal, uint size, uint alignment, SystemAllocationScope allocationScope);

	function void PFN_vkFreeFunction(void* pUserData, void* pMemory);

	function void PFN_vkInternalAllocationNotification(void* pUserData, uint size, InternalAllocationType allocationType, SystemAllocationScope allocationScope);

	function void PFN_vkInternalFreeNotification(void* pUserData, uint size, InternalAllocationType allocationType, SystemAllocationScope allocationScope);

	function void PFN_vkVoidFunction();

	function Result PFN_vkCreateInstance(InstanceCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Instance* pInstance);

	function void PFN_vkDestroyInstance(Instance instance, AllocationCallbacks* pAllocator);

	function Result PFN_vkEnumeratePhysicalDevices(Instance instance, uint32* pPhysicalDeviceCount, PhysicalDevice* pPhysicalDevices);

	function void PFN_vkGetPhysicalDeviceFeatures(PhysicalDevice physicalDevice, PhysicalDeviceFeatures* pFeatures);

	function void PFN_vkGetPhysicalDeviceFormatProperties(PhysicalDevice physicalDevice, Format format, FormatProperties* pFormatProperties);

	function Result PFN_vkGetPhysicalDeviceImageFormatProperties(PhysicalDevice physicalDevice, Format format, ImageType type, ImageTiling tiling, ImageUsageFlags usage, ImageCreateFlags flags, ImageFormatProperties* pImageFormatProperties);

	function void PFN_vkGetPhysicalDeviceProperties(PhysicalDevice physicalDevice, PhysicalDeviceProperties* pProperties);

	function void PFN_vkGetPhysicalDeviceQueueFamilyProperties(PhysicalDevice physicalDevice, uint32* pQueueFamilyPropertyCount, QueueFamilyProperties* pQueueFamilyProperties);

	function void PFN_vkGetPhysicalDeviceMemoryProperties(PhysicalDevice physicalDevice, PhysicalDeviceMemoryProperties* pMemoryProperties);

	function PFN_vkVoidFunction PFN_vkGetInstanceProcAddr(Instance instance, char8* pName);

	function PFN_vkVoidFunction PFN_vkGetDeviceProcAddr(Device device, char8* pName);

	function Result PFN_vkCreateDevice(PhysicalDevice physicalDevice, DeviceCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Device* pDevice);

	function void PFN_vkDestroyDevice(Device device, AllocationCallbacks* pAllocator);

	function Result PFN_vkEnumerateInstanceExtensionProperties(char8* pLayerName, uint32* pPropertyCount, ExtensionProperties* pProperties);

	function Result PFN_vkEnumerateDeviceExtensionProperties(PhysicalDevice physicalDevice, char8* pLayerName, uint32* pPropertyCount, ExtensionProperties* pProperties);

	function Result PFN_vkEnumerateInstanceLayerProperties(uint32* pPropertyCount, LayerProperties* pProperties);

	function Result PFN_vkEnumerateDeviceLayerProperties(PhysicalDevice physicalDevice, uint32* pPropertyCount, LayerProperties* pProperties);

	function void PFN_vkGetDeviceQueue(Device device, uint32 queueFamilyIndex, uint32 queueIndex, Queue* pQueue);

	function Result PFN_vkQueueSubmit(Queue queue, uint32 submitCount, SubmitInfo* pSubmits, Fence fence);

	function Result PFN_vkQueueWaitIdle(Queue queue);

	function Result PFN_vkDeviceWaitIdle(Device device);

	function Result PFN_vkAllocateMemory(Device device, MemoryAllocateInfo* pAllocateInfo, AllocationCallbacks* pAllocator, DeviceMemory* pMemory);

	function void PFN_vkFreeMemory(Device device, DeviceMemory memory, AllocationCallbacks* pAllocator);

	function Result PFN_vkMapMemory(Device device, DeviceMemory memory, DeviceSize offset, DeviceSize size, MemoryMapFlags flags, void** ppData);

	function void PFN_vkUnmapMemory(Device device, DeviceMemory memory);

	function Result PFN_vkFlushMappedMemoryRanges(Device device, uint32 memoryRangeCount, MappedMemoryRange* pMemoryRanges);

	function Result PFN_vkInvalidateMappedMemoryRanges(Device device, uint32 memoryRangeCount, MappedMemoryRange* pMemoryRanges);

	function void PFN_vkGetDeviceMemoryCommitment(Device device, DeviceMemory memory, DeviceSize* pCommittedMemoryInBytes);

	function Result PFN_vkBindBufferMemory(Device device, Buffer buffer, DeviceMemory memory, DeviceSize memoryOffset);

	function Result PFN_vkBindImageMemory(Device device, Image image, DeviceMemory memory, DeviceSize memoryOffset);

	function void PFN_vkGetBufferMemoryRequirements(Device device, Buffer buffer, MemoryRequirements* pMemoryRequirements);

	function void PFN_vkGetImageMemoryRequirements(Device device, Image image, MemoryRequirements* pMemoryRequirements);

	function void PFN_vkGetImageSparseMemoryRequirements(Device device, Image image, uint32* pSparseMemoryRequirementCount, SparseImageMemoryRequirements* pSparseMemoryRequirements);

	function void PFN_vkGetPhysicalDeviceSparseImageFormatProperties(PhysicalDevice physicalDevice, Format format, ImageType type, SampleCountFlags samples, ImageUsageFlags usage, ImageTiling tiling, uint32* pPropertyCount, SparseImageFormatProperties* pProperties);

	function Result PFN_vkQueueBindSparse(Queue queue, uint32 bindInfoCount, BindSparseInfo* pBindInfo, Fence fence);

	function Result PFN_vkCreateFence(Device device, FenceCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Fence* pFence);

	function void PFN_vkDestroyFence(Device device, Fence fence, AllocationCallbacks* pAllocator);

	function Result PFN_vkResetFences(Device device, uint32 fenceCount, Fence* pFences);

	function Result PFN_vkGetFenceStatus(Device device, Fence fence);

	function Result PFN_vkWaitForFences(Device device, uint32 fenceCount, Fence* pFences, Bool32 waitAll, uint64 timeout);

	function Result PFN_vkCreateSemaphore(Device device, SemaphoreCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Semaphore* pSemaphore);

	function void PFN_vkDestroySemaphore(Device device, Semaphore semaphore, AllocationCallbacks* pAllocator);

	function Result PFN_vkCreateEvent(Device device, EventCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Event* pEvent);

	function void PFN_vkDestroyEvent(Device device, Event event, AllocationCallbacks* pAllocator);

	function Result PFN_vkGetEventStatus(Device device, Event event);

	function Result PFN_vkSetEvent(Device device, Event event);

	function Result PFN_vkResetEvent(Device device, Event event);

	function Result PFN_vkCreateQueryPool(Device device, QueryPoolCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, QueryPool* pQueryPool);

	function void PFN_vkDestroyQueryPool(Device device, QueryPool queryPool, AllocationCallbacks* pAllocator);

	function Result PFN_vkGetQueryPoolResults(Device device, QueryPool queryPool, uint32 firstQuery, uint32 queryCount, uint dataSize, void* pData, DeviceSize stride, QueryResultFlags flags);

	function Result PFN_vkCreateBuffer(Device device, BufferCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Buffer* pBuffer);

	function void PFN_vkDestroyBuffer(Device device, Buffer buffer, AllocationCallbacks* pAllocator);

	function Result PFN_vkCreateBufferView(Device device, BufferViewCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, BufferView* pView);

	function void PFN_vkDestroyBufferView(Device device, BufferView bufferView, AllocationCallbacks* pAllocator);

	function Result PFN_vkCreateImage(Device device, ImageCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Image* pImage);

	function void PFN_vkDestroyImage(Device device, Image image, AllocationCallbacks* pAllocator);

	function void PFN_vkGetImageSubresourceLayout(Device device, Image image, ImageSubresource* pSubresource, SubresourceLayout* pLayout);

	function Result PFN_vkCreateImageView(Device device, ImageViewCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, ImageView* pView);

	function void PFN_vkDestroyImageView(Device device, ImageView imageView, AllocationCallbacks* pAllocator);

	function Result PFN_vkCreateShaderModule(Device device, ShaderModuleCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, ShaderModule* pShaderModule);

	function void PFN_vkDestroyShaderModule(Device device, ShaderModule shaderModule, AllocationCallbacks* pAllocator);

	function Result PFN_vkCreatePipelineCache(Device device, PipelineCacheCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PipelineCache* pPipelineCache);

	function void PFN_vkDestroyPipelineCache(Device device, PipelineCache pipelineCache, AllocationCallbacks* pAllocator);

	function Result PFN_vkGetPipelineCacheData(Device device, PipelineCache pipelineCache, uint* pDataSize, void* pData);

	function Result PFN_vkMergePipelineCaches(Device device, PipelineCache dstCache, uint32 srcCacheCount, PipelineCache* pSrcCaches);

	function Result PFN_vkCreateGraphicsPipelines(Device device, PipelineCache pipelineCache, uint32 createInfoCount, GraphicsPipelineCreateInfo* pCreateInfos, AllocationCallbacks* pAllocator, Pipeline* pPipelines);

	function Result PFN_vkCreateComputePipelines(Device device, PipelineCache pipelineCache, uint32 createInfoCount, ComputePipelineCreateInfo* pCreateInfos, AllocationCallbacks* pAllocator, Pipeline* pPipelines);

	function void PFN_vkDestroyPipeline(Device device, Pipeline pipeline, AllocationCallbacks* pAllocator);

	function Result PFN_vkCreatePipelineLayout(Device device, PipelineLayoutCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PipelineLayout* pPipelineLayout);

	function void PFN_vkDestroyPipelineLayout(Device device, PipelineLayout pipelineLayout, AllocationCallbacks* pAllocator);

	function Result PFN_vkCreateSampler(Device device, SamplerCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Sampler* pSampler);

	function void PFN_vkDestroySampler(Device device, Sampler sampler, AllocationCallbacks* pAllocator);

	function Result PFN_vkCreateDescriptorSetLayout(Device device, DescriptorSetLayoutCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorSetLayout* pSetLayout);

	function void PFN_vkDestroyDescriptorSetLayout(Device device, DescriptorSetLayout descriptorSetLayout, AllocationCallbacks* pAllocator);

	function Result PFN_vkCreateDescriptorPool(Device device, DescriptorPoolCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorPool* pDescriptorPool);

	function void PFN_vkDestroyDescriptorPool(Device device, DescriptorPool descriptorPool, AllocationCallbacks* pAllocator);

	function Result PFN_vkResetDescriptorPool(Device device, DescriptorPool descriptorPool, DescriptorPoolResetFlags flags);

	function Result PFN_vkAllocateDescriptorSets(Device device, DescriptorSetAllocateInfo* pAllocateInfo, DescriptorSet* pDescriptorSets);

	function Result PFN_vkFreeDescriptorSets(Device device, DescriptorPool descriptorPool, uint32 descriptorSetCount, DescriptorSet* pDescriptorSets);

	function void PFN_vkUpdateDescriptorSets(Device device, uint32 descriptorWriteCount, WriteDescriptorSet* pDescriptorWrites, uint32 descriptorCopyCount, CopyDescriptorSet* pDescriptorCopies);

	function Result PFN_vkCreateFramebuffer(Device device, FramebufferCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Framebuffer* pFramebuffer);

	function void PFN_vkDestroyFramebuffer(Device device, Framebuffer framebuffer, AllocationCallbacks* pAllocator);

	function Result PFN_vkCreateRenderPass(Device device, RenderPassCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, RenderPass* pRenderPass);

	function void PFN_vkDestroyRenderPass(Device device, RenderPass renderPass, AllocationCallbacks* pAllocator);

	function void PFN_vkGetRenderAreaGranularity(Device device, RenderPass renderPass, Extent2D* pGranularity);

	function Result PFN_vkCreateCommandPool(Device device, CommandPoolCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, CommandPool* pCommandPool);

	function void PFN_vkDestroyCommandPool(Device device, CommandPool commandPool, AllocationCallbacks* pAllocator);

	function Result PFN_vkResetCommandPool(Device device, CommandPool commandPool, CommandPoolResetFlags flags);

	function Result PFN_vkAllocateCommandBuffers(Device device, CommandBufferAllocateInfo* pAllocateInfo, CommandBuffer* pCommandBuffers);

	function void PFN_vkFreeCommandBuffers(Device device, CommandPool commandPool, uint32 commandBufferCount, CommandBuffer* pCommandBuffers);

	function Result PFN_vkBeginCommandBuffer(CommandBuffer commandBuffer, CommandBufferBeginInfo* pBeginInfo);

	function Result PFN_vkEndCommandBuffer(CommandBuffer commandBuffer);

	function Result PFN_vkResetCommandBuffer(CommandBuffer commandBuffer, CommandBufferResetFlags flags);

	function void PFN_vkCmdBindPipeline(CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, Pipeline pipeline);

	function void PFN_vkCmdSetViewport(CommandBuffer commandBuffer, uint32 firstViewport, uint32 viewportCount, Viewport* pViewports);

	function void PFN_vkCmdSetScissor(CommandBuffer commandBuffer, uint32 firstScissor, uint32 scissorCount, Rect2D* pScissors);

	function void PFN_vkCmdSetLineWidth(CommandBuffer commandBuffer, float lineWidth);

	function void PFN_vkCmdSetDepthBias(CommandBuffer commandBuffer, float depthBiasConstantFactor, float depthBiasClamp, float depthBiasSlopeFactor);

	function void PFN_vkCmdSetBlendConstants(CommandBuffer commandBuffer, float blendConstants);

	function void PFN_vkCmdSetDepthBounds(CommandBuffer commandBuffer, float minDepthBounds, float maxDepthBounds);

	function void PFN_vkCmdSetStencilCompareMask(CommandBuffer commandBuffer, StencilFaceFlags faceMask, uint32 compareMask);

	function void PFN_vkCmdSetStencilWriteMask(CommandBuffer commandBuffer, StencilFaceFlags faceMask, uint32 writeMask);

	function void PFN_vkCmdSetStencilReference(CommandBuffer commandBuffer, StencilFaceFlags faceMask, uint32 reference);

	function void PFN_vkCmdBindDescriptorSets(CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint32 firstSet, uint32 descriptorSetCount, DescriptorSet* pDescriptorSets, uint32 dynamicOffsetCount, uint32* pDynamicOffsets);

	function void PFN_vkCmdBindIndexBuffer(CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, IndexType indexType);

	function void PFN_vkCmdBindVertexBuffers(CommandBuffer commandBuffer, uint32 firstBinding, uint32 bindingCount, Buffer* pBuffers, DeviceSize* pOffsets);

	function void PFN_vkCmdDraw(CommandBuffer commandBuffer, uint32 vertexCount, uint32 instanceCount, uint32 firstVertex, uint32 firstInstance);

	function void PFN_vkCmdDrawIndexed(CommandBuffer commandBuffer, uint32 indexCount, uint32 instanceCount, uint32 firstIndex, int32 vertexOffset, uint32 firstInstance);

	function void PFN_vkCmdDrawIndirect(CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, uint32 drawCount, uint32 stride);

	function void PFN_vkCmdDrawIndexedIndirect(CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, uint32 drawCount, uint32 stride);

	function void PFN_vkCmdDispatch(CommandBuffer commandBuffer, uint32 groupCountX, uint32 groupCountY, uint32 groupCountZ);

	function void PFN_vkCmdDispatchIndirect(CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset);

	function void PFN_vkCmdCopyBuffer(CommandBuffer commandBuffer, Buffer srcBuffer, Buffer dstBuffer, uint32 regionCount, BufferCopy* pRegions);

	function void PFN_vkCmdCopyImage(CommandBuffer commandBuffer, Image srcImage, ImageLayout srcImageLayout, Image dstImage, ImageLayout dstImageLayout, uint32 regionCount, ImageCopy* pRegions);

	function void PFN_vkCmdBlitImage(CommandBuffer commandBuffer, Image srcImage, ImageLayout srcImageLayout, Image dstImage, ImageLayout dstImageLayout, uint32 regionCount, ImageBlit* pRegions, Filter filter);

	function void PFN_vkCmdCopyBufferToImage(CommandBuffer commandBuffer, Buffer srcBuffer, Image dstImage, ImageLayout dstImageLayout, uint32 regionCount, BufferImageCopy* pRegions);

	function void PFN_vkCmdCopyImageToBuffer(CommandBuffer commandBuffer, Image srcImage, ImageLayout srcImageLayout, Buffer dstBuffer, uint32 regionCount, BufferImageCopy* pRegions);

	function void PFN_vkCmdUpdateBuffer(CommandBuffer commandBuffer, Buffer dstBuffer, DeviceSize dstOffset, DeviceSize dataSize, void* pData);

	function void PFN_vkCmdFillBuffer(CommandBuffer commandBuffer, Buffer dstBuffer, DeviceSize dstOffset, DeviceSize size, uint32 data);

	function void PFN_vkCmdClearColorImage(CommandBuffer commandBuffer, Image image, ImageLayout imageLayout, ClearColorValue* pColor, uint32 rangeCount, ImageSubresourceRange* pRanges);

	function void PFN_vkCmdClearDepthStencilImage(CommandBuffer commandBuffer, Image image, ImageLayout imageLayout, ClearDepthStencilValue* pDepthStencil, uint32 rangeCount, ImageSubresourceRange* pRanges);

	function void PFN_vkCmdClearAttachments(CommandBuffer commandBuffer, uint32 attachmentCount, ClearAttachment* pAttachments, uint32 rectCount, ClearRect* pRects);

	function void PFN_vkCmdResolveImage(CommandBuffer commandBuffer, Image srcImage, ImageLayout srcImageLayout, Image dstImage, ImageLayout dstImageLayout, uint32 regionCount, ImageResolve* pRegions);

	function void PFN_vkCmdSetEvent(CommandBuffer commandBuffer, Event event, PipelineStageFlags stageMask);

	function void PFN_vkCmdResetEvent(CommandBuffer commandBuffer, Event event, PipelineStageFlags stageMask);

	function void PFN_vkCmdWaitEvents(CommandBuffer commandBuffer, uint32 eventCount, Event* pEvents, PipelineStageFlags srcStageMask, PipelineStageFlags dstStageMask, uint32 memoryBarrierCount, MemoryBarrier* pMemoryBarriers, uint32 bufferMemoryBarrierCount, BufferMemoryBarrier* pBufferMemoryBarriers, uint32 imageMemoryBarrierCount, ImageMemoryBarrier* pImageMemoryBarriers);

	function void PFN_vkCmdPipelineBarrier(CommandBuffer commandBuffer, PipelineStageFlags srcStageMask, PipelineStageFlags dstStageMask, DependencyFlags dependencyFlags, uint32 memoryBarrierCount, MemoryBarrier* pMemoryBarriers, uint32 bufferMemoryBarrierCount, BufferMemoryBarrier* pBufferMemoryBarriers, uint32 imageMemoryBarrierCount, ImageMemoryBarrier* pImageMemoryBarriers);

	function void PFN_vkCmdBeginQuery(CommandBuffer commandBuffer, QueryPool queryPool, uint32 query, QueryControlFlags flags);

	function void PFN_vkCmdEndQuery(CommandBuffer commandBuffer, QueryPool queryPool, uint32 query);

	function void PFN_vkCmdResetQueryPool(CommandBuffer commandBuffer, QueryPool queryPool, uint32 firstQuery, uint32 queryCount);

	function void PFN_vkCmdWriteTimestamp(CommandBuffer commandBuffer, PipelineStageFlags pipelineStage, QueryPool queryPool, uint32 query);

	function void PFN_vkCmdCopyQueryPoolResults(CommandBuffer commandBuffer, QueryPool queryPool, uint32 firstQuery, uint32 queryCount, Buffer dstBuffer, DeviceSize dstOffset, DeviceSize stride, QueryResultFlags flags);

	function void PFN_vkCmdPushConstants(CommandBuffer commandBuffer, PipelineLayout layout, ShaderStageFlags stageFlags, uint32 offset, uint32 size, void* pValues);

	function void PFN_vkCmdBeginRenderPass(CommandBuffer commandBuffer, RenderPassBeginInfo* pRenderPassBegin, SubpassContents contents);

	function void PFN_vkCmdNextSubpass(CommandBuffer commandBuffer, SubpassContents contents);

	function void PFN_vkCmdEndRenderPass(CommandBuffer commandBuffer);

	function void PFN_vkCmdExecuteCommands(CommandBuffer commandBuffer, uint32 commandBufferCount, CommandBuffer* pCommandBuffers);

	function Result PFN_vkEnumerateInstanceVersion(uint32* pApiVersion);

	function Result PFN_vkBindBufferMemory2(Device device, uint32 bindInfoCount, BindBufferMemoryInfo* pBindInfos);

	function Result PFN_vkBindImageMemory2(Device device, uint32 bindInfoCount, BindImageMemoryInfo* pBindInfos);

	function void PFN_vkGetDeviceGroupPeerMemoryFeatures(Device device, uint32 heapIndex, uint32 localDeviceIndex, uint32 remoteDeviceIndex, PeerMemoryFeatureFlags* pPeerMemoryFeatures);

	function void PFN_vkCmdSetDeviceMask(CommandBuffer commandBuffer, uint32 deviceMask);

	function void PFN_vkCmdDispatchBase(CommandBuffer commandBuffer, uint32 baseGroupX, uint32 baseGroupY, uint32 baseGroupZ, uint32 groupCountX, uint32 groupCountY, uint32 groupCountZ);

	function Result PFN_vkEnumeratePhysicalDeviceGroups(Instance instance, uint32* pPhysicalDeviceGroupCount, PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties);

	function void PFN_vkGetImageMemoryRequirements2(Device device, ImageMemoryRequirementsInfo2* pInfo, MemoryRequirements2* pMemoryRequirements);

	function void PFN_vkGetBufferMemoryRequirements2(Device device, BufferMemoryRequirementsInfo2* pInfo, MemoryRequirements2* pMemoryRequirements);

	function void PFN_vkGetImageSparseMemoryRequirements2(Device device, ImageSparseMemoryRequirementsInfo2* pInfo, uint32* pSparseMemoryRequirementCount, SparseImageMemoryRequirements2* pSparseMemoryRequirements);

	function void PFN_vkGetPhysicalDeviceFeatures2(PhysicalDevice physicalDevice, PhysicalDeviceFeatures2* pFeatures);

	function void PFN_vkGetPhysicalDeviceProperties2(PhysicalDevice physicalDevice, PhysicalDeviceProperties2* pProperties);

	function void PFN_vkGetPhysicalDeviceFormatProperties2(PhysicalDevice physicalDevice, Format format, FormatProperties2* pFormatProperties);

	function Result PFN_vkGetPhysicalDeviceImageFormatProperties2(PhysicalDevice physicalDevice, PhysicalDeviceImageFormatInfo2* pImageFormatInfo, ImageFormatProperties2* pImageFormatProperties);

	function void PFN_vkGetPhysicalDeviceQueueFamilyProperties2(PhysicalDevice physicalDevice, uint32* pQueueFamilyPropertyCount, QueueFamilyProperties2* pQueueFamilyProperties);

	function void PFN_vkGetPhysicalDeviceMemoryProperties2(PhysicalDevice physicalDevice, PhysicalDeviceMemoryProperties2* pMemoryProperties);

	function void PFN_vkGetPhysicalDeviceSparseImageFormatProperties2(PhysicalDevice physicalDevice, PhysicalDeviceSparseImageFormatInfo2* pFormatInfo, uint32* pPropertyCount, SparseImageFormatProperties2* pProperties);

	function void PFN_vkTrimCommandPool(Device device, CommandPool commandPool, CommandPoolTrimFlags flags);

	function void PFN_vkGetDeviceQueue2(Device device, DeviceQueueInfo2* pQueueInfo, Queue* pQueue);

	function Result PFN_vkCreateSamplerYcbcrConversion(Device device, SamplerYcbcrConversionCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, SamplerYcbcrConversion* pYcbcrConversion);

	function void PFN_vkDestroySamplerYcbcrConversion(Device device, SamplerYcbcrConversion ycbcrConversion, AllocationCallbacks* pAllocator);

	function Result PFN_vkCreateDescriptorUpdateTemplate(Device device, DescriptorUpdateTemplateCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorUpdateTemplate* pDescriptorUpdateTemplate);

	function void PFN_vkDestroyDescriptorUpdateTemplate(Device device, DescriptorUpdateTemplate descriptorUpdateTemplate, AllocationCallbacks* pAllocator);

	function void PFN_vkUpdateDescriptorSetWithTemplate(Device device, DescriptorSet descriptorSet, DescriptorUpdateTemplate descriptorUpdateTemplate, void* pData);

	function void PFN_vkGetPhysicalDeviceExternalBufferProperties(PhysicalDevice physicalDevice, PhysicalDeviceExternalBufferInfo* pExternalBufferInfo, ExternalBufferProperties* pExternalBufferProperties);

	function void PFN_vkGetPhysicalDeviceExternalFenceProperties(PhysicalDevice physicalDevice, PhysicalDeviceExternalFenceInfo* pExternalFenceInfo, ExternalFenceProperties* pExternalFenceProperties);

	function void PFN_vkGetPhysicalDeviceExternalSemaphoreProperties(PhysicalDevice physicalDevice, PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo, ExternalSemaphoreProperties* pExternalSemaphoreProperties);

	function void PFN_vkGetDescriptorSetLayoutSupport(Device device, DescriptorSetLayoutCreateInfo* pCreateInfo, DescriptorSetLayoutSupport* pSupport);

	function void PFN_vkCmdDrawIndirectCount(CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint32 maxDrawCount, uint32 stride);

	function void PFN_vkCmdDrawIndexedIndirectCount(CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint32 maxDrawCount, uint32 stride);

	function Result PFN_vkCreateRenderPass2(Device device, RenderPassCreateInfo2* pCreateInfo, AllocationCallbacks* pAllocator, RenderPass* pRenderPass);

	function void PFN_vkCmdBeginRenderPass2(CommandBuffer commandBuffer, RenderPassBeginInfo* pRenderPassBegin, SubpassBeginInfo* pSubpassBeginInfo);

	function void PFN_vkCmdNextSubpass2(CommandBuffer commandBuffer, SubpassBeginInfo* pSubpassBeginInfo, SubpassEndInfo* pSubpassEndInfo);

	function void PFN_vkCmdEndRenderPass2(CommandBuffer commandBuffer, SubpassEndInfo* pSubpassEndInfo);

	function void PFN_vkResetQueryPool(Device device, QueryPool queryPool, uint32 firstQuery, uint32 queryCount);

	function Result PFN_vkGetSemaphoreCounterValue(Device device, Semaphore semaphore, uint64* pValue);

	function Result PFN_vkWaitSemaphores(Device device, SemaphoreWaitInfo* pWaitInfo, uint64 timeout);

	function Result PFN_vkSignalSemaphore(Device device, SemaphoreSignalInfo* pSignalInfo);

	function DeviceAddress PFN_vkGetBufferDeviceAddress(Device device, BufferDeviceAddressInfo* pInfo);

	function uint64 PFN_vkGetBufferOpaqueCaptureAddress(Device device, BufferDeviceAddressInfo* pInfo);

	function uint64 PFN_vkGetDeviceMemoryOpaqueCaptureAddress(Device device, DeviceMemoryOpaqueCaptureAddressInfo* pInfo);

	function void PFN_vkDestroySurfaceKHR(Instance instance, SurfaceKHR surface, AllocationCallbacks* pAllocator);

	function Result PFN_vkGetPhysicalDeviceSurfaceSupportKHR(PhysicalDevice physicalDevice, uint32 queueFamilyIndex, SurfaceKHR surface, Bool32* pSupported);

	function Result PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR(PhysicalDevice physicalDevice, SurfaceKHR surface, SurfaceCapabilitiesKHR* pSurfaceCapabilities);

	function Result PFN_vkGetPhysicalDeviceSurfaceFormatsKHR(PhysicalDevice physicalDevice, SurfaceKHR surface, uint32* pSurfaceFormatCount, SurfaceFormatKHR* pSurfaceFormats);

	function Result PFN_vkGetPhysicalDeviceSurfacePresentModesKHR(PhysicalDevice physicalDevice, SurfaceKHR surface, uint32* pPresentModeCount, PresentModeKHR* pPresentModes);

	function Result PFN_vkCreateSwapchainKHR(Device device, SwapchainCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, SwapchainKHR* pSwapchain);

	function void PFN_vkDestroySwapchainKHR(Device device, SwapchainKHR swapchain, AllocationCallbacks* pAllocator);

	function Result PFN_vkGetSwapchainImagesKHR(Device device, SwapchainKHR swapchain, uint32* pSwapchainImageCount, Image* pSwapchainImages);

	function Result PFN_vkAcquireNextImageKHR(Device device, SwapchainKHR swapchain, uint64 timeout, Semaphore semaphore, Fence fence, uint32* pImageIndex);

	function Result PFN_vkQueuePresentKHR(Queue queue, PresentInfoKHR* pPresentInfo);

	function Result PFN_vkGetDeviceGroupPresentCapabilitiesKHR(Device device, DeviceGroupPresentCapabilitiesKHR* pDeviceGroupPresentCapabilities);

	function Result PFN_vkGetDeviceGroupSurfacePresentModesKHR(Device device, SurfaceKHR surface, DeviceGroupPresentModeFlagsKHR* pModes);

	function Result PFN_vkGetPhysicalDevicePresentRectanglesKHR(PhysicalDevice physicalDevice, SurfaceKHR surface, uint32* pRectCount, Rect2D* pRects);

	function Result PFN_vkAcquireNextImage2KHR(Device device, AcquireNextImageInfoKHR* pAcquireInfo, uint32* pImageIndex);

	function Result PFN_vkGetPhysicalDeviceDisplayPropertiesKHR(PhysicalDevice physicalDevice, uint32* pPropertyCount, DisplayPropertiesKHR* pProperties);

	function Result PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR(PhysicalDevice physicalDevice, uint32* pPropertyCount, DisplayPlanePropertiesKHR* pProperties);

	function Result PFN_vkGetDisplayPlaneSupportedDisplaysKHR(PhysicalDevice physicalDevice, uint32 planeIndex, uint32* pDisplayCount, DisplayKHR* pDisplays);

	function Result PFN_vkGetDisplayModePropertiesKHR(PhysicalDevice physicalDevice, DisplayKHR display, uint32* pPropertyCount, DisplayModePropertiesKHR* pProperties);

	function Result PFN_vkCreateDisplayModeKHR(PhysicalDevice physicalDevice, DisplayKHR display, DisplayModeCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, DisplayModeKHR* pMode);

	function Result PFN_vkGetDisplayPlaneCapabilitiesKHR(PhysicalDevice physicalDevice, DisplayModeKHR mode, uint32 planeIndex, DisplayPlaneCapabilitiesKHR* pCapabilities);

	function Result PFN_vkCreateDisplayPlaneSurfaceKHR(Instance instance, DisplaySurfaceCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface);

	function Result PFN_vkCreateSharedSwapchainsKHR(Device device, uint32 swapchainCount, SwapchainCreateInfoKHR* pCreateInfos, AllocationCallbacks* pAllocator, SwapchainKHR* pSwapchains);

	function void PFN_vkGetPhysicalDeviceFeatures2KHR(PhysicalDevice physicalDevice, PhysicalDeviceFeatures2* pFeatures);

	function void PFN_vkGetPhysicalDeviceProperties2KHR(PhysicalDevice physicalDevice, PhysicalDeviceProperties2* pProperties);

	function void PFN_vkGetPhysicalDeviceFormatProperties2KHR(PhysicalDevice physicalDevice, Format format, FormatProperties2* pFormatProperties);

	function Result PFN_vkGetPhysicalDeviceImageFormatProperties2KHR(PhysicalDevice physicalDevice, PhysicalDeviceImageFormatInfo2* pImageFormatInfo, ImageFormatProperties2* pImageFormatProperties);

	function void PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR(PhysicalDevice physicalDevice, uint32* pQueueFamilyPropertyCount, QueueFamilyProperties2* pQueueFamilyProperties);

	function void PFN_vkGetPhysicalDeviceMemoryProperties2KHR(PhysicalDevice physicalDevice, PhysicalDeviceMemoryProperties2* pMemoryProperties);

	function void PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR(PhysicalDevice physicalDevice, PhysicalDeviceSparseImageFormatInfo2* pFormatInfo, uint32* pPropertyCount, SparseImageFormatProperties2* pProperties);

	function void PFN_vkGetDeviceGroupPeerMemoryFeaturesKHR(Device device, uint32 heapIndex, uint32 localDeviceIndex, uint32 remoteDeviceIndex, PeerMemoryFeatureFlags* pPeerMemoryFeatures);

	function void PFN_vkCmdSetDeviceMaskKHR(CommandBuffer commandBuffer, uint32 deviceMask);

	function void PFN_vkCmdDispatchBaseKHR(CommandBuffer commandBuffer, uint32 baseGroupX, uint32 baseGroupY, uint32 baseGroupZ, uint32 groupCountX, uint32 groupCountY, uint32 groupCountZ);

	function void PFN_vkTrimCommandPoolKHR(Device device, CommandPool commandPool, CommandPoolTrimFlags flags);

	function Result PFN_vkEnumeratePhysicalDeviceGroupsKHR(Instance instance, uint32* pPhysicalDeviceGroupCount, PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties);

	function void PFN_vkGetPhysicalDeviceExternalBufferPropertiesKHR(PhysicalDevice physicalDevice, PhysicalDeviceExternalBufferInfo* pExternalBufferInfo, ExternalBufferProperties* pExternalBufferProperties);

	function Result PFN_vkGetMemoryFdKHR(Device device, MemoryGetFdInfoKHR* pGetFdInfo, int* pFd);

	function Result PFN_vkGetMemoryFdPropertiesKHR(Device device, ExternalMemoryHandleTypeFlags handleType, int fd, MemoryFdPropertiesKHR* pMemoryFdProperties);

	function void PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR(PhysicalDevice physicalDevice, PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo, ExternalSemaphoreProperties* pExternalSemaphoreProperties);

	function Result PFN_vkImportSemaphoreFdKHR(Device device, ImportSemaphoreFdInfoKHR* pImportSemaphoreFdInfo);

	function Result PFN_vkGetSemaphoreFdKHR(Device device, SemaphoreGetFdInfoKHR* pGetFdInfo, int* pFd);

	function void PFN_vkCmdPushDescriptorSetKHR(CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint32 set, uint32 descriptorWriteCount, WriteDescriptorSet* pDescriptorWrites);

	function void PFN_vkCmdPushDescriptorSetWithTemplateKHR(CommandBuffer commandBuffer, DescriptorUpdateTemplate descriptorUpdateTemplate, PipelineLayout layout, uint32 set, void* pData);

	function Result PFN_vkCreateDescriptorUpdateTemplateKHR(Device device, DescriptorUpdateTemplateCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorUpdateTemplate* pDescriptorUpdateTemplate);

	function void PFN_vkDestroyDescriptorUpdateTemplateKHR(Device device, DescriptorUpdateTemplate descriptorUpdateTemplate, AllocationCallbacks* pAllocator);

	function void PFN_vkUpdateDescriptorSetWithTemplateKHR(Device device, DescriptorSet descriptorSet, DescriptorUpdateTemplate descriptorUpdateTemplate, void* pData);

	function Result PFN_vkCreateRenderPass2KHR(Device device, RenderPassCreateInfo2* pCreateInfo, AllocationCallbacks* pAllocator, RenderPass* pRenderPass);

	function void PFN_vkCmdBeginRenderPass2KHR(CommandBuffer commandBuffer, RenderPassBeginInfo* pRenderPassBegin, SubpassBeginInfo* pSubpassBeginInfo);

	function void PFN_vkCmdNextSubpass2KHR(CommandBuffer commandBuffer, SubpassBeginInfo* pSubpassBeginInfo, SubpassEndInfo* pSubpassEndInfo);

	function void PFN_vkCmdEndRenderPass2KHR(CommandBuffer commandBuffer, SubpassEndInfo* pSubpassEndInfo);

	function Result PFN_vkGetSwapchainStatusKHR(Device device, SwapchainKHR swapchain);

	function void PFN_vkGetPhysicalDeviceExternalFencePropertiesKHR(PhysicalDevice physicalDevice, PhysicalDeviceExternalFenceInfo* pExternalFenceInfo, ExternalFenceProperties* pExternalFenceProperties);

	function Result PFN_vkImportFenceFdKHR(Device device, ImportFenceFdInfoKHR* pImportFenceFdInfo);

	function Result PFN_vkGetFenceFdKHR(Device device, FenceGetFdInfoKHR* pGetFdInfo, int* pFd);

	function Result PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(PhysicalDevice physicalDevice, uint32 queueFamilyIndex, uint32* pCounterCount, PerformanceCounterKHR* pCounters, PerformanceCounterDescriptionKHR* pCounterDescriptions);

	function void PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(PhysicalDevice physicalDevice, QueryPoolPerformanceCreateInfoKHR* pPerformanceQueryCreateInfo, uint32* pNumPasses);

	function Result PFN_vkAcquireProfilingLockKHR(Device device, AcquireProfilingLockInfoKHR* pInfo);

	function void PFN_vkReleaseProfilingLockKHR(Device device);

	function Result PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR(PhysicalDevice physicalDevice, PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, SurfaceCapabilities2KHR* pSurfaceCapabilities);

	function Result PFN_vkGetPhysicalDeviceSurfaceFormats2KHR(PhysicalDevice physicalDevice, PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, uint32* pSurfaceFormatCount, SurfaceFormat2KHR* pSurfaceFormats);

	function Result PFN_vkGetPhysicalDeviceDisplayProperties2KHR(PhysicalDevice physicalDevice, uint32* pPropertyCount, DisplayProperties2KHR* pProperties);

	function Result PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR(PhysicalDevice physicalDevice, uint32* pPropertyCount, DisplayPlaneProperties2KHR* pProperties);

	function Result PFN_vkGetDisplayModeProperties2KHR(PhysicalDevice physicalDevice, DisplayKHR display, uint32* pPropertyCount, DisplayModeProperties2KHR* pProperties);

	function Result PFN_vkGetDisplayPlaneCapabilities2KHR(PhysicalDevice physicalDevice, DisplayPlaneInfo2KHR* pDisplayPlaneInfo, DisplayPlaneCapabilities2KHR* pCapabilities);

	function void PFN_vkGetImageMemoryRequirements2KHR(Device device, ImageMemoryRequirementsInfo2* pInfo, MemoryRequirements2* pMemoryRequirements);

	function void PFN_vkGetBufferMemoryRequirements2KHR(Device device, BufferMemoryRequirementsInfo2* pInfo, MemoryRequirements2* pMemoryRequirements);

	function void PFN_vkGetImageSparseMemoryRequirements2KHR(Device device, ImageSparseMemoryRequirementsInfo2* pInfo, uint32* pSparseMemoryRequirementCount, SparseImageMemoryRequirements2* pSparseMemoryRequirements);

	function Result PFN_vkCreateSamplerYcbcrConversionKHR(Device device, SamplerYcbcrConversionCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, SamplerYcbcrConversion* pYcbcrConversion);

	function void PFN_vkDestroySamplerYcbcrConversionKHR(Device device, SamplerYcbcrConversion ycbcrConversion, AllocationCallbacks* pAllocator);

	function Result PFN_vkBindBufferMemory2KHR(Device device, uint32 bindInfoCount, BindBufferMemoryInfo* pBindInfos);

	function Result PFN_vkBindImageMemory2KHR(Device device, uint32 bindInfoCount, BindImageMemoryInfo* pBindInfos);

	function void PFN_vkGetDescriptorSetLayoutSupportKHR(Device device, DescriptorSetLayoutCreateInfo* pCreateInfo, DescriptorSetLayoutSupport* pSupport);

	function void PFN_vkCmdDrawIndirectCountKHR(CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint32 maxDrawCount, uint32 stride);

	function void PFN_vkCmdDrawIndexedIndirectCountKHR(CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint32 maxDrawCount, uint32 stride);

	function Result PFN_vkGetSemaphoreCounterValueKHR(Device device, Semaphore semaphore, uint64* pValue);

	function Result PFN_vkWaitSemaphoresKHR(Device device, SemaphoreWaitInfo* pWaitInfo, uint64 timeout);

	function Result PFN_vkSignalSemaphoreKHR(Device device, SemaphoreSignalInfo* pSignalInfo);

	function DeviceAddress PFN_vkGetBufferDeviceAddressKHR(Device device, BufferDeviceAddressInfo* pInfo);

	function uint64 PFN_vkGetBufferOpaqueCaptureAddressKHR(Device device, BufferDeviceAddressInfo* pInfo);

	function uint64 PFN_vkGetDeviceMemoryOpaqueCaptureAddressKHR(Device device, DeviceMemoryOpaqueCaptureAddressInfo* pInfo);

	function Result PFN_vkGetPipelineExecutablePropertiesKHR(Device device, PipelineInfoKHR* pPipelineInfo, uint32* pExecutableCount, PipelineExecutablePropertiesKHR* pProperties);

	function Result PFN_vkGetPipelineExecutableStatisticsKHR(Device device, PipelineExecutableInfoKHR* pExecutableInfo, uint32* pStatisticCount, PipelineExecutableStatisticKHR* pStatistics);

	function Result PFN_vkGetPipelineExecutableInternalRepresentationsKHR(Device device, PipelineExecutableInfoKHR* pExecutableInfo, uint32* pInternalRepresentationCount, PipelineExecutableInternalRepresentationKHR* pInternalRepresentations);

	function Bool32 PFN_vkDebugReportCallbackEXT(DebugReportFlagsEXT flags, DebugReportObjectTypeEXT objectType, uint64 object, uint location, int32 messageCode, char8* pLayerPrefix, char8* pMessage, void* pUserData);

	function Result PFN_vkCreateDebugReportCallbackEXT(Instance instance, DebugReportCallbackCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, DebugReportCallbackEXT* pCallback);

	function void PFN_vkDestroyDebugReportCallbackEXT(Instance instance, DebugReportCallbackEXT callback, AllocationCallbacks* pAllocator);

	function void PFN_vkDebugReportMessageEXT(Instance instance, DebugReportFlagsEXT flags, DebugReportObjectTypeEXT objectType, uint64 object, uint location, int32 messageCode, char8* pLayerPrefix, char8* pMessage);

	function Result PFN_vkDebugMarkerSetObjectTagEXT(Device device, DebugMarkerObjectTagInfoEXT* pTagInfo);

	function Result PFN_vkDebugMarkerSetObjectNameEXT(Device device, DebugMarkerObjectNameInfoEXT* pNameInfo);

	function void PFN_vkCmdDebugMarkerBeginEXT(CommandBuffer commandBuffer, DebugMarkerMarkerInfoEXT* pMarkerInfo);

	function void PFN_vkCmdDebugMarkerEndEXT(CommandBuffer commandBuffer);

	function void PFN_vkCmdDebugMarkerInsertEXT(CommandBuffer commandBuffer, DebugMarkerMarkerInfoEXT* pMarkerInfo);

	function void PFN_vkCmdBindTransformFeedbackBuffersEXT(CommandBuffer commandBuffer, uint32 firstBinding, uint32 bindingCount, Buffer* pBuffers, DeviceSize* pOffsets, DeviceSize* pSizes);

	function void PFN_vkCmdBeginTransformFeedbackEXT(CommandBuffer commandBuffer, uint32 firstCounterBuffer, uint32 counterBufferCount, Buffer* pCounterBuffers, DeviceSize* pCounterBufferOffsets);

	function void PFN_vkCmdEndTransformFeedbackEXT(CommandBuffer commandBuffer, uint32 firstCounterBuffer, uint32 counterBufferCount, Buffer* pCounterBuffers, DeviceSize* pCounterBufferOffsets);

	function void PFN_vkCmdBeginQueryIndexedEXT(CommandBuffer commandBuffer, QueryPool queryPool, uint32 query, QueryControlFlags flags, uint32 index);

	function void PFN_vkCmdEndQueryIndexedEXT(CommandBuffer commandBuffer, QueryPool queryPool, uint32 query, uint32 index);

	function void PFN_vkCmdDrawIndirectByteCountEXT(CommandBuffer commandBuffer, uint32 instanceCount, uint32 firstInstance, Buffer counterBuffer, DeviceSize counterBufferOffset, uint32 counterOffset, uint32 vertexStride);

	function uint32 PFN_vkGetImageViewHandleNVX(Device device, ImageViewHandleInfoNVX* pInfo);

	function void PFN_vkCmdDrawIndirectCountAMD(CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint32 maxDrawCount, uint32 stride);

	function void PFN_vkCmdDrawIndexedIndirectCountAMD(CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint32 maxDrawCount, uint32 stride);

	function Result PFN_vkGetShaderInfoAMD(Device device, Pipeline pipeline, ShaderStageFlags shaderStage, ShaderInfoTypeAMD infoType, uint* pInfoSize, void* pInfo);

	function Result PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV(PhysicalDevice physicalDevice, Format format, ImageType type, ImageTiling tiling, ImageUsageFlags usage, ImageCreateFlags flags, ExternalMemoryHandleTypeFlagsNV externalHandleType, ExternalImageFormatPropertiesNV* pExternalImageFormatProperties);

	function void PFN_vkCmdBeginConditionalRenderingEXT(CommandBuffer commandBuffer, ConditionalRenderingBeginInfoEXT* pConditionalRenderingBegin);

	function void PFN_vkCmdEndConditionalRenderingEXT(CommandBuffer commandBuffer);

	function void PFN_vkCmdSetViewportWScalingNV(CommandBuffer commandBuffer, uint32 firstViewport, uint32 viewportCount, ViewportWScalingNV* pViewportWScalings);

	function Result PFN_vkReleaseDisplayEXT(PhysicalDevice physicalDevice, DisplayKHR display);

	function Result PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT(PhysicalDevice physicalDevice, SurfaceKHR surface, SurfaceCapabilities2EXT* pSurfaceCapabilities);

	function Result PFN_vkDisplayPowerControlEXT(Device device, DisplayKHR display, DisplayPowerInfoEXT* pDisplayPowerInfo);

	function Result PFN_vkRegisterDeviceEventEXT(Device device, DeviceEventInfoEXT* pDeviceEventInfo, AllocationCallbacks* pAllocator, Fence* pFence);

	function Result PFN_vkRegisterDisplayEventEXT(Device device, DisplayKHR display, DisplayEventInfoEXT* pDisplayEventInfo, AllocationCallbacks* pAllocator, Fence* pFence);

	function Result PFN_vkGetSwapchainCounterEXT(Device device, SwapchainKHR swapchain, SurfaceCounterFlagsEXT counter, uint64* pCounterValue);

	function Result PFN_vkGetRefreshCycleDurationGOOGLE(Device device, SwapchainKHR swapchain, RefreshCycleDurationGOOGLE* pDisplayTimingProperties);

	function Result PFN_vkGetPastPresentationTimingGOOGLE(Device device, SwapchainKHR swapchain, uint32* pPresentationTimingCount, PastPresentationTimingGOOGLE* pPresentationTimings);

	function void PFN_vkCmdSetDiscardRectangleEXT(CommandBuffer commandBuffer, uint32 firstDiscardRectangle, uint32 discardRectangleCount, Rect2D* pDiscardRectangles);

	function void PFN_vkSetHdrMetadataEXT(Device device, uint32 swapchainCount, SwapchainKHR* pSwapchains, HdrMetadataEXT* pMetadata);

	function Bool32 PFN_vkDebugUtilsMessengerCallbackEXT(DebugUtilsMessageSeverityFlagsEXT messageSeverity, DebugUtilsMessageTypeFlagsEXT messageTypes, DebugUtilsMessengerCallbackDataEXT* pCallbackData, void* pUserData);

	function Result PFN_vkSetDebugUtilsObjectNameEXT(Device device, DebugUtilsObjectNameInfoEXT* pNameInfo);

	function Result PFN_vkSetDebugUtilsObjectTagEXT(Device device, DebugUtilsObjectTagInfoEXT* pTagInfo);

	function void PFN_vkQueueBeginDebugUtilsLabelEXT(Queue queue, DebugUtilsLabelEXT* pLabelInfo);

	function void PFN_vkQueueEndDebugUtilsLabelEXT(Queue queue);

	function void PFN_vkQueueInsertDebugUtilsLabelEXT(Queue queue, DebugUtilsLabelEXT* pLabelInfo);

	function void PFN_vkCmdBeginDebugUtilsLabelEXT(CommandBuffer commandBuffer, DebugUtilsLabelEXT* pLabelInfo);

	function void PFN_vkCmdEndDebugUtilsLabelEXT(CommandBuffer commandBuffer);

	function void PFN_vkCmdInsertDebugUtilsLabelEXT(CommandBuffer commandBuffer, DebugUtilsLabelEXT* pLabelInfo);

	function Result PFN_vkCreateDebugUtilsMessengerEXT(Instance instance, DebugUtilsMessengerCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, DebugUtilsMessengerEXT* pMessenger);

	function void PFN_vkDestroyDebugUtilsMessengerEXT(Instance instance, DebugUtilsMessengerEXT messenger, AllocationCallbacks* pAllocator);

	function void PFN_vkSubmitDebugUtilsMessageEXT(Instance instance, DebugUtilsMessageSeverityFlagsEXT messageSeverity, DebugUtilsMessageTypeFlagsEXT messageTypes, DebugUtilsMessengerCallbackDataEXT* pCallbackData);

	function void PFN_vkCmdSetSampleLocationsEXT(CommandBuffer commandBuffer, SampleLocationsInfoEXT* pSampleLocationsInfo);

	function void PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT(PhysicalDevice physicalDevice, SampleCountFlags samples, MultisamplePropertiesEXT* pMultisampleProperties);

	function Result PFN_vkGetImageDrmFormatModifierPropertiesEXT(Device device, Image image, ImageDrmFormatModifierPropertiesEXT* pProperties);

	function Result PFN_vkCreateValidationCacheEXT(Device device, ValidationCacheCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, ValidationCacheEXT* pValidationCache);

	function void PFN_vkDestroyValidationCacheEXT(Device device, ValidationCacheEXT validationCache, AllocationCallbacks* pAllocator);

	function Result PFN_vkMergeValidationCachesEXT(Device device, ValidationCacheEXT dstCache, uint32 srcCacheCount, ValidationCacheEXT* pSrcCaches);

	function Result PFN_vkGetValidationCacheDataEXT(Device device, ValidationCacheEXT validationCache, uint* pDataSize, void* pData);

	function void PFN_vkCmdBindShadingRateImageNV(CommandBuffer commandBuffer, ImageView imageView, ImageLayout imageLayout);

	function void PFN_vkCmdSetViewportShadingRatePaletteNV(CommandBuffer commandBuffer, uint32 firstViewport, uint32 viewportCount, ShadingRatePaletteNV* pShadingRatePalettes);

	function void PFN_vkCmdSetCoarseSampleOrderNV(CommandBuffer commandBuffer, CoarseSampleOrderTypeNV sampleOrderType, uint32 customSampleOrderCount, CoarseSampleOrderCustomNV* pCustomSampleOrders);

	function Result PFN_vkCreateAccelerationStructureNV(Device device, AccelerationStructureCreateInfoNV* pCreateInfo, AllocationCallbacks* pAllocator, AccelerationStructureNV* pAccelerationStructure);

	function void PFN_vkDestroyAccelerationStructureKHR(Device device, AccelerationStructureKHR accelerationStructure, AllocationCallbacks* pAllocator);

	function void PFN_vkDestroyAccelerationStructureNV(Device device, AccelerationStructureKHR accelerationStructure, AllocationCallbacks* pAllocator);

	function void PFN_vkGetAccelerationStructureMemoryRequirementsNV(Device device, AccelerationStructureMemoryRequirementsInfoNV* pInfo, MemoryRequirements2KHR* pMemoryRequirements);

	function Result PFN_vkBindAccelerationStructureMemoryKHR(Device device, uint32 bindInfoCount, BindAccelerationStructureMemoryInfoKHR* pBindInfos);

	function Result PFN_vkBindAccelerationStructureMemoryNV(Device device, uint32 bindInfoCount, BindAccelerationStructureMemoryInfoKHR* pBindInfos);

	function void PFN_vkCmdBuildAccelerationStructureNV(CommandBuffer commandBuffer, AccelerationStructureInfoNV* pInfo, Buffer instanceData, DeviceSize instanceOffset, Bool32 update, AccelerationStructureKHR dst, AccelerationStructureKHR src, Buffer scratch, DeviceSize scratchOffset);

	function void PFN_vkCmdCopyAccelerationStructureNV(CommandBuffer commandBuffer, AccelerationStructureKHR dst, AccelerationStructureKHR src, CopyAccelerationStructureModeKHR mode);

	function void PFN_vkCmdTraceRaysNV(CommandBuffer commandBuffer, Buffer raygenShaderBindingTableBuffer, DeviceSize raygenShaderBindingOffset, Buffer missShaderBindingTableBuffer, DeviceSize missShaderBindingOffset, DeviceSize missShaderBindingStride, Buffer hitShaderBindingTableBuffer, DeviceSize hitShaderBindingOffset, DeviceSize hitShaderBindingStride, Buffer callableShaderBindingTableBuffer, DeviceSize callableShaderBindingOffset, DeviceSize callableShaderBindingStride, uint32 width, uint32 height, uint32 depth);

	function Result PFN_vkCreateRayTracingPipelinesNV(Device device, PipelineCache pipelineCache, uint32 createInfoCount, RayTracingPipelineCreateInfoNV* pCreateInfos, AllocationCallbacks* pAllocator, Pipeline* pPipelines);

	function Result PFN_vkGetRayTracingShaderGroupHandlesKHR(Device device, Pipeline pipeline, uint32 firstGroup, uint32 groupCount, uint dataSize, void* pData);

	function Result PFN_vkGetRayTracingShaderGroupHandlesNV(Device device, Pipeline pipeline, uint32 firstGroup, uint32 groupCount, uint dataSize, void* pData);

	function Result PFN_vkGetAccelerationStructureHandleNV(Device device, AccelerationStructureKHR accelerationStructure, uint dataSize, void* pData);

	function void PFN_vkCmdWriteAccelerationStructuresPropertiesKHR(CommandBuffer commandBuffer, uint32 accelerationStructureCount, AccelerationStructureKHR* pAccelerationStructures, QueryType queryType, QueryPool queryPool, uint32 firstQuery);

	function void PFN_vkCmdWriteAccelerationStructuresPropertiesNV(CommandBuffer commandBuffer, uint32 accelerationStructureCount, AccelerationStructureKHR* pAccelerationStructures, QueryType queryType, QueryPool queryPool, uint32 firstQuery);

	function Result PFN_vkCompileDeferredNV(Device device, Pipeline pipeline, uint32 shader);

	function Result PFN_vkGetMemoryHostPointerPropertiesEXT(Device device, ExternalMemoryHandleTypeFlags handleType, void* pHostPointer, MemoryHostPointerPropertiesEXT* pMemoryHostPointerProperties);

	function void PFN_vkCmdWriteBufferMarkerAMD(CommandBuffer commandBuffer, PipelineStageFlags pipelineStage, Buffer dstBuffer, DeviceSize dstOffset, uint32 marker);

	function Result PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(PhysicalDevice physicalDevice, uint32* pTimeDomainCount, TimeDomainEXT* pTimeDomains);

	function Result PFN_vkGetCalibratedTimestampsEXT(Device device, uint32 timestampCount, CalibratedTimestampInfoEXT* pTimestampInfos, uint64* pTimestamps, uint64* pMaxDeviation);

	function void PFN_vkCmdDrawMeshTasksNV(CommandBuffer commandBuffer, uint32 taskCount, uint32 firstTask);

	function void PFN_vkCmdDrawMeshTasksIndirectNV(CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, uint32 drawCount, uint32 stride);

	function void PFN_vkCmdDrawMeshTasksIndirectCountNV(CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint32 maxDrawCount, uint32 stride);

	function void PFN_vkCmdSetExclusiveScissorNV(CommandBuffer commandBuffer, uint32 firstExclusiveScissor, uint32 exclusiveScissorCount, Rect2D* pExclusiveScissors);

	function void PFN_vkCmdSetCheckpointNV(CommandBuffer commandBuffer, void* pCheckpointMarker);

	function void PFN_vkGetQueueCheckpointDataNV(Queue queue, uint32* pCheckpointDataCount, CheckpointDataNV* pCheckpointData);

	function Result PFN_vkInitializePerformanceApiINTEL(Device device, InitializePerformanceApiInfoINTEL* pInitializeInfo);

	function void PFN_vkUninitializePerformanceApiINTEL(Device device);

	function Result PFN_vkCmdSetPerformanceMarkerINTEL(CommandBuffer commandBuffer, PerformanceMarkerInfoINTEL* pMarkerInfo);

	function Result PFN_vkCmdSetPerformanceStreamMarkerINTEL(CommandBuffer commandBuffer, PerformanceStreamMarkerInfoINTEL* pMarkerInfo);

	function Result PFN_vkCmdSetPerformanceOverrideINTEL(CommandBuffer commandBuffer, PerformanceOverrideInfoINTEL* pOverrideInfo);

	function Result PFN_vkAcquirePerformanceConfigurationINTEL(Device device, PerformanceConfigurationAcquireInfoINTEL* pAcquireInfo, PerformanceConfigurationINTEL* pConfiguration);

	function Result PFN_vkReleasePerformanceConfigurationINTEL(Device device, PerformanceConfigurationINTEL configuration);

	function Result PFN_vkQueueSetPerformanceConfigurationINTEL(Queue queue, PerformanceConfigurationINTEL configuration);

	function Result PFN_vkGetPerformanceParameterINTEL(Device device, PerformanceParameterTypeINTEL parameter, PerformanceValueINTEL* pValue);

	function void PFN_vkSetLocalDimmingAMD(Device device, SwapchainKHR swapChain, Bool32 localDimmingEnable);

	function DeviceAddress PFN_vkGetBufferDeviceAddressEXT(Device device, BufferDeviceAddressInfo* pInfo);

	function Result PFN_vkGetPhysicalDeviceToolPropertiesEXT(PhysicalDevice physicalDevice, uint32* pToolCount, PhysicalDeviceToolPropertiesEXT* pToolProperties);

	function Result PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(PhysicalDevice physicalDevice, uint32* pPropertyCount, CooperativeMatrixPropertiesNV* pProperties);

	function Result PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(PhysicalDevice physicalDevice, uint32* pCombinationCount, FramebufferMixedSamplesCombinationNV* pCombinations);

	function Result PFN_vkCreateHeadlessSurfaceEXT(Instance instance, HeadlessSurfaceCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface);

	function void PFN_vkCmdSetLineStippleEXT(CommandBuffer commandBuffer, uint32 lineStippleFactor, uint16 lineStipplePattern);

	function void PFN_vkResetQueryPoolEXT(Device device, QueryPool queryPool, uint32 firstQuery, uint32 queryCount);

	function void PFN_vkGetGeneratedCommandsMemoryRequirementsNV(Device device, GeneratedCommandsMemoryRequirementsInfoNV* pInfo, MemoryRequirements2* pMemoryRequirements);

	function void PFN_vkCmdPreprocessGeneratedCommandsNV(CommandBuffer commandBuffer, GeneratedCommandsInfoNV* pGeneratedCommandsInfo);

	function void PFN_vkCmdExecuteGeneratedCommandsNV(CommandBuffer commandBuffer, Bool32 isPreprocessed, GeneratedCommandsInfoNV* pGeneratedCommandsInfo);

	function void PFN_vkCmdBindPipelineShaderGroupNV(CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, Pipeline pipeline, uint32 groupIndex);

	function Result PFN_vkCreateIndirectCommandsLayoutNV(Device device, IndirectCommandsLayoutCreateInfoNV* pCreateInfo, AllocationCallbacks* pAllocator, IndirectCommandsLayoutNV* pIndirectCommandsLayout);

	function void PFN_vkDestroyIndirectCommandsLayoutNV(Device device, IndirectCommandsLayoutNV indirectCommandsLayout, AllocationCallbacks* pAllocator);


}