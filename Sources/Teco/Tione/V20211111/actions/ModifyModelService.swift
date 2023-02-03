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
    /// ModifyModelService请求参数结构体
    public struct ModifyModelServiceRequest: TCRequestModel {
        /// 服务id
        public let serviceId: String

        /// 模型信息，需要挂载模型时填写
        public let modelInfo: ModelInfo?

        /// 镜像信息，配置服务运行所需的镜像地址等信息
        public let imageInfo: ImageInfo?

        /// 环境变量，可选参数，用于配置容器中的环境变量
        public let env: [EnvVar]?

        /// 资源描述，指定预付费模式下的cpu,mem,gpu等信息，后付费无需填写
        public let resources: ResourceInfo?

        /// 使用DescribeBillingSpecs接口返回的规格列表中的值，或者参考实例列表:
        /// TI.S.MEDIUM.POST	2C4G
        /// TI.S.LARGE.POST	4C8G
        /// TI.S.2XLARGE16.POST	8C16G
        /// TI.S.2XLARGE32.POST	8C32G
        /// TI.S.4XLARGE32.POST	16C32G
        /// TI.S.4XLARGE64.POST	16C64G
        /// TI.S.6XLARGE48.POST	24C48G
        /// TI.S.6XLARGE96.POST	24C96G
        /// TI.S.8XLARGE64.POST	32C64G
        /// TI.S.8XLARGE128.POST 32C128G
        /// TI.GN7.LARGE20.POST	4C20G T4*1/4
        /// TI.GN7.2XLARGE40.POST	10C40G T4*1/2
        /// TI.GN7.2XLARGE32.POST	8C32G T4*1
        /// TI.GN7.5XLARGE80.POST	20C80G T4*1
        /// TI.GN7.8XLARGE128.POST	32C128G T4*1
        /// TI.GN7.10XLARGE160.POST	40C160G T4*2
        /// TI.GN7.20XLARGE320.POST	80C320G T4*4
        public let instanceType: String?

        /// 扩缩容类型 支持：自动 - "AUTO", 手动 - "MANUAL"
        public let scaleMode: String?

        /// 实例数量, 不同计费模式和调节模式下对应关系如下
        /// PREPAID 和 POSTPAID_BY_HOUR:
        /// 手动调节模式下对应 实例数量
        /// 自动调节模式下对应 基于时间的默认策略的实例数量
        /// HYBRID_PAID:
        /// 后付费实例手动调节模式下对应 实例数量
        /// 后付费实例自动调节模式下对应 时间策略的默认策略的实例数量
        public let replicas: Int64?

        /// 自动伸缩信息
        public let horizontalPodAutoscaler: HorizontalPodAutoscaler?

        /// 是否开启日志投递，开启后需填写配置投递到指定cls
        public let logEnable: Bool?

        /// 日志配置，需要投递服务日志到指定cls时填写
        public let logConfig: LogConfig?

        /// 特殊更新行为： "STOP": 停止, "RESUME": 重启, "SCALE": 扩缩容, 存在这些特殊更新行为时，会忽略其他更新字段
        public let serviceAction: String?

        /// 服务的描述
        public let serviceDescription: String?

        /// 自动伸缩策略
        public let scaleStrategy: String?

        /// 自动伸缩策略配置 HPA : 通过HPA进行弹性伸缩 CRON 通过定时任务进行伸缩
        public let cronScaleJobs: [CronScaleJob]?

        /// 计费模式[HYBRID_PAID]时生效, 用于标识混合计费模式下的预付费实例数, 若不填则默认为1
        public let hybridBillingPrepaidReplicas: Int64?

        /// 是否开启模型的热更新。默认不开启
        public let modelHotUpdateEnable: Bool?

        /// 定时停止配置
        public let scheduledAction: ScheduledAction?

        /// 服务限速限流相关配置
        public let serviceLimit: ServiceLimit?

        /// 挂载配置，目前只支持CFS
        public let volumeMount: VolumeMount?

        public init(serviceId: String, modelInfo: ModelInfo? = nil, imageInfo: ImageInfo? = nil, env: [EnvVar]? = nil, resources: ResourceInfo? = nil, instanceType: String? = nil, scaleMode: String? = nil, replicas: Int64? = nil, horizontalPodAutoscaler: HorizontalPodAutoscaler? = nil, logEnable: Bool? = nil, logConfig: LogConfig? = nil, serviceAction: String? = nil, serviceDescription: String? = nil, scaleStrategy: String? = nil, cronScaleJobs: [CronScaleJob]? = nil, hybridBillingPrepaidReplicas: Int64? = nil, modelHotUpdateEnable: Bool? = nil, scheduledAction: ScheduledAction? = nil, serviceLimit: ServiceLimit? = nil, volumeMount: VolumeMount? = nil) {
            self.serviceId = serviceId
            self.modelInfo = modelInfo
            self.imageInfo = imageInfo
            self.env = env
            self.resources = resources
            self.instanceType = instanceType
            self.scaleMode = scaleMode
            self.replicas = replicas
            self.horizontalPodAutoscaler = horizontalPodAutoscaler
            self.logEnable = logEnable
            self.logConfig = logConfig
            self.serviceAction = serviceAction
            self.serviceDescription = serviceDescription
            self.scaleStrategy = scaleStrategy
            self.cronScaleJobs = cronScaleJobs
            self.hybridBillingPrepaidReplicas = hybridBillingPrepaidReplicas
            self.modelHotUpdateEnable = modelHotUpdateEnable
            self.scheduledAction = scheduledAction
            self.serviceLimit = serviceLimit
            self.volumeMount = volumeMount
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case modelInfo = "ModelInfo"
            case imageInfo = "ImageInfo"
            case env = "Env"
            case resources = "Resources"
            case instanceType = "InstanceType"
            case scaleMode = "ScaleMode"
            case replicas = "Replicas"
            case horizontalPodAutoscaler = "HorizontalPodAutoscaler"
            case logEnable = "LogEnable"
            case logConfig = "LogConfig"
            case serviceAction = "ServiceAction"
            case serviceDescription = "ServiceDescription"
            case scaleStrategy = "ScaleStrategy"
            case cronScaleJobs = "CronScaleJobs"
            case hybridBillingPrepaidReplicas = "HybridBillingPrepaidReplicas"
            case modelHotUpdateEnable = "ModelHotUpdateEnable"
            case scheduledAction = "ScheduledAction"
            case serviceLimit = "ServiceLimit"
            case volumeMount = "VolumeMount"
        }
    }

    /// ModifyModelService返回参数结构体
    public struct ModifyModelServiceResponse: TCResponseModel {
        /// 生成的模型服务
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let service: Service?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case service = "Service"
            case requestId = "RequestId"
        }
    }

    /// 更新模型服务
    ///
    /// 用于更新模型服务
    @inlinable
    public func modifyModelService(_ input: ModifyModelServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyModelServiceResponse> {
        self.client.execute(action: "ModifyModelService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新模型服务
    ///
    /// 用于更新模型服务
    @inlinable
    public func modifyModelService(_ input: ModifyModelServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModelServiceResponse {
        try await self.client.execute(action: "ModifyModelService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新模型服务
    ///
    /// 用于更新模型服务
    @inlinable
    public func modifyModelService(serviceId: String, modelInfo: ModelInfo? = nil, imageInfo: ImageInfo? = nil, env: [EnvVar]? = nil, resources: ResourceInfo? = nil, instanceType: String? = nil, scaleMode: String? = nil, replicas: Int64? = nil, horizontalPodAutoscaler: HorizontalPodAutoscaler? = nil, logEnable: Bool? = nil, logConfig: LogConfig? = nil, serviceAction: String? = nil, serviceDescription: String? = nil, scaleStrategy: String? = nil, cronScaleJobs: [CronScaleJob]? = nil, hybridBillingPrepaidReplicas: Int64? = nil, modelHotUpdateEnable: Bool? = nil, scheduledAction: ScheduledAction? = nil, serviceLimit: ServiceLimit? = nil, volumeMount: VolumeMount? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyModelServiceResponse> {
        let input = ModifyModelServiceRequest(serviceId: serviceId, modelInfo: modelInfo, imageInfo: imageInfo, env: env, resources: resources, instanceType: instanceType, scaleMode: scaleMode, replicas: replicas, horizontalPodAutoscaler: horizontalPodAutoscaler, logEnable: logEnable, logConfig: logConfig, serviceAction: serviceAction, serviceDescription: serviceDescription, scaleStrategy: scaleStrategy, cronScaleJobs: cronScaleJobs, hybridBillingPrepaidReplicas: hybridBillingPrepaidReplicas, modelHotUpdateEnable: modelHotUpdateEnable, scheduledAction: scheduledAction, serviceLimit: serviceLimit, volumeMount: volumeMount)
        return self.client.execute(action: "ModifyModelService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新模型服务
    ///
    /// 用于更新模型服务
    @inlinable
    public func modifyModelService(serviceId: String, modelInfo: ModelInfo? = nil, imageInfo: ImageInfo? = nil, env: [EnvVar]? = nil, resources: ResourceInfo? = nil, instanceType: String? = nil, scaleMode: String? = nil, replicas: Int64? = nil, horizontalPodAutoscaler: HorizontalPodAutoscaler? = nil, logEnable: Bool? = nil, logConfig: LogConfig? = nil, serviceAction: String? = nil, serviceDescription: String? = nil, scaleStrategy: String? = nil, cronScaleJobs: [CronScaleJob]? = nil, hybridBillingPrepaidReplicas: Int64? = nil, modelHotUpdateEnable: Bool? = nil, scheduledAction: ScheduledAction? = nil, serviceLimit: ServiceLimit? = nil, volumeMount: VolumeMount? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModelServiceResponse {
        let input = ModifyModelServiceRequest(serviceId: serviceId, modelInfo: modelInfo, imageInfo: imageInfo, env: env, resources: resources, instanceType: instanceType, scaleMode: scaleMode, replicas: replicas, horizontalPodAutoscaler: horizontalPodAutoscaler, logEnable: logEnable, logConfig: logConfig, serviceAction: serviceAction, serviceDescription: serviceDescription, scaleStrategy: scaleStrategy, cronScaleJobs: cronScaleJobs, hybridBillingPrepaidReplicas: hybridBillingPrepaidReplicas, modelHotUpdateEnable: modelHotUpdateEnable, scheduledAction: scheduledAction, serviceLimit: serviceLimit, volumeMount: volumeMount)
        return try await self.client.execute(action: "ModifyModelService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
