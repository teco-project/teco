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
    /// CreateBatchTask请求参数结构体
    public struct CreateBatchTaskRequest: TCRequestModel {
        /// 跑批任务名称，不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        public let batchTaskName: String

        /// 计费模式，eg：PREPAID预付费，即包年包月；POSTPAID_BY_HOUR按小时后付费
        public let chargeType: String

        /// 资源配置
        public let resourceConfigInfo: ResourceConfigInfo

        /// 结果输出
        public let outputs: [DataConfig]

        /// 是否上报日志
        public let logEnable: Bool

        /// 工作类型 1:单次 2:周期
        public let jobType: UInt64?

        /// 任务周期描述
        public let cronInfo: CronInfo?

        /// 预付费专用资源组
        public let resourceGroupId: String?

        /// 标签配置
        public let tags: [Tag]?

        /// 服务对应的模型信息，有模型文件时需要填写
        public let modelInfo: ModelInfo?

        /// 自定义镜像信息
        public let imageInfo: ImageInfo?

        /// 代码包
        public let codePackage: CosPathInfo?

        /// 启动命令
        public let startCmd: String?

        /// 数据配置
        public let dataConfigs: [DataConfig]?

        /// 日志配置
        public let logConfig: LogConfig?

        /// VPC Id
        public let vpcId: String?

        /// 子网Id
        public let subnetId: String?

        /// 备注
        public let remark: String?

        public init(batchTaskName: String, chargeType: String, resourceConfigInfo: ResourceConfigInfo, outputs: [DataConfig], logEnable: Bool, jobType: UInt64? = nil, cronInfo: CronInfo? = nil, resourceGroupId: String? = nil, tags: [Tag]? = nil, modelInfo: ModelInfo? = nil, imageInfo: ImageInfo? = nil, codePackage: CosPathInfo? = nil, startCmd: String? = nil, dataConfigs: [DataConfig]? = nil, logConfig: LogConfig? = nil, vpcId: String? = nil, subnetId: String? = nil, remark: String? = nil) {
            self.batchTaskName = batchTaskName
            self.chargeType = chargeType
            self.resourceConfigInfo = resourceConfigInfo
            self.outputs = outputs
            self.logEnable = logEnable
            self.jobType = jobType
            self.cronInfo = cronInfo
            self.resourceGroupId = resourceGroupId
            self.tags = tags
            self.modelInfo = modelInfo
            self.imageInfo = imageInfo
            self.codePackage = codePackage
            self.startCmd = startCmd
            self.dataConfigs = dataConfigs
            self.logConfig = logConfig
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case batchTaskName = "BatchTaskName"
            case chargeType = "ChargeType"
            case resourceConfigInfo = "ResourceConfigInfo"
            case outputs = "Outputs"
            case logEnable = "LogEnable"
            case jobType = "JobType"
            case cronInfo = "CronInfo"
            case resourceGroupId = "ResourceGroupId"
            case tags = "Tags"
            case modelInfo = "ModelInfo"
            case imageInfo = "ImageInfo"
            case codePackage = "CodePackage"
            case startCmd = "StartCmd"
            case dataConfigs = "DataConfigs"
            case logConfig = "LogConfig"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case remark = "Remark"
        }
    }

    /// CreateBatchTask返回参数结构体
    public struct CreateBatchTaskResponse: TCResponseModel {
        /// 跑批任务ID
        public let batchTaskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchTaskId = "BatchTaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建跑批任务
    @inlinable
    public func createBatchTask(_ input: CreateBatchTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBatchTaskResponse> {
        self.client.execute(action: "CreateBatchTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建跑批任务
    @inlinable
    public func createBatchTask(_ input: CreateBatchTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchTaskResponse {
        try await self.client.execute(action: "CreateBatchTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建跑批任务
    @inlinable
    public func createBatchTask(batchTaskName: String, chargeType: String, resourceConfigInfo: ResourceConfigInfo, outputs: [DataConfig], logEnable: Bool, jobType: UInt64? = nil, cronInfo: CronInfo? = nil, resourceGroupId: String? = nil, tags: [Tag]? = nil, modelInfo: ModelInfo? = nil, imageInfo: ImageInfo? = nil, codePackage: CosPathInfo? = nil, startCmd: String? = nil, dataConfigs: [DataConfig]? = nil, logConfig: LogConfig? = nil, vpcId: String? = nil, subnetId: String? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBatchTaskResponse> {
        self.createBatchTask(CreateBatchTaskRequest(batchTaskName: batchTaskName, chargeType: chargeType, resourceConfigInfo: resourceConfigInfo, outputs: outputs, logEnable: logEnable, jobType: jobType, cronInfo: cronInfo, resourceGroupId: resourceGroupId, tags: tags, modelInfo: modelInfo, imageInfo: imageInfo, codePackage: codePackage, startCmd: startCmd, dataConfigs: dataConfigs, logConfig: logConfig, vpcId: vpcId, subnetId: subnetId, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 创建跑批任务
    @inlinable
    public func createBatchTask(batchTaskName: String, chargeType: String, resourceConfigInfo: ResourceConfigInfo, outputs: [DataConfig], logEnable: Bool, jobType: UInt64? = nil, cronInfo: CronInfo? = nil, resourceGroupId: String? = nil, tags: [Tag]? = nil, modelInfo: ModelInfo? = nil, imageInfo: ImageInfo? = nil, codePackage: CosPathInfo? = nil, startCmd: String? = nil, dataConfigs: [DataConfig]? = nil, logConfig: LogConfig? = nil, vpcId: String? = nil, subnetId: String? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchTaskResponse {
        try await self.createBatchTask(CreateBatchTaskRequest(batchTaskName: batchTaskName, chargeType: chargeType, resourceConfigInfo: resourceConfigInfo, outputs: outputs, logEnable: logEnable, jobType: jobType, cronInfo: cronInfo, resourceGroupId: resourceGroupId, tags: tags, modelInfo: modelInfo, imageInfo: imageInfo, codePackage: codePackage, startCmd: startCmd, dataConfigs: dataConfigs, logConfig: logConfig, vpcId: vpcId, subnetId: subnetId, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
