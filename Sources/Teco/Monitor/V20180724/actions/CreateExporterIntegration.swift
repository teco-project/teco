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

extension Monitor {
    /// 创建 exporter 集成
    ///
    /// 创建 exporter 集成
    @inlinable
    public func createExporterIntegration(_ input: CreateExporterIntegrationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateExporterIntegrationResponse > {
        self.client.execute(action: "CreateExporterIntegration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建 exporter 集成
    ///
    /// 创建 exporter 集成
    @inlinable
    public func createExporterIntegration(_ input: CreateExporterIntegrationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExporterIntegrationResponse {
        try await self.client.execute(action: "CreateExporterIntegration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateExporterIntegration请求参数结构体
    public struct CreateExporterIntegrationRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String
        
        /// 类型
        public let kind: String
        
        /// 集成配置
        public let content: String
        
        /// Kubernetes 集群类型，取值如下：
        /// <li> 1= 容器集群(TKE) </li>
        /// <li> 2=弹性集群<EKS> </li>
        /// <li> 3= Prometheus管理的弹性集群<MEKS> </li>
        public let kubeType: Int64?
        
        /// 集群 ID
        public let clusterId: String?
        
        public init (instanceId: String, kind: String, content: String, kubeType: Int64?, clusterId: String?) {
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
    
    /// CreateExporterIntegration返回参数结构体
    public struct CreateExporterIntegrationResponse: TCResponseModel {
        /// 返回创建成功的集成名称列表
        public let names: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case names = "Names"
            case requestId = "RequestId"
        }
    }
}