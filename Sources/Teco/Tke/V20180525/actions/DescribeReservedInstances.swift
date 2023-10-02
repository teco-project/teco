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

extension Tke {
    /// DescribeReservedInstances请求参数结构体
    public struct DescribeReservedInstancesRequest: TCPaginatedRequest {
        /// 偏移量，默认0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// status
        /// 按照**【状态**】进行过滤。状态：Creating、Active、Expired、Refunded。
        /// 类型：String
        /// 必选：否
        ///
        /// resource-type
        /// 按照**【资源类型**】进行过滤。资源类型：common、amd、v100、t4、a10\*gnv4、a10\*gnv4v等，common表示通用类型。
        /// 类型：String
        /// 必选：否
        ///
        /// cpu
        /// 按照**【核数**】进行过滤。
        /// 类型：String
        /// 必选：否
        ///
        /// memory
        /// 按照**【内存**】进行过滤。
        /// 类型：String
        /// 必选：否
        ///
        /// gpu
        /// 按照**【GPU卡数**】进行过滤，取值有0.25、0.5、1、2、4等。
        /// 类型：String
        /// 必选：否
        ///
        /// cluster-id
        /// 按照**【集群ID**】进行过滤。
        /// 类型：String
        /// 必选：否
        ///
        /// node-name
        /// 按照**【节点名称**】进行过滤。
        /// 类型：String
        /// 必选：否
        ///
        /// scope
        /// 按照**【可用区**】进行过滤。比如：ap-guangzhou-2，为空字符串表示地域抵扣范围。如果只过滤可用区抵扣范围，需要同时将cluster-id、node-name设置为空字符串。
        /// 类型：String
        /// 必选：否
        ///
        /// reserved-instance-id
        /// 按照**【预留实例ID**】进行过滤。预留实例ID形如：eksri-xxxxxxxx。
        /// 类型：String
        /// 必选：否
        ///
        /// reserved-instance-name
        /// 按照**【预留实例名称**】进行过滤。
        /// 类型：String
        /// 必选：否
        ///
        /// reserved-instance-deduct
        /// 按照**【上个周期抵扣的预留券**】进行过滤。Values可不设置。
        /// 必选：否
        ///
        /// reserved-instance-not-deduct
        /// 按照**【上个周期未抵扣的预留券**】进行过滤。Values可不设置。
        /// 必选：否
        public let filters: [Filter]?

        /// 排序字段。支持CreatedAt、ActiveAt、ExpireAt。默认值CreatedAt。
        public let orderField: String?

        /// 排序方法。顺序：ASC，倒序：DESC。默认值DESC。
        public let orderDirection: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.orderField = orderField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeReservedInstancesResponse) -> DescribeReservedInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, orderField: self.orderField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeReservedInstances返回参数结构体
    public struct DescribeReservedInstancesResponse: TCPaginatedResponse {
        /// 总数。
        public let totalCount: UInt64

        /// 预留实例列表。
        public let reservedInstanceSet: [ReservedInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case reservedInstanceSet = "ReservedInstanceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ReservedInstance`` list from the paginated response.
        public func getItems() -> [ReservedInstance] {
            self.reservedInstanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询预留实例列表
    @inlinable
    public func describeReservedInstances(_ input: DescribeReservedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReservedInstancesResponse> {
        self.client.execute(action: "DescribeReservedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询预留实例列表
    @inlinable
    public func describeReservedInstances(_ input: DescribeReservedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReservedInstancesResponse {
        try await self.client.execute(action: "DescribeReservedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询预留实例列表
    @inlinable
    public func describeReservedInstances(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReservedInstancesResponse> {
        self.describeReservedInstances(.init(offset: offset, limit: limit, filters: filters, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询预留实例列表
    @inlinable
    public func describeReservedInstances(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReservedInstancesResponse {
        try await self.describeReservedInstances(.init(offset: offset, limit: limit, filters: filters, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询预留实例列表
    @inlinable
    public func describeReservedInstancesPaginated(_ input: DescribeReservedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ReservedInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeReservedInstances, logger: logger, on: eventLoop)
    }

    /// 查询预留实例列表
    @inlinable @discardableResult
    public func describeReservedInstancesPaginated(_ input: DescribeReservedInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeReservedInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeReservedInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询预留实例列表
    ///
    /// - Returns: `AsyncSequence`s of ``ReservedInstance`` and ``DescribeReservedInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeReservedInstancesPaginator(_ input: DescribeReservedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeReservedInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeReservedInstances, logger: logger, on: eventLoop)
    }
}