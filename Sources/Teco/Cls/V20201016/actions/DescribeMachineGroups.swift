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

extension Cls {
    /// DescribeMachineGroups请求参数结构体
    public struct DescribeMachineGroupsRequest: TCPaginatedRequest {
        /// machineGroupName
        /// - 按照【机器组名称】进行过滤。
        /// - 类型：String
        /// - 必选：否
        ///
        /// machineGroupId
        /// - 按照【机器组ID】进行过滤。
        /// - 类型：String
        /// - 必选：否
        ///
        /// osType
        /// - 按照【操作系统类型】进行过滤。
        /// - 类型：Int
        /// - 必选：否
        ///
        /// tagKey
        /// - 按照【标签键】进行过滤。
        /// - 类型：String
        /// - 必选：否
        ///
        /// tag:tagKey
        /// - 按照【标签键值对】进行过滤。tagKey使用具体的标签键进行替换。
        /// - 类型：String
        /// - 必选：否
        ///
        /// 每次请求的Filters的上限为10，Filter.Values的上限为5。
        public let filters: [Filter]?

        /// 分页的偏移量，默认值为0
        public let offset: Int64?

        /// 分页单页的限制数目，默认值为20，最大值100
        public let limit: Int64?

        public init(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMachineGroupsResponse) -> DescribeMachineGroupsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeMachineGroups返回参数结构体
    public struct DescribeMachineGroupsResponse: TCPaginatedResponse {
        /// 机器组信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let machineGroups: [MachineGroupInfo]?

        /// 分页的总数目
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case machineGroups = "MachineGroups"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``MachineGroupInfo`` list from the paginated response.
        public func getItems() -> [MachineGroupInfo] {
            self.machineGroups ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取机器组列表
    ///
    /// 获取机器组信息列表
    @inlinable
    public func describeMachineGroups(_ input: DescribeMachineGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineGroupsResponse> {
        self.client.execute(action: "DescribeMachineGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取机器组列表
    ///
    /// 获取机器组信息列表
    @inlinable
    public func describeMachineGroups(_ input: DescribeMachineGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineGroupsResponse {
        try await self.client.execute(action: "DescribeMachineGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取机器组列表
    ///
    /// 获取机器组信息列表
    @inlinable
    public func describeMachineGroups(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineGroupsResponse> {
        self.describeMachineGroups(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取机器组列表
    ///
    /// 获取机器组信息列表
    @inlinable
    public func describeMachineGroups(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineGroupsResponse {
        try await self.describeMachineGroups(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取机器组列表
    ///
    /// 获取机器组信息列表
    @inlinable
    public func describeMachineGroupsPaginated(_ input: DescribeMachineGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MachineGroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeMachineGroups, logger: logger, on: eventLoop)
    }

    /// 获取机器组列表
    ///
    /// 获取机器组信息列表
    @inlinable @discardableResult
    public func describeMachineGroupsPaginated(_ input: DescribeMachineGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMachineGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMachineGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取机器组列表
    ///
    /// 获取机器组信息列表
    ///
    /// - Returns: `AsyncSequence`s of ``MachineGroupInfo`` and ``DescribeMachineGroupsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMachineGroupsPaginator(_ input: DescribeMachineGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMachineGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMachineGroups, logger: logger, on: eventLoop)
    }
}
