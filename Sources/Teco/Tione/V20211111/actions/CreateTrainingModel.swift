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
    /// CreateTrainingModel请求参数结构体
    public struct CreateTrainingModelRequest: TCRequestModel {
        /// 导入方式
        /// MODEL：导入新模型
        /// VERSION：导入新版本
        /// EXIST：导入现有版本
        public let importMethod: String

        /// 模型来源cos目录，以/结尾
        public let trainingModelCosPath: CosPathInfo

        /// 推理环境来源（SYSTEM/CUSTOM）
        public let reasoningEnvironmentSource: String

        /// 模型名称，不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        public let trainingModelName: String?

        /// 标签配置
        public let tags: [Tag]?

        /// 训练任务名称
        public let trainingJobName: String?

        /// 算法框架 （PYTORCH/TENSORFLOW/DETECTRON2/PMML/MMDETECTION)
        public let algorithmFramework: String?

        /// 推理环境
        public let reasoningEnvironment: String?

        /// 训练指标，最多支持1000字符
        public let trainingModelIndex: String?

        /// 模型版本
        public let trainingModelVersion: String?

        /// 自定义推理环境
        public let reasoningImageInfo: ImageInfo?

        /// 模型移动方式（CUT/COPY）
        public let modelMoveMode: String?

        /// 训练任务ID
        public let trainingJobId: String?

        /// 模型ID（导入新模型不需要，导入新版本需要）
        public let trainingModelId: String?

        /// 模型存储cos目录
        public let modelOutputPath: CosPathInfo?

        /// 模型来源 （JOB/COS）
        public let trainingModelSource: String?

        /// 模型偏好
        public let trainingPreference: String?

        /// 自动学习任务ID（已废弃）
        public let autoMLTaskId: String?

        /// 任务版本
        public let trainingJobVersion: String?

        /// 模型版本类型；
        /// 枚举值：NORMAL(通用)  ACCELERATE(加速)
        /// 注意:  默认为NORMAL
        public let modelVersionType: String?

        /// 模型格式 （PYTORCH/TORCH_SCRIPT/DETECTRON2/SAVED_MODEL/FROZEN_GRAPH/PMML/MMDETECTION/ONNX/HUGGING_FACE）
        public let modelFormat: String?

        /// 推理镜像ID
        public let reasoningEnvironmentId: String?

        /// 模型自动清理开关(true/false)，当前版本仅支持SAVED_MODEL格式模型
        public let autoClean: String?

        /// 模型数量保留上限(默认值为24个，上限为24，下限为1，步长为1)
        public let maxReservedModels: UInt64?

        /// 模型清理周期(默认值为1分钟，上限为1440，下限为1分钟，步长为1)
        public let modelCleanPeriod: UInt64?

        /// 是否QAT模型
        public let isQAT: Bool?

        public init(importMethod: String, trainingModelCosPath: CosPathInfo, reasoningEnvironmentSource: String, trainingModelName: String? = nil, tags: [Tag]? = nil, trainingJobName: String? = nil, algorithmFramework: String? = nil, reasoningEnvironment: String? = nil, trainingModelIndex: String? = nil, trainingModelVersion: String? = nil, reasoningImageInfo: ImageInfo? = nil, modelMoveMode: String? = nil, trainingJobId: String? = nil, trainingModelId: String? = nil, modelOutputPath: CosPathInfo? = nil, trainingModelSource: String? = nil, trainingPreference: String? = nil, autoMLTaskId: String? = nil, trainingJobVersion: String? = nil, modelVersionType: String? = nil, modelFormat: String? = nil, reasoningEnvironmentId: String? = nil, autoClean: String? = nil, maxReservedModels: UInt64? = nil, modelCleanPeriod: UInt64? = nil, isQAT: Bool? = nil) {
            self.importMethod = importMethod
            self.trainingModelCosPath = trainingModelCosPath
            self.reasoningEnvironmentSource = reasoningEnvironmentSource
            self.trainingModelName = trainingModelName
            self.tags = tags
            self.trainingJobName = trainingJobName
            self.algorithmFramework = algorithmFramework
            self.reasoningEnvironment = reasoningEnvironment
            self.trainingModelIndex = trainingModelIndex
            self.trainingModelVersion = trainingModelVersion
            self.reasoningImageInfo = reasoningImageInfo
            self.modelMoveMode = modelMoveMode
            self.trainingJobId = trainingJobId
            self.trainingModelId = trainingModelId
            self.modelOutputPath = modelOutputPath
            self.trainingModelSource = trainingModelSource
            self.trainingPreference = trainingPreference
            self.autoMLTaskId = autoMLTaskId
            self.trainingJobVersion = trainingJobVersion
            self.modelVersionType = modelVersionType
            self.modelFormat = modelFormat
            self.reasoningEnvironmentId = reasoningEnvironmentId
            self.autoClean = autoClean
            self.maxReservedModels = maxReservedModels
            self.modelCleanPeriod = modelCleanPeriod
            self.isQAT = isQAT
        }

        enum CodingKeys: String, CodingKey {
            case importMethod = "ImportMethod"
            case trainingModelCosPath = "TrainingModelCosPath"
            case reasoningEnvironmentSource = "ReasoningEnvironmentSource"
            case trainingModelName = "TrainingModelName"
            case tags = "Tags"
            case trainingJobName = "TrainingJobName"
            case algorithmFramework = "AlgorithmFramework"
            case reasoningEnvironment = "ReasoningEnvironment"
            case trainingModelIndex = "TrainingModelIndex"
            case trainingModelVersion = "TrainingModelVersion"
            case reasoningImageInfo = "ReasoningImageInfo"
            case modelMoveMode = "ModelMoveMode"
            case trainingJobId = "TrainingJobId"
            case trainingModelId = "TrainingModelId"
            case modelOutputPath = "ModelOutputPath"
            case trainingModelSource = "TrainingModelSource"
            case trainingPreference = "TrainingPreference"
            case autoMLTaskId = "AutoMLTaskId"
            case trainingJobVersion = "TrainingJobVersion"
            case modelVersionType = "ModelVersionType"
            case modelFormat = "ModelFormat"
            case reasoningEnvironmentId = "ReasoningEnvironmentId"
            case autoClean = "AutoClean"
            case maxReservedModels = "MaxReservedModels"
            case modelCleanPeriod = "ModelCleanPeriod"
            case isQAT = "IsQAT"
        }
    }

    /// CreateTrainingModel返回参数结构体
    public struct CreateTrainingModelResponse: TCResponseModel {
        /// 模型ID，TrainingModel ID
        public let id: String

        /// 模型版本ID
        public let trainingModelVersionId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case trainingModelVersionId = "TrainingModelVersionId"
            case requestId = "RequestId"
        }
    }

    /// 导入模型
    @inlinable
    public func createTrainingModel(_ input: CreateTrainingModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTrainingModelResponse> {
        self.client.execute(action: "CreateTrainingModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导入模型
    @inlinable
    public func createTrainingModel(_ input: CreateTrainingModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTrainingModelResponse {
        try await self.client.execute(action: "CreateTrainingModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导入模型
    @inlinable
    public func createTrainingModel(importMethod: String, trainingModelCosPath: CosPathInfo, reasoningEnvironmentSource: String, trainingModelName: String? = nil, tags: [Tag]? = nil, trainingJobName: String? = nil, algorithmFramework: String? = nil, reasoningEnvironment: String? = nil, trainingModelIndex: String? = nil, trainingModelVersion: String? = nil, reasoningImageInfo: ImageInfo? = nil, modelMoveMode: String? = nil, trainingJobId: String? = nil, trainingModelId: String? = nil, modelOutputPath: CosPathInfo? = nil, trainingModelSource: String? = nil, trainingPreference: String? = nil, autoMLTaskId: String? = nil, trainingJobVersion: String? = nil, modelVersionType: String? = nil, modelFormat: String? = nil, reasoningEnvironmentId: String? = nil, autoClean: String? = nil, maxReservedModels: UInt64? = nil, modelCleanPeriod: UInt64? = nil, isQAT: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTrainingModelResponse> {
        self.createTrainingModel(.init(importMethod: importMethod, trainingModelCosPath: trainingModelCosPath, reasoningEnvironmentSource: reasoningEnvironmentSource, trainingModelName: trainingModelName, tags: tags, trainingJobName: trainingJobName, algorithmFramework: algorithmFramework, reasoningEnvironment: reasoningEnvironment, trainingModelIndex: trainingModelIndex, trainingModelVersion: trainingModelVersion, reasoningImageInfo: reasoningImageInfo, modelMoveMode: modelMoveMode, trainingJobId: trainingJobId, trainingModelId: trainingModelId, modelOutputPath: modelOutputPath, trainingModelSource: trainingModelSource, trainingPreference: trainingPreference, autoMLTaskId: autoMLTaskId, trainingJobVersion: trainingJobVersion, modelVersionType: modelVersionType, modelFormat: modelFormat, reasoningEnvironmentId: reasoningEnvironmentId, autoClean: autoClean, maxReservedModels: maxReservedModels, modelCleanPeriod: modelCleanPeriod, isQAT: isQAT), region: region, logger: logger, on: eventLoop)
    }

    /// 导入模型
    @inlinable
    public func createTrainingModel(importMethod: String, trainingModelCosPath: CosPathInfo, reasoningEnvironmentSource: String, trainingModelName: String? = nil, tags: [Tag]? = nil, trainingJobName: String? = nil, algorithmFramework: String? = nil, reasoningEnvironment: String? = nil, trainingModelIndex: String? = nil, trainingModelVersion: String? = nil, reasoningImageInfo: ImageInfo? = nil, modelMoveMode: String? = nil, trainingJobId: String? = nil, trainingModelId: String? = nil, modelOutputPath: CosPathInfo? = nil, trainingModelSource: String? = nil, trainingPreference: String? = nil, autoMLTaskId: String? = nil, trainingJobVersion: String? = nil, modelVersionType: String? = nil, modelFormat: String? = nil, reasoningEnvironmentId: String? = nil, autoClean: String? = nil, maxReservedModels: UInt64? = nil, modelCleanPeriod: UInt64? = nil, isQAT: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTrainingModelResponse {
        try await self.createTrainingModel(.init(importMethod: importMethod, trainingModelCosPath: trainingModelCosPath, reasoningEnvironmentSource: reasoningEnvironmentSource, trainingModelName: trainingModelName, tags: tags, trainingJobName: trainingJobName, algorithmFramework: algorithmFramework, reasoningEnvironment: reasoningEnvironment, trainingModelIndex: trainingModelIndex, trainingModelVersion: trainingModelVersion, reasoningImageInfo: reasoningImageInfo, modelMoveMode: modelMoveMode, trainingJobId: trainingJobId, trainingModelId: trainingModelId, modelOutputPath: modelOutputPath, trainingModelSource: trainingModelSource, trainingPreference: trainingPreference, autoMLTaskId: autoMLTaskId, trainingJobVersion: trainingJobVersion, modelVersionType: modelVersionType, modelFormat: modelFormat, reasoningEnvironmentId: reasoningEnvironmentId, autoClean: autoClean, maxReservedModels: maxReservedModels, modelCleanPeriod: modelCleanPeriod, isQAT: isQAT), region: region, logger: logger, on: eventLoop)
    }
}
