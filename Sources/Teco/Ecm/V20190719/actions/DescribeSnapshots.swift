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

extension Ecm {
    /// DescribeSnapshots请求参数结构体
    public struct DescribeSnapshotsRequest: TCPaginatedRequest {
        /// 要查询快照的ID列表。参数不支持同时指定`SnapshotIds`和`Filters`。
        public let snapshotIds: [String]?

        /// 过滤条件。参数不支持同时指定`SnapshotIds`和`Filters`。
        ///
        /// - snapshot-id - Array of String - 是否必填：否 -（过滤条件）按照快照的ID过滤。快照ID形如：`snap-11112222`。
        /// - snapshot-name - Array of String - 是否必填：否 -（过滤条件）按照快照名称过滤。
        /// - snapshot-state - Array of String - 是否必填：否 -（过滤条件）按照快照状态过滤。 (NORMAL：正常 | CREATING：创建中 | ROLLBACKING：回滚中。)
        /// - disk-usage - Array of String - 是否必填：否 -（过滤条件）按创建快照的云盘类型过滤。 (SYSTEM_DISK：代表系统盘 | DATA_DISK：代表数据盘。)
        /// - project-id  - Array of String - 是否必填：否 -（过滤条件）按云硬盘所属项目ID过滤。
        /// - disk-id  - Array of String - 是否必填：否 -（过滤条件）按照创建快照的云硬盘ID过滤。
        /// - zone - Array of String - 是否必填：否 -（过滤条件）按照[可用区](/document/product/213/15753#ZoneInfo)过滤。
        /// - encrypt - Array of String - 是否必填：否 -（过滤条件）按是否加密盘快照过滤。 (TRUE：表示加密盘快照 | FALSE：表示非加密盘快照。)
        /// - snapshot-type- Array of String - 是否必填：否 -（过滤条件）根据snapshot-type指定的快照类型查询对应的快照。
        ///
        /// (SHARED_SNAPSHOT：表示共享过来的快照 | PRIVATE_SNAPSHOT：表示自己私有快照。)
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](/document/product/362/15633)中的相关小节。
        public let limit: UInt64?

        /// 快照列表排序的依据字段。取值范围：
        ///
        /// - CREATE_TIME：依据快照的创建时间排序
        ///
        /// 默认按创建时间排序。
        public let orderField: String?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考API[简介](/document/product/362/15633)中的相关小节。
        public let offset: UInt64?

        /// 输出云盘列表的排列顺序。取值范围：
        ///
        /// - ASC：升序排列
        /// - DESC：降序排列。
        public let order: String?

        public init(snapshotIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, orderField: String? = nil, offset: UInt64? = nil, order: String? = nil) {
            self.snapshotIds = snapshotIds
            self.filters = filters
            self.limit = limit
            self.orderField = orderField
            self.offset = offset
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case snapshotIds = "SnapshotIds"
            case filters = "Filters"
            case limit = "Limit"
            case orderField = "OrderField"
            case offset = "Offset"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSnapshotsResponse) -> DescribeSnapshotsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(snapshotIds: self.snapshotIds, filters: self.filters, limit: self.limit, orderField: self.orderField, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order)
        }
    }

    /// DescribeSnapshots返回参数结构体
    public struct DescribeSnapshotsResponse: TCPaginatedResponse {
        /// 快照的数量。
        public let totalCount: UInt64

        /// 快照的详情列表。
        public let snapshotSet: [Snapshot]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case snapshotSet = "SnapshotSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Snapshot`` list from the paginated response.
        public func getItems() -> [Snapshot] {
            self.snapshotSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    ///
    /// * 根据快照ID、创建快照的云硬盘ID、创建快照的云硬盘类型等对结果进行过滤，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// *  如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的快照列表。
    @inlinable
    public func describeSnapshots(_ input: DescribeSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotsResponse> {
        self.client.execute(action: "DescribeSnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    ///
    /// * 根据快照ID、创建快照的云硬盘ID、创建快照的云硬盘类型等对结果进行过滤，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// *  如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的快照列表。
    @inlinable
    public func describeSnapshots(_ input: DescribeSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotsResponse {
        try await self.client.execute(action: "DescribeSnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    ///
    /// * 根据快照ID、创建快照的云硬盘ID、创建快照的云硬盘类型等对结果进行过滤，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// *  如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的快照列表。
    @inlinable
    public func describeSnapshots(snapshotIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, orderField: String? = nil, offset: UInt64? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotsResponse> {
        self.describeSnapshots(.init(snapshotIds: snapshotIds, filters: filters, limit: limit, orderField: orderField, offset: offset, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    ///
    /// * 根据快照ID、创建快照的云硬盘ID、创建快照的云硬盘类型等对结果进行过滤，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// *  如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的快照列表。
    @inlinable
    public func describeSnapshots(snapshotIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, orderField: String? = nil, offset: UInt64? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotsResponse {
        try await self.describeSnapshots(.init(snapshotIds: snapshotIds, filters: filters, limit: limit, orderField: orderField, offset: offset, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    ///
    /// * 根据快照ID、创建快照的云硬盘ID、创建快照的云硬盘类型等对结果进行过滤，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// *  如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的快照列表。
    @inlinable
    public func describeSnapshotsPaginated(_ input: DescribeSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Snapshot])> {
        self.client.paginate(input: input, region: region, command: self.describeSnapshots, logger: logger, on: eventLoop)
    }

    /// 查询快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    ///
    /// * 根据快照ID、创建快照的云硬盘ID、创建快照的云硬盘类型等对结果进行过滤，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// *  如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的快照列表。
    @inlinable @discardableResult
    public func describeSnapshotsPaginated(_ input: DescribeSnapshotsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSnapshotsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSnapshots, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    ///
    /// * 根据快照ID、创建快照的云硬盘ID、创建快照的云硬盘类型等对结果进行过滤，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// *  如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的快照列表。
    ///
    /// - Returns: `AsyncSequence`s of ``Snapshot`` and ``DescribeSnapshotsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSnapshotsPaginator(_ input: DescribeSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSnapshotsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSnapshots, logger: logger, on: eventLoop)
    }
}
