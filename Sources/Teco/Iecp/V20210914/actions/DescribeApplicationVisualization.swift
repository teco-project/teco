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
    /// DescribeApplicationVisualization请求参数结构体
    public struct DescribeApplicationVisualizationRequest: TCRequestModel {
        /// 应用模板ID
        public let applicationId: UInt64

        public init(applicationId: UInt64) {
            self.applicationId = applicationId
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
        }
    }

    /// DescribeApplicationVisualization返回参数结构体
    public struct DescribeApplicationVisualizationResponse: TCResponseModel {
        /// 基本信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let basicInfo: ApplicationBasicInfo?

        /// 基本配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let basicConfig: ApplicationBasicConfig?

        /// 卷配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let volumes: [Volume]?

        /// 初始化容器配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let initContainers: [Container]?

        /// 容器配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let containers: [Container]?

        /// 服务配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let service: Service?

        /// Job配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let job: Job?

        /// CronJob配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cronJob: CronJob?

        /// 重启策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let restartPolicy: String?

        /// HPA
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let horizontalPodAutoscaler: HorizontalPodAutoscaler?

        /// 镜像拉取Secret
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imagePullSecrets: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case basicInfo = "BasicInfo"
            case basicConfig = "BasicConfig"
            case volumes = "Volumes"
            case initContainers = "InitContainers"
            case containers = "Containers"
            case service = "Service"
            case job = "Job"
            case cronJob = "CronJob"
            case restartPolicy = "RestartPolicy"
            case horizontalPodAutoscaler = "HorizontalPodAutoscaler"
            case imagePullSecrets = "ImagePullSecrets"
            case requestId = "RequestId"
        }
    }

    /// 获取应用模板可视化配置信息
    @inlinable
    public func describeApplicationVisualization(_ input: DescribeApplicationVisualizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationVisualizationResponse> {
        self.client.execute(action: "DescribeApplicationVisualization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用模板可视化配置信息
    @inlinable
    public func describeApplicationVisualization(_ input: DescribeApplicationVisualizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationVisualizationResponse {
        try await self.client.execute(action: "DescribeApplicationVisualization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用模板可视化配置信息
    @inlinable
    public func describeApplicationVisualization(applicationId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationVisualizationResponse> {
        self.describeApplicationVisualization(DescribeApplicationVisualizationRequest(applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用模板可视化配置信息
    @inlinable
    public func describeApplicationVisualization(applicationId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationVisualizationResponse {
        try await self.describeApplicationVisualization(DescribeApplicationVisualizationRequest(applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }
}
