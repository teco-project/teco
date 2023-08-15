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

import Logging
import NIOCore
import TecoCore

extension Monitor {
    /// CreateServiceDiscovery请求参数结构体
    public struct CreateServiceDiscoveryRequest: TCRequestModel {
        /// Prometheus 实例 ID
        public let instanceId: String

        /// - 类型为TKE：对应集成的腾讯云容器服务集群 ID
        public let kubeClusterId: String

        /// 用户 Kubernetes 集群类型：
        /// - 1 = 容器服务集群(TKE)
        public let kubeType: Int64

        /// 服务发现类型，取值如下：
        /// - 1 = ServiceMonitor
        /// - 2 = PodMonitor
        /// - 3 = JobMonitor
        public let type: Int64

        /// 服务发现配置信息
        public let yaml: String

        public init(instanceId: String, kubeClusterId: String, kubeType: Int64, type: Int64, yaml: String) {
            self.instanceId = instanceId
            self.kubeClusterId = kubeClusterId
            self.kubeType = kubeType
            self.type = type
            self.yaml = yaml
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case kubeClusterId = "KubeClusterId"
            case kubeType = "KubeType"
            case type = "Type"
            case yaml = "Yaml"
        }
    }

    /// CreateServiceDiscovery返回参数结构体
    public struct CreateServiceDiscoveryResponse: TCResponseModel {
        /// 创建成功之后，返回对应服务发现信息
        public let serviceDiscovery: ServiceDiscoveryItem

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serviceDiscovery = "ServiceDiscovery"
            case requestId = "RequestId"
        }
    }

    /// 创建服务发现
    ///
    /// 在腾讯云容器服务下创建 Prometheus 服务发现。
    ///
    /// 注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
    /// [Agent 安装](https://cloud.tencent.com/document/product/248/48859)。
    @inlinable
    public func createServiceDiscovery(_ input: CreateServiceDiscoveryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServiceDiscoveryResponse> {
        self.client.execute(action: "CreateServiceDiscovery", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建服务发现
    ///
    /// 在腾讯云容器服务下创建 Prometheus 服务发现。
    ///
    /// 注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
    /// [Agent 安装](https://cloud.tencent.com/document/product/248/48859)。
    @inlinable
    public func createServiceDiscovery(_ input: CreateServiceDiscoveryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServiceDiscoveryResponse {
        try await self.client.execute(action: "CreateServiceDiscovery", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建服务发现
    ///
    /// 在腾讯云容器服务下创建 Prometheus 服务发现。
    ///
    /// 注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
    /// [Agent 安装](https://cloud.tencent.com/document/product/248/48859)。
    @inlinable
    public func createServiceDiscovery(instanceId: String, kubeClusterId: String, kubeType: Int64, type: Int64, yaml: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServiceDiscoveryResponse> {
        self.createServiceDiscovery(.init(instanceId: instanceId, kubeClusterId: kubeClusterId, kubeType: kubeType, type: type, yaml: yaml), region: region, logger: logger, on: eventLoop)
    }

    /// 创建服务发现
    ///
    /// 在腾讯云容器服务下创建 Prometheus 服务发现。
    ///
    /// 注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
    /// [Agent 安装](https://cloud.tencent.com/document/product/248/48859)。
    @inlinable
    public func createServiceDiscovery(instanceId: String, kubeClusterId: String, kubeType: Int64, type: Int64, yaml: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServiceDiscoveryResponse {
        try await self.createServiceDiscovery(.init(instanceId: instanceId, kubeClusterId: kubeClusterId, kubeType: kubeType, type: type, yaml: yaml), region: region, logger: logger, on: eventLoop)
    }
}
