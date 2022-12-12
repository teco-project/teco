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

extension Mariadb {
    /// ModifyDBInstanceSecurityGroups请求参数结构体
    public struct ModifyDBInstanceSecurityGroupsRequest: TCRequestModel {
        /// 数据库引擎名称，本接口取值：mariadb。
        public let product: String
        
        /// 实例ID。
        public let instanceId: String
        
        /// 要修改的安全组 ID 列表，一个或者多个安全组 ID 组成的数组
        public let securityGroupIds: [String]
        
        public init (product: String, instanceId: String, securityGroupIds: [String]) {
            self.product = product
            self.instanceId = instanceId
            self.securityGroupIds = securityGroupIds
        }
        
        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case instanceId = "InstanceId"
            case securityGroupIds = "SecurityGroupIds"
        }
    }
    
    /// ModifyDBInstanceSecurityGroups返回参数结构体
    public struct ModifyDBInstanceSecurityGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改云数据库安全组
    ///
    /// 本接口（ModifyDBInstanceSecurityGroups）用于修改云数据库安全组
    @inlinable
    public func modifyDBInstanceSecurityGroups(_ input: ModifyDBInstanceSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDBInstanceSecurityGroupsResponse > {
        self.client.execute(action: "ModifyDBInstanceSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改云数据库安全组
    ///
    /// 本接口（ModifyDBInstanceSecurityGroups）用于修改云数据库安全组
    @inlinable
    public func modifyDBInstanceSecurityGroups(_ input: ModifyDBInstanceSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceSecurityGroupsResponse {
        try await self.client.execute(action: "ModifyDBInstanceSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
