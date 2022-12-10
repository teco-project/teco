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

extension Tcr {
    /// 管理实例内网访问VPC链接
    @inlinable
    public func manageInternalEndpoint(_ input: ManageInternalEndpointRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ManageInternalEndpointResponse > {
        self.client.execute(action: "ManageInternalEndpoint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 管理实例内网访问VPC链接
    @inlinable
    public func manageInternalEndpoint(_ input: ManageInternalEndpointRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ManageInternalEndpointResponse {
        try await self.client.execute(action: "ManageInternalEndpoint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ManageInternalEndpoint请求参数结构体
    public struct ManageInternalEndpointRequest: TCRequestModel {
        /// 实例Id
        public let registryId: String
        
        /// Create/Delete
        public let operation: String
        
        /// 需要接入的用户vpcid
        public let vpcId: String
        
        /// 需要接入的用户子网id
        public let subnetId: String
        
        /// 请求的地域ID，用于实例复制地域
        public let regionId: UInt64?
        
        /// 请求的地域名称，用于实例复制地域
        public let regionName: String?
        
        public init (registryId: String, operation: String, vpcId: String, subnetId: String, regionId: UInt64?, regionName: String?) {
            self.registryId = registryId
            self.operation = operation
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.regionId = regionId
            self.regionName = regionName
        }
        
        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case operation = "Operation"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case regionId = "RegionId"
            case regionName = "RegionName"
        }
    }
    
    /// ManageInternalEndpoint返回参数结构体
    public struct ManageInternalEndpointResponse: TCResponseModel {
        /// 实例Id
        public let registryId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case requestId = "RequestId"
        }
    }
}
