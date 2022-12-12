//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Monitor {
    /// DescribeServiceDiscovery请求参数结构体
    public struct DescribeServiceDiscoveryRequest: TCRequestModel {
        /// Prometheus 实例 ID
        public let instanceId: String
        
        /// <li>类型是 TKE，为对应的腾讯云容器服务集群 ID</li>
        public let kubeClusterId: String
        
        /// 用户 Kubernetes 集群类型：
        /// <li> 1 = 容器服务集群(TKE) </li>
        public let kubeType: Int64
        
        public init (instanceId: String, kubeClusterId: String, kubeType: Int64) {
            self.instanceId = instanceId
            self.kubeClusterId = kubeClusterId
            self.kubeType = kubeType
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case kubeClusterId = "KubeClusterId"
            case kubeType = "KubeType"
        }
    }
    
    /// DescribeServiceDiscovery返回参数结构体
    public struct DescribeServiceDiscoveryResponse: TCResponseModel {
        /// 返回服务发现列表信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceDiscoverySet: [ServiceDiscoveryItem]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case serviceDiscoverySet = "ServiceDiscoverySet"
            case requestId = "RequestId"
        }
    }
    
    /// 列出服务发现列表
    ///
    /// 列出在腾讯云容器服务下创建的 Prometheus 服务发现。
    /// <p>注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
    /// <a href="https://cloud.tencent.com/document/product/248/48859" target="_blank">Agent 安装</a>。</p>
    @inlinable
    public func describeServiceDiscovery(_ input: DescribeServiceDiscoveryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeServiceDiscoveryResponse > {
        self.client.execute(action: "DescribeServiceDiscovery", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 列出服务发现列表
    ///
    /// 列出在腾讯云容器服务下创建的 Prometheus 服务发现。
    /// <p>注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
    /// <a href="https://cloud.tencent.com/document/product/248/48859" target="_blank">Agent 安装</a>。</p>
    @inlinable
    public func describeServiceDiscovery(_ input: DescribeServiceDiscoveryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceDiscoveryResponse {
        try await self.client.execute(action: "DescribeServiceDiscovery", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
