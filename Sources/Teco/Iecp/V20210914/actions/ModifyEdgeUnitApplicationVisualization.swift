//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// ModifyEdgeUnitApplicationVisualization请求参数结构体
    public struct ModifyEdgeUnitApplicationVisualizationRequest: TCRequestModel {
        /// 单元ID
        public let edgeUnitId: UInt64

        /// 应用ID
        public let applicationId: UInt64

        /// 应用配置
        public let basicConfig: ApplicationBasicConfig

        /// 卷配置
        public let volumes: [Volume]?

        /// 初始容器列表
        public let initContainers: [Container]?

        /// 容器配置
        public let containers: [Container]?

        /// 服务配置
        public let service: Service?

        /// Job配置
        public let job: Job?

        /// CronJob配置
        public let cronJob: CronJob?

        /// 重启策略
        public let restartPolicy: String?

        /// 镜像拉取密钥
        public let imagePullSecrets: [String]?

        /// HPA配置
        public let horizontalPodAutoscaler: HorizontalPodAutoscaler?

        public init(edgeUnitId: UInt64, applicationId: UInt64, basicConfig: ApplicationBasicConfig, volumes: [Volume]? = nil, initContainers: [Container]? = nil, containers: [Container]? = nil, service: Service? = nil, job: Job? = nil, cronJob: CronJob? = nil, restartPolicy: String? = nil, imagePullSecrets: [String]? = nil, horizontalPodAutoscaler: HorizontalPodAutoscaler? = nil) {
            self.edgeUnitId = edgeUnitId
            self.applicationId = applicationId
            self.basicConfig = basicConfig
            self.volumes = volumes
            self.initContainers = initContainers
            self.containers = containers
            self.service = service
            self.job = job
            self.cronJob = cronJob
            self.restartPolicy = restartPolicy
            self.imagePullSecrets = imagePullSecrets
            self.horizontalPodAutoscaler = horizontalPodAutoscaler
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case applicationId = "ApplicationId"
            case basicConfig = "BasicConfig"
            case volumes = "Volumes"
            case initContainers = "InitContainers"
            case containers = "Containers"
            case service = "Service"
            case job = "Job"
            case cronJob = "CronJob"
            case restartPolicy = "RestartPolicy"
            case imagePullSecrets = "ImagePullSecrets"
            case horizontalPodAutoscaler = "HorizontalPodAutoscaler"
        }
    }

    /// ModifyEdgeUnitApplicationVisualization返回参数结构体
    public struct ModifyEdgeUnitApplicationVisualizationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 可视化修改应用配置
    @inlinable @discardableResult
    public func modifyEdgeUnitApplicationVisualization(_ input: ModifyEdgeUnitApplicationVisualizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEdgeUnitApplicationVisualizationResponse> {
        self.client.execute(action: "ModifyEdgeUnitApplicationVisualization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 可视化修改应用配置
    @inlinable @discardableResult
    public func modifyEdgeUnitApplicationVisualization(_ input: ModifyEdgeUnitApplicationVisualizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEdgeUnitApplicationVisualizationResponse {
        try await self.client.execute(action: "ModifyEdgeUnitApplicationVisualization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 可视化修改应用配置
    @inlinable @discardableResult
    public func modifyEdgeUnitApplicationVisualization(edgeUnitId: UInt64, applicationId: UInt64, basicConfig: ApplicationBasicConfig, volumes: [Volume]? = nil, initContainers: [Container]? = nil, containers: [Container]? = nil, service: Service? = nil, job: Job? = nil, cronJob: CronJob? = nil, restartPolicy: String? = nil, imagePullSecrets: [String]? = nil, horizontalPodAutoscaler: HorizontalPodAutoscaler? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEdgeUnitApplicationVisualizationResponse> {
        self.modifyEdgeUnitApplicationVisualization(ModifyEdgeUnitApplicationVisualizationRequest(edgeUnitId: edgeUnitId, applicationId: applicationId, basicConfig: basicConfig, volumes: volumes, initContainers: initContainers, containers: containers, service: service, job: job, cronJob: cronJob, restartPolicy: restartPolicy, imagePullSecrets: imagePullSecrets, horizontalPodAutoscaler: horizontalPodAutoscaler), region: region, logger: logger, on: eventLoop)
    }

    /// 可视化修改应用配置
    @inlinable @discardableResult
    public func modifyEdgeUnitApplicationVisualization(edgeUnitId: UInt64, applicationId: UInt64, basicConfig: ApplicationBasicConfig, volumes: [Volume]? = nil, initContainers: [Container]? = nil, containers: [Container]? = nil, service: Service? = nil, job: Job? = nil, cronJob: CronJob? = nil, restartPolicy: String? = nil, imagePullSecrets: [String]? = nil, horizontalPodAutoscaler: HorizontalPodAutoscaler? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEdgeUnitApplicationVisualizationResponse {
        try await self.modifyEdgeUnitApplicationVisualization(ModifyEdgeUnitApplicationVisualizationRequest(edgeUnitId: edgeUnitId, applicationId: applicationId, basicConfig: basicConfig, volumes: volumes, initContainers: initContainers, containers: containers, service: service, job: job, cronJob: cronJob, restartPolicy: restartPolicy, imagePullSecrets: imagePullSecrets, horizontalPodAutoscaler: horizontalPodAutoscaler), region: region, logger: logger, on: eventLoop)
    }
}
