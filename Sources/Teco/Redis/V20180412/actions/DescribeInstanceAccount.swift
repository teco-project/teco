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

import Logging
import NIOCore
import TecoCore

extension Redis {
    /// DescribeInstanceAccount请求参数结构体
    public struct DescribeInstanceAccountRequest: TCPaginatedRequest {
        /// 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        public let instanceId: String

        /// 分页大小。
        public let limit: Int64

        /// 分页偏移量。取Limit整数倍。计算公式：offset=limit*(页码-1)。
        public let offset: Int64

        public init(instanceId: String, limit: Int64, offset: Int64) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstanceAccountResponse) -> DescribeInstanceAccountRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(instanceId: self.instanceId, limit: self.limit, offset: self.offset + .init(response.getItems().count))
        }
    }

    /// DescribeInstanceAccount返回参数结构体
    public struct DescribeInstanceAccountResponse: TCPaginatedResponse {
        /// 账号详细信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accounts: [Account]?

        /// 账号个数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accounts = "Accounts"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Account`` list from the paginated response.
        public func getItems() -> [Account] {
            self.accounts ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查看实例子账号信息
    ///
    /// 本接口（DescribeInstanceAccount）用于查看实例子账号信息。
    @inlinable
    public func describeInstanceAccount(_ input: DescribeInstanceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceAccountResponse> {
        self.client.execute(action: "DescribeInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看实例子账号信息
    ///
    /// 本接口（DescribeInstanceAccount）用于查看实例子账号信息。
    @inlinable
    public func describeInstanceAccount(_ input: DescribeInstanceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceAccountResponse {
        try await self.client.execute(action: "DescribeInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看实例子账号信息
    ///
    /// 本接口（DescribeInstanceAccount）用于查看实例子账号信息。
    @inlinable
    public func describeInstanceAccount(instanceId: String, limit: Int64, offset: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceAccountResponse> {
        self.describeInstanceAccount(.init(instanceId: instanceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查看实例子账号信息
    ///
    /// 本接口（DescribeInstanceAccount）用于查看实例子账号信息。
    @inlinable
    public func describeInstanceAccount(instanceId: String, limit: Int64, offset: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceAccountResponse {
        try await self.describeInstanceAccount(.init(instanceId: instanceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查看实例子账号信息
    ///
    /// 本接口（DescribeInstanceAccount）用于查看实例子账号信息。
    @inlinable
    public func describeInstanceAccountPaginated(_ input: DescribeInstanceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Account])> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceAccount, logger: logger, on: eventLoop)
    }

    /// 查看实例子账号信息
    ///
    /// 本接口（DescribeInstanceAccount）用于查看实例子账号信息。
    @inlinable @discardableResult
    public func describeInstanceAccountPaginated(_ input: DescribeInstanceAccountRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstanceAccountResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceAccount, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看实例子账号信息
    ///
    /// 本接口（DescribeInstanceAccount）用于查看实例子账号信息。
    ///
    /// - Returns: `AsyncSequence`s of ``Account`` and ``DescribeInstanceAccountResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstanceAccountPaginator(_ input: DescribeInstanceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstanceAccountRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstanceAccount, logger: logger, on: eventLoop)
    }
}
