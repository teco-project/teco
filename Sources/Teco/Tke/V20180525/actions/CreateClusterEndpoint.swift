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
    /// CreateClusterEndpoint请求参数结构体
    public struct CreateClusterEndpointRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 集群端口所在的子网ID  (仅在开启非外网访问时需要填，必须为集群所在VPC内的子网)
        public let subnetId: String?
        
        /// 是否为外网访问（TRUE 外网访问 FALSE 内网访问，默认值： FALSE）
        public let isExtranet: Bool?
        
        /// 设置域名
        public let domain: String?
        
        /// 使用的安全组，只有外网访问需要传递（开启外网访问时必传）
        public let securityGroup: String?
        
        /// 创建lb参数，只有外网访问需要设置
        public let extensiveParameters: String?
        
        public init (clusterId: String, subnetId: String? = nil, isExtranet: Bool? = nil, domain: String? = nil, securityGroup: String? = nil, extensiveParameters: String? = nil) {
            self.clusterId = clusterId
            self.subnetId = subnetId
            self.isExtranet = isExtranet
            self.domain = domain
            self.securityGroup = securityGroup
            self.extensiveParameters = extensiveParameters
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case subnetId = "SubnetId"
            case isExtranet = "IsExtranet"
            case domain = "Domain"
            case securityGroup = "SecurityGroup"
            case extensiveParameters = "ExtensiveParameters"
        }
    }
    
    /// CreateClusterEndpoint返回参数结构体
    public struct CreateClusterEndpointResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 创建集群访问端口
    @inlinable
    public func createClusterEndpoint(_ input: CreateClusterEndpointRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateClusterEndpointResponse > {
        self.client.execute(action: "CreateClusterEndpoint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建集群访问端口
    @inlinable
    public func createClusterEndpoint(_ input: CreateClusterEndpointRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterEndpointResponse {
        try await self.client.execute(action: "CreateClusterEndpoint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
