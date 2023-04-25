//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Essbasic {
    /// DescribeUsers请求参数结构体
    public struct DescribeUsersRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// UserId列表，最多支持100个UserId
        public let userIds: [String]

        public init(caller: Caller, userIds: [String]) {
            self.caller = caller
            self.userIds = userIds
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case userIds = "UserIds"
        }
    }

    /// DescribeUsers返回参数结构体
    public struct DescribeUsersResponse: TCResponseModel {
        /// 用户信息查询结果
        public let users: [UserDescribe]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case users = "Users"
            case requestId = "RequestId"
        }
    }

    /// 查询个人用户信息
    ///
    /// 此接口（DescribeUsers）用于查询应用号下的个人用户信息。
    ///
    /// 注：此接口仅可查询您所属机构应用号创建的个人用户信息，不可跨应用/跨机构查询。
    @inlinable
    public func describeUsers(_ input: DescribeUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsersResponse> {
        self.client.execute(action: "DescribeUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询个人用户信息
    ///
    /// 此接口（DescribeUsers）用于查询应用号下的个人用户信息。
    ///
    /// 注：此接口仅可查询您所属机构应用号创建的个人用户信息，不可跨应用/跨机构查询。
    @inlinable
    public func describeUsers(_ input: DescribeUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersResponse {
        try await self.client.execute(action: "DescribeUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询个人用户信息
    ///
    /// 此接口（DescribeUsers）用于查询应用号下的个人用户信息。
    ///
    /// 注：此接口仅可查询您所属机构应用号创建的个人用户信息，不可跨应用/跨机构查询。
    @inlinable
    public func describeUsers(caller: Caller, userIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsersResponse> {
        self.describeUsers(.init(caller: caller, userIds: userIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询个人用户信息
    ///
    /// 此接口（DescribeUsers）用于查询应用号下的个人用户信息。
    ///
    /// 注：此接口仅可查询您所属机构应用号创建的个人用户信息，不可跨应用/跨机构查询。
    @inlinable
    public func describeUsers(caller: Caller, userIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersResponse {
        try await self.describeUsers(.init(caller: caller, userIds: userIds), region: region, logger: logger, on: eventLoop)
    }
}
