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

extension Lighthouse {
    /// DescribeInstancesReturnable请求参数结构体
    public struct DescribeInstancesReturnableRequest: TCPaginatedRequest {
        /// 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        public let instanceIds: [String]?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        public init(instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceIds = instanceIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstancesReturnableResponse) -> DescribeInstancesReturnableRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceIds: self.instanceIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeInstancesReturnable返回参数结构体
    public struct DescribeInstancesReturnableResponse: TCPaginatedResponse {
        /// 符合条件的实例数量。
        public let totalCount: Int64

        /// 可退还实例详细信息列表。
        public let instanceReturnableSet: [InstanceReturnable]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceReturnableSet = "InstanceReturnableSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``InstanceReturnable`` list from the paginated response.
        public func getItems() -> [InstanceReturnable] {
            self.instanceReturnableSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例是否可退还
    ///
    /// 本接口（DescribeInstancesReturnable）用于查询实例是否可退还。
    @inlinable
    public func describeInstancesReturnable(_ input: DescribeInstancesReturnableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesReturnableResponse> {
        self.client.execute(action: "DescribeInstancesReturnable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例是否可退还
    ///
    /// 本接口（DescribeInstancesReturnable）用于查询实例是否可退还。
    @inlinable
    public func describeInstancesReturnable(_ input: DescribeInstancesReturnableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesReturnableResponse {
        try await self.client.execute(action: "DescribeInstancesReturnable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例是否可退还
    ///
    /// 本接口（DescribeInstancesReturnable）用于查询实例是否可退还。
    @inlinable
    public func describeInstancesReturnable(instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesReturnableResponse> {
        self.describeInstancesReturnable(.init(instanceIds: instanceIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例是否可退还
    ///
    /// 本接口（DescribeInstancesReturnable）用于查询实例是否可退还。
    @inlinable
    public func describeInstancesReturnable(instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesReturnableResponse {
        try await self.describeInstancesReturnable(.init(instanceIds: instanceIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例是否可退还
    ///
    /// 本接口（DescribeInstancesReturnable）用于查询实例是否可退还。
    @inlinable
    public func describeInstancesReturnablePaginated(_ input: DescribeInstancesReturnableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceReturnable])> {
        self.client.paginate(input: input, region: region, command: self.describeInstancesReturnable, logger: logger, on: eventLoop)
    }

    /// 查询实例是否可退还
    ///
    /// 本接口（DescribeInstancesReturnable）用于查询实例是否可退还。
    @inlinable @discardableResult
    public func describeInstancesReturnablePaginated(_ input: DescribeInstancesReturnableRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesReturnableResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstancesReturnable, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例是否可退还
    ///
    /// 本接口（DescribeInstancesReturnable）用于查询实例是否可退还。
    ///
    /// - Returns: `AsyncSequence`s of ``InstanceReturnable`` and ``DescribeInstancesReturnableResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstancesReturnablePaginator(_ input: DescribeInstancesReturnableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesReturnableRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstancesReturnable, logger: logger, on: eventLoop)
    }
}
