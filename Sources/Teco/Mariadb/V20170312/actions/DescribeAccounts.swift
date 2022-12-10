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

extension Mariadb {
    /// 查询账号列表
    ///
    /// 本接口（DescribeAccounts）用于查询指定云数据库实例的账号列表。
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccountsResponse > {
        self.client.execute(action: "DescribeAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询账号列表
    ///
    /// 本接口（DescribeAccounts）用于查询指定云数据库实例的账号列表。
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountsResponse {
        try await self.client.execute(action: "DescribeAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAccounts请求参数结构体
    public struct DescribeAccountsRequest: TCRequestModel {
        /// 实例ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeAccounts返回参数结构体
    public struct DescribeAccountsResponse: TCResponseModel {
        /// 实例ID，透传入参。
        public let instanceId: String
        
        /// 实例用户列表。
        public let users: [DBAccount]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case users = "Users"
            case requestId = "RequestId"
        }
    }
}