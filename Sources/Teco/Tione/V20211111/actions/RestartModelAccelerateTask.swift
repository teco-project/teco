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

extension Tione {
    /// RestartModelAccelerateTask请求参数结构体
    public struct RestartModelAccelerateTaskRequest: TCRequestModel {
        /// 模型加速任务ID
        public let modelAccTaskId: String

        /// 模型加速任务名称
        public let modelAccTaskName: String?

        /// 模型来源（JOB/COS）
        public let modelSource: String?

        /// 算法框架（废弃）
        public let algorithmFramework: String?

        /// 模型ID
        public let modelId: String?

        /// 模型名称
        public let modelName: String?

        /// 模型版本
        public let modelVersion: String?

        /// 模型输入cos路径
        public let modelInputPath: CosPathInfo?

        /// 优化级别（NO_LOSS/FP16/INT8），默认FP16
        public let optimizationLevel: String?

        /// input节点个数（废弃）
        public let modelInputNum: UInt64?

        /// input节点信息（废弃）
        public let modelInputInfos: [ModelInputInfo]?

        /// 模型输出cos路径
        public let modelOutputPath: CosPathInfo?

        /// 模型格式（TORCH_SCRIPT/DETECTRON2/SAVED_MODEL/FROZEN_GRAPH/MMDETECTION/ONNX/HUGGING_FACE）
        public let modelFormat: String?

        /// 模型Tensor信息
        public let tensorInfos: [String]?

        /// GPU类型（T4/V100/A10），默认T4
        public let gpuType: String?

        /// 模型专业参数
        public let hyperParameter: HyperParameter?

        /// 加速引擎版本
        public let accEngineVersion: String?

        /// 标签
        public let tags: [Tag]?

        /// SavedModel保存时配置的签名
        public let modelSignature: String?

        public init(modelAccTaskId: String, modelAccTaskName: String? = nil, modelSource: String? = nil, algorithmFramework: String? = nil, modelId: String? = nil, modelName: String? = nil, modelVersion: String? = nil, modelInputPath: CosPathInfo? = nil, optimizationLevel: String? = nil, modelInputNum: UInt64? = nil, modelInputInfos: [ModelInputInfo]? = nil, modelOutputPath: CosPathInfo? = nil, modelFormat: String? = nil, tensorInfos: [String]? = nil, gpuType: String? = nil, hyperParameter: HyperParameter? = nil, accEngineVersion: String? = nil, tags: [Tag]? = nil, modelSignature: String? = nil) {
            self.modelAccTaskId = modelAccTaskId
            self.modelAccTaskName = modelAccTaskName
            self.modelSource = modelSource
            self.algorithmFramework = algorithmFramework
            self.modelId = modelId
            self.modelName = modelName
            self.modelVersion = modelVersion
            self.modelInputPath = modelInputPath
            self.optimizationLevel = optimizationLevel
            self.modelInputNum = modelInputNum
            self.modelInputInfos = modelInputInfos
            self.modelOutputPath = modelOutputPath
            self.modelFormat = modelFormat
            self.tensorInfos = tensorInfos
            self.gpuType = gpuType
            self.hyperParameter = hyperParameter
            self.accEngineVersion = accEngineVersion
            self.tags = tags
            self.modelSignature = modelSignature
        }

        enum CodingKeys: String, CodingKey {
            case modelAccTaskId = "ModelAccTaskId"
            case modelAccTaskName = "ModelAccTaskName"
            case modelSource = "ModelSource"
            case algorithmFramework = "AlgorithmFramework"
            case modelId = "ModelId"
            case modelName = "ModelName"
            case modelVersion = "ModelVersion"
            case modelInputPath = "ModelInputPath"
            case optimizationLevel = "OptimizationLevel"
            case modelInputNum = "ModelInputNum"
            case modelInputInfos = "ModelInputInfos"
            case modelOutputPath = "ModelOutputPath"
            case modelFormat = "ModelFormat"
            case tensorInfos = "TensorInfos"
            case gpuType = "GPUType"
            case hyperParameter = "HyperParameter"
            case accEngineVersion = "AccEngineVersion"
            case tags = "Tags"
            case modelSignature = "ModelSignature"
        }
    }

