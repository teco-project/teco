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

extension Redis {
    /// 绑定安全组
    ///
    /// 本接口 (AssociateSecurityGroups) 用于安全组批量绑定多个指定实例。
    @inlinable
    public func associateSecurityGroups(_ input: AssociateSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AssociateSecurityGroupsResponse > {
        self.client.execute(action: "AssociateSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 绑定安全组
    ///
    /// 本接口 (AssociateSecurityGroups) 用于安全组批量绑定多个指定实例。
    @inlinable
    public func associateSecurityGroups(_ input: AssociateSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateSecurityGroupsResponse {
        try await self.client.execute(action: "AssociateSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AssociateSecurityGroups请求参数结构体
    public struct AssociateSecurityGroupsRequest: TCRequestModel {
        /// 数据库引擎名称，本接口取值：redis。
        public let product: String
        
        /// 要绑定的安全组ID，类似sg-efil73jd。
        public let securityGroupId: String
        
        /// 被绑定的实例ID，类似ins-lesecurk，支持指定多个实例。
        public let instanceIds: [String]
        
        public init (product: String, securityGroupId: String, instanceIds: [String]) {
            self.product = product
            self.securityGroupId = securityGroupId
            self.instanceIds = instanceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case securityGroupId = "SecurityGroupId"
            case instanceIds = "InstanceIds"
        }
    }
    
    /// AssociateSecurityGroups返回参数结构体
    public struct AssociateSecurityGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}