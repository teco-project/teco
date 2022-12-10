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

extension Sqlserver {
    /// 查询实例安全组信息
    ///
    /// 本接口(DescribeDBSecurityGroups)用于查询实例的安全组详情。
    @inlinable
    public func describeDBSecurityGroups(_ input: DescribeDBSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBSecurityGroupsResponse > {
        self.client.execute(action: "DescribeDBSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例安全组信息
    ///
    /// 本接口(DescribeDBSecurityGroups)用于查询实例的安全组详情。
    @inlinable
    public func describeDBSecurityGroups(_ input: DescribeDBSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSecurityGroupsResponse {
        try await self.client.execute(action: "DescribeDBSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDBSecurityGroups请求参数结构体
    public struct DescribeDBSecurityGroupsRequest: TCRequestModel {
        /// 实例ID，格式如：mssql-c1nl9rpv或者mssqlro-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeDBSecurityGroups返回参数结构体
    public struct DescribeDBSecurityGroupsResponse: TCResponseModel {
        /// 安全组详情。
        public let securityGroupSet: [SecurityGroup]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case securityGroupSet = "SecurityGroupSet"
            case requestId = "RequestId"
        }
    }
}
