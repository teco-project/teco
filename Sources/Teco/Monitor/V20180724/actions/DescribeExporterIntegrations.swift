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

extension Monitor {
    /// DescribeExporterIntegrations请求参数结构体
    public struct DescribeExporterIntegrationsRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String

        /// Kubernetes 集群类型，取值如下：
        /// <li> 1= 容器集群(TKE) </li>
        /// <li> 2=弹性集群<EKS> </li>
        /// <li> 3= Prometheus管理的弹性集群<MEKS> </li>
        public let kubeType: Int64?

        /// 集群 ID
        public let clusterId: String?

        /// 类型
        public let kind: String?

        /// 名字
        public let name: String?

        public init(instanceId: String, kubeType: Int64? = nil, clusterId: String? = nil, kind: String? = nil, name: String? = nil) {
            self.instanceId = instanceId
            self.kubeType = kubeType
            self.clusterId = clusterId
            self.kind = kind
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case kubeType = "KubeType"
            case clusterId = "ClusterId"
            case kind = "Kind"
            case name = "Name"
        }
    }

    /// DescribeExporterIntegrations返回参数结构体
    public struct DescribeExporterIntegrationsResponse: TCResponseModel {
        /// 集成配置列表
        public let integrationSet: [IntegrationConfiguration]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case integrationSet = "IntegrationSet"
            case requestId = "RequestId"
        }
    }

    /// 查询 exporter 集成列表
    @inlinable
    public func describeExporterIntegrations(_ input: DescribeExporterIntegrationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExporterIntegrationsResponse> {
        self.client.execute(action: "DescribeExporterIntegrations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 exporter 集成列表
    @inlinable
    public func describeExporterIntegrations(_ input: DescribeExporterIntegrationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExporterIntegrationsResponse {
        try await self.client.execute(action: "DescribeExporterIntegrations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 exporter 集成列表
    @inlinable
    public func describeExporterIntegrations(instanceId: String, kubeType: Int64? = nil, clusterId: String? = nil, kind: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExporterIntegrationsResponse> {
        self.describeExporterIntegrations(.init(instanceId: instanceId, kubeType: kubeType, clusterId: clusterId, kind: kind, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 查询 exporter 集成列表
    @inlinable
    public func describeExporterIntegrations(instanceId: String, kubeType: Int64? = nil, clusterId: String? = nil, kind: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExporterIntegrationsResponse {
        try await self.describeExporterIntegrations(.init(instanceId: instanceId, kubeType: kubeType, clusterId: clusterId, kind: kind, name: name), region: region, logger: logger, on: eventLoop)
    }
}
