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

extension Cdb {
    /// DescribeAccounts请求参数结构体
    public struct DescribeAccountsRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 记录偏移量，默认值为0。
        public let offset: Int64?

        /// 单次请求返回的数量，默认值为20，最小值为1，最大值为100。
        public let limit: Int64?

        /// 匹配账号名的正则表达式，规则同 MySQL 官网。
        public let accountRegexp: String?

        public init(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, accountRegexp: String? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.accountRegexp = accountRegexp
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case accountRegexp = "AccountRegexp"
        }
    }

    /// DescribeAccounts返回参数结构体
    public struct DescribeAccountsResponse: TCResponseModel {
        /// 符合查询条件的账号数量。
        public let totalCount: Int64

        /// 符合查询条件的账号详细信息。
        public let items: [AccountInfo]

        /// 用户可设置实例最大连接数。
        public let maxUserConnections: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case maxUserConnections = "MaxUserConnections"
            case requestId = "RequestId"
        }
    }

    /// 查询云数据库的所有账号信息
    ///
    /// 本接口(DescribeAccounts)用于查询云数据库的所有账户信息。
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccountsResponse > {
        self.client.execute(action: "DescribeAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云数据库的所有账号信息
    ///
    /// 本接口(DescribeAccounts)用于查询云数据库的所有账户信息。
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountsResponse {
        try await self.client.execute(action: "DescribeAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云数据库的所有账号信息
    ///
    /// 本接口(DescribeAccounts)用于查询云数据库的所有账户信息。
    @inlinable
    public func describeAccounts(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, accountRegexp: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccountsResponse > {
        self.describeAccounts(DescribeAccountsRequest(instanceId: instanceId, offset: offset, limit: limit, accountRegexp: accountRegexp), logger: logger, on: eventLoop)
    }

    /// 查询云数据库的所有账号信息
    ///
    /// 本接口(DescribeAccounts)用于查询云数据库的所有账户信息。
    @inlinable
    public func describeAccounts(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, accountRegexp: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountsResponse {
        try await self.describeAccounts(DescribeAccountsRequest(instanceId: instanceId, offset: offset, limit: limit, accountRegexp: accountRegexp), logger: logger, on: eventLoop)
    }
}
