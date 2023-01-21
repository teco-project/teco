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

extension Iecp {
    /// CreateApplicationVisualization请求参数结构体
    public struct CreateApplicationVisualizationRequest: TCRequestModel {
        /// 基本信息
        public let basicInfo: ApplicationBasicInfo

        /// 基本配置
        public let basicConfig: ApplicationBasicConfig

        /// 卷列表
        public let volumes: [Volume]?

        /// 服务配置
        public let service: Service?

        /// Job配置
        public let job: Job?

        /// CronJob配置
        public let cronJob: CronJob?

        /// 重新运行策略
        public let restartPolicy: String?

        /// 镜像拉取密钥
        public let imagePullSecrets: [String]?

        /// HPA配置
        public let horizontalPodAutoscaler: HorizontalPodAutoscaler?

        /// 初始化容器列表
        public let initContainers: [Container]?

        /// 容器列表
        public let containers: [Container]?

        public init(basicInfo: ApplicationBasicInfo, basicConfig: ApplicationBasicConfig, volumes: [Volume]? = nil, service: Service? = nil, job: Job? = nil, cronJob: CronJob? = nil, restartPolicy: String? = nil, imagePullSecrets: [String]? = nil, horizontalPodAutoscaler: HorizontalPodAutoscaler? = nil, initContainers: [Container]? = nil, containers: [Container]? = nil) {
            self.basicInfo = basicInfo
            self.basicConfig = basicConfig
            self.volumes = volumes
            self.service = service
            self.job = job
            self.cronJob = cronJob
            self.restartPolicy = restartPolicy
            self.imagePullSecrets = imagePullSecrets
            self.horizontalPodAutoscaler = horizontalPodAutoscaler
            self.initContainers = initContainers
            self.containers = containers
        }

        enum CodingKeys: String, CodingKey {
            case basicInfo = "BasicInfo"
            case basicConfig = "BasicConfig"
            case volumes = "Volumes"
            case service = "Service"
            case job = "Job"
            case cronJob = "CronJob"
            case restartPolicy = "RestartPolicy"
            case imagePullSecrets = "ImagePullSecrets"
            case horizontalPodAutoscaler = "HorizontalPodAutoscaler"
            case initContainers = "InitContainers"
            case containers = "Containers"
        }
    }

    /// CreateApplicationVisualization返回参数结构体
    public struct CreateApplicationVisualizationResponse: TCResponseModel {
        /// 应用ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationId: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case requestId = "RequestId"
        }
    }

    /// 创建可视化创建应用模板
    @inlinable
    public func createApplicationVisualization(_ input: CreateApplicationVisualizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationVisualizationResponse> {
        self.client.execute(action: "CreateApplicationVisualization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建可视化创建应用模板
    @inlinable
    public func createApplicationVisualization(_ input: CreateApplicationVisualizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationVisualizationResponse {
        try await self.client.execute(action: "CreateApplicationVisualization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建可视化创建应用模板
    @inlinable
    public func createApplicationVisualization(basicInfo: ApplicationBasicInfo, basicConfig: ApplicationBasicConfig, volumes: [Volume]? = nil, service: Service? = nil, job: Job? = nil, cronJob: CronJob? = nil, restartPolicy: String? = nil, imagePullSecrets: [String]? = nil, horizontalPodAutoscaler: HorizontalPodAutoscaler? = nil, initContainers: [Container]? = nil, containers: [Container]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationVisualizationResponse> {
        self.createApplicationVisualization(CreateApplicationVisualizationRequest(basicInfo: basicInfo, basicConfig: basicConfig, volumes: volumes, service: service, job: job, cronJob: cronJob, restartPolicy: restartPolicy, imagePullSecrets: imagePullSecrets, horizontalPodAutoscaler: horizontalPodAutoscaler, initContainers: initContainers, containers: containers), region: region, logger: logger, on: eventLoop)
    }

    /// 创建可视化创建应用模板
    @inlinable
    public func createApplicationVisualization(basicInfo: ApplicationBasicInfo, basicConfig: ApplicationBasicConfig, volumes: [Volume]? = nil, service: Service? = nil, job: Job? = nil, cronJob: CronJob? = nil, restartPolicy: String? = nil, imagePullSecrets: [String]? = nil, horizontalPodAutoscaler: HorizontalPodAutoscaler? = nil, initContainers: [Container]? = nil, containers: [Container]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationVisualizationResponse {
        try await self.createApplicationVisualization(CreateApplicationVisualizationRequest(basicInfo: basicInfo, basicConfig: basicConfig, volumes: volumes, service: service, job: job, cronJob: cronJob, restartPolicy: restartPolicy, imagePullSecrets: imagePullSecrets, horizontalPodAutoscaler: horizontalPodAutoscaler, initContainers: initContainers, containers: containers), region: region, logger: logger, on: eventLoop)
    }
}
