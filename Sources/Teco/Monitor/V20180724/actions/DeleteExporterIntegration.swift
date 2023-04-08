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
    /// DeleteExporterIntegration请求参数结构体
    public struct DeleteExporterIntegrationRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String

        /// 类型
        public let kind: String

        /// 名字
        public let name: String

        /// Kubernetes 集群类型，取值如下：
        /// <li> 1= 容器集群(TKE) </li>
        /// <li> 2=弹性集群<EKS> </li>
        /// <li> 3= Prometheus管理的弹性集群<MEKS> </li>
        public let kubeType: Int64?

        /// 集群 ID
        public let clusterId: String?

        public init(instanceId: String, kind: String, name: String, kubeType: Int64? = nil, clusterId: String? = nil) {
            self.instanceId = instanceId
            self.kind = kind
            self.name = name
            self.kubeType = kubeType
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case kind = "Kind"
            case name = "Name"
            case kubeType = "KubeType"
            case clusterId = "ClusterId"
        }
    }

    /// DeleteExporterIntegration返回参数结构体
    public struct DeleteExporterIntegrationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除 exporter 集成
    @inlinable @discardableResult
    public func deleteExporterIntegration(_ input: DeleteExporterIntegrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteExporterIntegrationResponse> {
        self.client.execute(action: "DeleteExporterIntegration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除 exporter 集成
    @inlinable @discardableResult
    public func deleteExporterIntegration(_ input: DeleteExporterIntegrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteExporterIntegrationResponse {
        try await self.client.execute(action: "DeleteExporterIntegration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除 exporter 集成
    @inlinable @discardableResult
    public func deleteExporterIntegration(instanceId: String, kind: String, name: String, kubeType: Int64? = nil, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteExporterIntegrationResponse> {
        self.deleteExporterIntegration(.init(instanceId: instanceId, kind: kind, name: name, kubeType: kubeType, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除 exporter 集成
    @inlinable @discardableResult
    public func deleteExporterIntegration(instanceId: String, kind: String, name: String, kubeType: Int64? = nil, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteExporterIntegrationResponse {
        try await self.deleteExporterIntegration(.init(instanceId: instanceId, kind: kind, name: name, kubeType: kubeType, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
