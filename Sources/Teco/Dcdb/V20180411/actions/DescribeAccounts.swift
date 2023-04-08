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

extension Dcdb {
    /// DescribeAccounts请求参数结构体
    public struct DescribeAccountsRequest: TCRequestModel {
        /// 实例ID，形如：dcdbt-ow728lmc。
        public let instanceId: String

        public init(instanceId: String) {
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
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let users: [DBAccount]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case users = "Users"
            case requestId = "RequestId"
        }
    }

    /// 查询账号列表
    ///
    /// 本接口（DescribeAccounts）用于查询指定云数据库实例的账号列表。
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountsResponse> {
        self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账号列表
    ///
    /// 本接口（DescribeAccounts）用于查询指定云数据库实例的账号列表。
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountsResponse {
        try await self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账号列表
    ///
    /// 本接口（DescribeAccounts）用于查询指定云数据库实例的账号列表。
    @inlinable
    public func describeAccounts(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountsResponse> {
        self.describeAccounts(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账号列表
    ///
    /// 本接口（DescribeAccounts）用于查询指定云数据库实例的账号列表。
    @inlinable
    public func describeAccounts(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountsResponse {
        try await self.describeAccounts(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
