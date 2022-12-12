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

extension Vpc {
    /// AssociateNetworkInterfaceSecurityGroups请求参数结构体
    public struct AssociateNetworkInterfaceSecurityGroupsRequest: TCRequestModel {
        /// 弹性网卡实例ID。形如：eni-pxir56ns。每次请求的实例的上限为100。
        public let networkInterfaceIds: [String]
        
        /// 安全组实例ID，例如：sg-33ocnj9n，可通过DescribeSecurityGroups获取。每次请求的实例的上限为100。
        public let securityGroupIds: [String]
        
        public init (networkInterfaceIds: [String], securityGroupIds: [String]) {
            self.networkInterfaceIds = networkInterfaceIds
            self.securityGroupIds = securityGroupIds
        }
        
        enum CodingKeys: String, CodingKey {
            case networkInterfaceIds = "NetworkInterfaceIds"
            case securityGroupIds = "SecurityGroupIds"
        }
    }
    
    /// AssociateNetworkInterfaceSecurityGroups返回参数结构体
    public struct AssociateNetworkInterfaceSecurityGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 弹性网卡绑定安全组
    ///
    /// 本接口（AssociateNetworkInterfaceSecurityGroups）用于弹性网卡绑定安全组（SecurityGroup）。
    @inlinable
    public func associateNetworkInterfaceSecurityGroups(_ input: AssociateNetworkInterfaceSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AssociateNetworkInterfaceSecurityGroupsResponse > {
        self.client.execute(action: "AssociateNetworkInterfaceSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 弹性网卡绑定安全组
    ///
    /// 本接口（AssociateNetworkInterfaceSecurityGroups）用于弹性网卡绑定安全组（SecurityGroup）。
    @inlinable
    public func associateNetworkInterfaceSecurityGroups(_ input: AssociateNetworkInterfaceSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateNetworkInterfaceSecurityGroupsResponse {
        try await self.client.execute(action: "AssociateNetworkInterfaceSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