    /// RestartModelAccelerateTask返回参数结构体
    public struct RestartModelAccelerateTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重启模型加速任务
    @inlinable @discardableResult
    public func restartModelAccelerateTask(_ input: RestartModelAccelerateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartModelAccelerateTaskResponse> {
        self.client.execute(action: "RestartModelAccelerateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重启模型加速任务
    @inlinable @discardableResult
    public func restartModelAccelerateTask(_ input: RestartModelAccelerateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartModelAccelerateTaskResponse {
        try await self.client.execute(action: "RestartModelAccelerateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重启模型加速任务
    @inlinable @discardableResult
    public func restartModelAccelerateTask(modelAccTaskId: String, modelAccTaskName: String? = nil, modelSource: String? = nil, algorithmFramework: String? = nil, modelId: String? = nil, modelName: String? = nil, modelVersion: String? = nil, modelInputPath: CosPathInfo? = nil, optimizationLevel: String? = nil, modelInputNum: UInt64? = nil, modelInputInfos: [ModelInputInfo]? = nil, modelOutputPath: CosPathInfo? = nil, modelFormat: String? = nil, tensorInfos: [String]? = nil, gpuType: String? = nil, hyperParameter: HyperParameter? = nil, accEngineVersion: String? = nil, tags: [Tag]? = nil, modelSignature: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartModelAccelerateTaskResponse> {
        self.restartModelAccelerateTask(RestartModelAccelerateTaskRequest(modelAccTaskId: modelAccTaskId, modelAccTaskName: modelAccTaskName, modelSource: modelSource, algorithmFramework: algorithmFramework, modelId: modelId, modelName: modelName, modelVersion: modelVersion, modelInputPath: modelInputPath, optimizationLevel: optimizationLevel, modelInputNum: modelInputNum, modelInputInfos: modelInputInfos, modelOutputPath: modelOutputPath, modelFormat: modelFormat, tensorInfos: tensorInfos, gpuType: gpuType, hyperParameter: hyperParameter, accEngineVersion: accEngineVersion, tags: tags, modelSignature: modelSignature), region: region, logger: logger, on: eventLoop)
    }

    /// 重启模型加速任务
    @inlinable @discardableResult
    public func restartModelAccelerateTask(modelAccTaskId: String, modelAccTaskName: String? = nil, modelSource: String? = nil, algorithmFramework: String? = nil, modelId: String? = nil, modelName: String? = nil, modelVersion: String? = nil, modelInputPath: CosPathInfo? = nil, optimizationLevel: String? = nil, modelInputNum: UInt64? = nil, modelInputInfos: [ModelInputInfo]? = nil, modelOutputPath: CosPathInfo? = nil, modelFormat: String? = nil, tensorInfos: [String]? = nil, gpuType: String? = nil, hyperParameter: HyperParameter? = nil, accEngineVersion: String? = nil, tags: [Tag]? = nil, modelSignature: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartModelAccelerateTaskResponse {
        try await self.restartModelAccelerateTask(RestartModelAccelerateTaskRequest(modelAccTaskId: modelAccTaskId, modelAccTaskName: modelAccTaskName, modelSource: modelSource, algorithmFramework: algorithmFramework, modelId: modelId, modelName: modelName, modelVersion: modelVersion, modelInputPath: modelInputPath, optimizationLevel: optimizationLevel, modelInputNum: modelInputNum, modelInputInfos: modelInputInfos, modelOutputPath: modelOutputPath, modelFormat: modelFormat, tensorInfos: tensorInfos, gpuType: gpuType, hyperParameter: hyperParameter, accEngineVersion: accEngineVersion, tags: tags, modelSignature: modelSignature), region: region, logger: logger, on: eventLoop)
    }
}
