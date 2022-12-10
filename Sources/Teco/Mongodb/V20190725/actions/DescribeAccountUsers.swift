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

extension Mongodb {
    /// 全部账号列表
    ///
    /// 本接口(DescribeAccountUsers)用于获取当前实例的全部账号列表。
    @inlinable
    public func describeAccountUsers(_ input: DescribeAccountUsersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccountUsersResponse > {
        self.client.execute(action: "DescribeAccountUsers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 全部账号列表
    ///
    /// 本接口(DescribeAccountUsers)用于获取当前实例的全部账号列表。
    @inlinable
    public func describeAccountUsers(_ input: DescribeAccountUsersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountUsersResponse {
        try await self.client.execute(action: "DescribeAccountUsers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAccountUsers请求参数结构体
    public struct DescribeAccountUsersRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeAccountUsers返回参数结构体
    public struct DescribeAccountUsersResponse: TCResponseModel {
        /// 实例账号列表。
        public let users: [UserInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case users = "Users"
            case requestId = "RequestId"
        }
    }
}
