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

extension Dasb {
    /// DescribeDeviceAccounts请求参数结构体
    public struct DescribeDeviceAccountsRequest: TCPaginatedRequest {
        /// 主机账号ID集合，非必需，如果使用IdSet则忽略其他过滤参数
        public let idSet: [UInt64]?

        /// 主机账号名，模糊查询，不能单独出现，必须于DeviceId一起提交
        public let account: String?

        /// 主机ID，未使用IdSet时必须携带
        public let deviceId: UInt64?

        /// 分页偏移位置，默认值为0
        public let offset: UInt64?

        /// 每页条目数量，默认20
        public let limit: UInt64?

        public init(idSet: [UInt64]? = nil, account: String? = nil, deviceId: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.idSet = idSet
            self.account = account
            self.deviceId = deviceId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
            case account = "Account"
            case deviceId = "DeviceId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDeviceAccountsResponse) -> DescribeDeviceAccountsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(idSet: self.idSet, account: self.account, deviceId: self.deviceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDeviceAccounts返回参数结构体
    public struct DescribeDeviceAccountsResponse: TCPaginatedResponse {
        /// 记录总数
        public let totalCount: UInt64

        /// 账号信息列表
        public let deviceAccountSet: [DeviceAccount]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case deviceAccountSet = "DeviceAccountSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DeviceAccount`` list from the paginated response.
        public func getItems() -> [DeviceAccount] {
            self.deviceAccountSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询主机账号列表
    @inlinable
    public func describeDeviceAccounts(_ input: DescribeDeviceAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceAccountsResponse> {
        self.client.execute(action: "DescribeDeviceAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主机账号列表
    @inlinable
    public func describeDeviceAccounts(_ input: DescribeDeviceAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceAccountsResponse {
        try await self.client.execute(action: "DescribeDeviceAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主机账号列表
    @inlinable
    public func describeDeviceAccounts(idSet: [UInt64]? = nil, account: String? = nil, deviceId: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceAccountsResponse> {
        self.describeDeviceAccounts(.init(idSet: idSet, account: account, deviceId: deviceId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询主机账号列表
    @inlinable
    public func describeDeviceAccounts(idSet: [UInt64]? = nil, account: String? = nil, deviceId: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceAccountsResponse {
        try await self.describeDeviceAccounts(.init(idSet: idSet, account: account, deviceId: deviceId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询主机账号列表
    @inlinable
    public func describeDeviceAccountsPaginated(_ input: DescribeDeviceAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DeviceAccount])> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceAccounts, logger: logger, on: eventLoop)
    }

    /// 查询主机账号列表
    @inlinable @discardableResult
    public func describeDeviceAccountsPaginated(_ input: DescribeDeviceAccountsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDeviceAccountsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceAccounts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询主机账号列表
    ///
    /// - Returns: `AsyncSequence`s of ``DeviceAccount`` and ``DescribeDeviceAccountsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDeviceAccountsPaginator(_ input: DescribeDeviceAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDeviceAccountsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDeviceAccounts, logger: logger, on: eventLoop)
    }
}
