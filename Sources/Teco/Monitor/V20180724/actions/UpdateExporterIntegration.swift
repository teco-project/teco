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
    /// UpdateExporterIntegration请求参数结构体
    public struct UpdateExporterIntegrationRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String
        
        /// 类型
        public let kind: String
        
        /// 配置内容
        public let content: String
        
        /// Kubernetes 集群类型，取值如下：
        /// <li> 1= 容器集群(TKE) </li>
        /// <li> 2=弹性集群<EKS> </li>
        /// <li> 3= Prometheus管理的弹性集群<MEKS> </li>
        public let kubeType: Int64?
        
        /// 集群 ID
        public let clusterId: String?
        
        public init (instanceId: String, kind: String, content: String, kubeType: Int64? = nil, clusterId: String? = nil) {
            self.instanceId = instanceId
            self.kind = kind
            self.content = content
            self.kubeType = kubeType
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case kind = "Kind"
            case content = "Content"
            case kubeType = "KubeType"
            case clusterId = "ClusterId"
        }
    }
    
    /// UpdateExporterIntegration返回参数结构体
    public struct UpdateExporterIntegrationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 更新 exporter 集成配置
    @inlinable
    public func updateExporterIntegration(_ input: UpdateExporterIntegrationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateExporterIntegrationResponse > {
        self.client.execute(action: "UpdateExporterIntegration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新 exporter 集成配置
    @inlinable
    public func updateExporterIntegration(_ input: UpdateExporterIntegrationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateExporterIntegrationResponse {
        try await self.client.execute(action: "UpdateExporterIntegration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
