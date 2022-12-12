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

extension Tke {
    /// DescribeTKEEdgeClusterCredential请求参数结构体
    public struct DescribeTKEEdgeClusterCredentialRequest: TCRequestModel {
        /// 集群Id
        public let clusterId: String
        
        public init (clusterId: String) {
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }
    
    /// DescribeTKEEdgeClusterCredential返回参数结构体
    public struct DescribeTKEEdgeClusterCredentialResponse: TCResponseModel {
        /// 集群的接入地址信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let addresses: [IPAddress]?
        
        /// 集群的认证信息
        public let credential: ClusterCredential
        
        /// 集群的公网访问信息
        public let publicLB: EdgeClusterPublicLB
        
        /// 集群的内网访问信息
        public let internalLB: EdgeClusterInternalLB
        
        /// 集群的CoreDns部署信息
        public let coreDns: String
        
        /// 集群的健康检查多地域部署信息
        public let healthRegion: String
        
        /// 集群的健康检查部署信息
        public let health: String
        
        /// 是否部署GridDaemon以支持headless service
        public let gridDaemon: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case addresses = "Addresses"
            case credential = "Credential"
            case publicLB = "PublicLB"
            case internalLB = "InternalLB"
            case coreDns = "CoreDns"
            case healthRegion = "HealthRegion"
            case health = "Health"
            case gridDaemon = "GridDaemon"
            case requestId = "RequestId"
        }
    }
    
    /// 获取边缘计算集群的认证信息
    @inlinable
    public func describeTKEEdgeClusterCredential(_ input: DescribeTKEEdgeClusterCredentialRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTKEEdgeClusterCredentialResponse > {
        self.client.execute(action: "DescribeTKEEdgeClusterCredential", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取边缘计算集群的认证信息
    @inlinable
    public func describeTKEEdgeClusterCredential(_ input: DescribeTKEEdgeClusterCredentialRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTKEEdgeClusterCredentialResponse {
        try await self.client.execute(action: "DescribeTKEEdgeClusterCredential", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
