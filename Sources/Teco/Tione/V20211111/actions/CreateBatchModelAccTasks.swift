//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension Tione {
    /// CreateBatchModelAccTasks请求参数结构体
    public struct CreateBatchModelAccTasksRequest: TCRequestModel {
        /// 模型加速任务名称
        public let modelAccTaskName: String

        /// 批量模型加速任务
        public let batchModelAccTasks: [BatchModelAccTask]

        /// 模型加速保存路径
        public let modelOutputPath: CosPathInfo

        /// 标签
        public let tags: [Tag]?

        /// 优化级别(NO_LOSS/FP16/INT8)，默认FP16
        public let optimizationLevel: String?

        /// GPU卡类型(T4/V100/A10)，默认T4
        public let gpuType: String?

        /// 专业参数设置
        public let hyperParameter: HyperParameter?

        public init(modelAccTaskName: String, batchModelAccTasks: [BatchModelAccTask], modelOutputPath: CosPathInfo, tags: [Tag]? = nil, optimizationLevel: String? = nil, gpuType: String? = nil, hyperParameter: HyperParameter? = nil) {
            self.modelAccTaskName = modelAccTaskName
            self.batchModelAccTasks = batchModelAccTasks
            self.modelOutputPath = modelOutputPath
            self.tags = tags
            self.optimizationLevel = optimizationLevel
            self.gpuType = gpuType
            self.hyperParameter = hyperParameter
        }

        enum CodingKeys: String, CodingKey {
            case modelAccTaskName = "ModelAccTaskName"
            case batchModelAccTasks = "BatchModelAccTasks"
            case modelOutputPath = "ModelOutputPath"
            case tags = "Tags"
            case optimizationLevel = "OptimizationLevel"
            case gpuType = "GPUType"
            case hyperParameter = "HyperParameter"
        }
    }

    /// CreateBatchModelAccTasks返回参数结构体
    public struct CreateBatchModelAccTasksResponse: TCResponseModel {
        /// 模型优化任务ID列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modelAccTaskIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case modelAccTaskIds = "ModelAccTaskIds"
            case requestId = "RequestId"
        }
    }

    /// 批量创建模型加速任务
    @inlinable
    public func createBatchModelAccTasks(_ input: CreateBatchModelAccTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBatchModelAccTasksResponse> {
        self.client.execute(action: "CreateBatchModelAccTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量创建模型加速任务
    @inlinable
    public func createBatchModelAccTasks(_ input: CreateBatchModelAccTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchModelAccTasksResponse {
        try await self.client.execute(action: "CreateBatchModelAccTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量创建模型加速任务
    @inlinable
    public func createBatchModelAccTasks(modelAccTaskName: String, batchModelAccTasks: [BatchModelAccTask], modelOutputPath: CosPathInfo, tags: [Tag]? = nil, optimizationLevel: String? = nil, gpuType: String? = nil, hyperParameter: HyperParameter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBatchModelAccTasksResponse> {
        self.createBatchModelAccTasks(.init(modelAccTaskName: modelAccTaskName, batchModelAccTasks: batchModelAccTasks, modelOutputPath: modelOutputPath, tags: tags, optimizationLevel: optimizationLevel, gpuType: gpuType, hyperParameter: hyperParameter), region: region, logger: logger, on: eventLoop)
    }

    /// 批量创建模型加速任务
    @inlinable
    public func createBatchModelAccTasks(modelAccTaskName: String, batchModelAccTasks: [BatchModelAccTask], modelOutputPath: CosPathInfo, tags: [Tag]? = nil, optimizationLevel: String? = nil, gpuType: String? = nil, hyperParameter: HyperParameter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchModelAccTasksResponse {
        try await self.createBatchModelAccTasks(.init(modelAccTaskName: modelAccTaskName, batchModelAccTasks: batchModelAccTasks, modelOutputPath: modelOutputPath, tags: tags, optimizationLevel: optimizationLevel, gpuType: gpuType, hyperParameter: hyperParameter), region: region, logger: logger, on: eventLoop)
    }
}
