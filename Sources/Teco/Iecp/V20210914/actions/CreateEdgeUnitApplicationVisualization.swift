//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iecp {
    /// 可视化创建应用
    ///
    /// 可视化创建应用
    @inlinable
    public func createEdgeUnitApplicationVisualization(_ input: CreateEdgeUnitApplicationVisualizationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateEdgeUnitApplicationVisualizationResponse > {
        self.client.execute(action: "CreateEdgeUnitApplicationVisualization", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 可视化创建应用
    ///
    /// 可视化创建应用
    @inlinable
    public func createEdgeUnitApplicationVisualization(_ input: CreateEdgeUnitApplicationVisualizationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEdgeUnitApplicationVisualizationResponse {
        try await self.client.execute(action: "CreateEdgeUnitApplicationVisualization", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateEdgeUnitApplicationVisualization请求参数结构体
    public struct CreateEdgeUnitApplicationVisualizationRequest: TCRequestModel {
        /// 基本信息
        public let basicInfo: ApplicationBasicInfo
        
        /// 基本配置
        public let basicConfig: ApplicationBasicConfig
        
        /// 单元ID
        public let edgeUnitId: UInt64
        
        /// 卷列表
        public let volumes: [Volume]?
        
        /// 服务配置
        public let service: Service
        
        /// 模版ID
        public let templateID: UInt64?
        
        /// Job配置
        public let job: Job
        
        /// CronJob配置
        public let cronJob: CronJob
        
        /// 重新运行策略
        public let restartPolicy: String?
        
        /// 镜像拉取密钥
        public let imagePullSecrets: [String]?
        
        /// HPA配置
        public let horizontalPodAutoscaler: HorizontalPodAutoscaler
        
        /// 初始化容器列表
        public let initContainers: [Container]?
        
        /// 容器列表
        public let containers: [Container]?
        
        public init (basicInfo: ApplicationBasicInfo, basicConfig: ApplicationBasicConfig, edgeUnitId: UInt64, volumes: [Volume]?, service: Service, templateID: UInt64?, job: Job, cronJob: CronJob, restartPolicy: String?, imagePullSecrets: [String]?, horizontalPodAutoscaler: HorizontalPodAutoscaler, initContainers: [Container]?, containers: [Container]?) {
            self.basicInfo = basicInfo
            self.basicConfig = basicConfig
            self.edgeUnitId = edgeUnitId
            self.volumes = volumes
            self.service = service
            self.templateID = templateID
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
            case edgeUnitId = "EdgeUnitId"
            case volumes = "Volumes"
            case service = "Service"
            case templateID = "TemplateID"
            case job = "Job"
            case cronJob = "CronJob"
            case restartPolicy = "RestartPolicy"
            case imagePullSecrets = "ImagePullSecrets"
            case horizontalPodAutoscaler = "HorizontalPodAutoscaler"
            case initContainers = "InitContainers"
            case containers = "Containers"
        }
    }
    
    /// CreateEdgeUnitApplicationVisualization返回参数结构体
    public struct CreateEdgeUnitApplicationVisualizationResponse: TCResponseModel {
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
}