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

import TecoPaginationHelpers

extension Cbs {
    /// DescribeDiskStoragePool请求参数结构体
    public struct DescribeDiskStoragePoolRequest: TCPaginatedRequest {
        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](/document/product/362/15633)中的相关小节。
        public let limit: UInt64?

        /// 指定需要查询的独享集群ID列表，该入参不能与Filters一起使用。
        public let cdcIds: [String]?

        /// 过滤条件。参数不支持同时指定`CdcIds`和`Filters`。<br><li>cdc-id - Array of String - 是否必填：否 -（过滤条件）按独享集群ID过滤。<br><li>zone - Array of String - 是否必填：否 -（过滤条件）按独享集群所在[可用区](/document/product/213/15753#ZoneInfo)过滤。<br><li>cage-id - Array of String - 是否必填：否 -（过滤条件）按独享集群所在围笼的ID过滤。<br><li>disk-type - Array of String - 是否必填：否 -（过滤条件）按照云盘介质类型过滤。(CLOUD_BASIC：表示普通云硬盘 | CLOUD_PREMIUM：表示高性能云硬盘。| CLOUD_SSD：SSD表示SSD云硬盘。)
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考API[简介](/document/product/362/15633)中的相关小节。
        public let offset: UInt64?

        public init(limit: UInt64? = nil, cdcIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil) {
            self.limit = limit
            self.cdcIds = cdcIds
            self.filters = filters
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case cdcIds = "CdcIds"
            case filters = "Filters"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDiskStoragePoolResponse) -> DescribeDiskStoragePoolRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDiskStoragePoolRequest(limit: self.limit, cdcIds: self.cdcIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeDiskStoragePool返回参数结构体
    public struct DescribeDiskStoragePoolResponse: TCPaginatedResponse {
        /// 符合条件的独享集群的数量
        public let totalCount: UInt64

        /// 独享集群的详细信息列表
        public let diskStoragePoolSet: [Cdc]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case diskStoragePoolSet = "DiskStoragePoolSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Cdc] {
            self.diskStoragePoolSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询云硬盘独享集群列表
    ///
    /// 本接口（DescribeDiskStoragePool）查询用户的云硬盘独享集群列表。
    ///
    /// * 可以根据独享集群ID(CdcId)、可用区(zone)等信息来查询和过滤云硬盘独享集群详细信息，不同的过滤条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘独享集群列表。
    @inlinable
    public func describeDiskStoragePool(_ input: DescribeDiskStoragePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiskStoragePoolResponse> {
        self.client.execute(action: "DescribeDiskStoragePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘独享集群列表
    ///
    /// 本接口（DescribeDiskStoragePool）查询用户的云硬盘独享集群列表。
    ///
    /// * 可以根据独享集群ID(CdcId)、可用区(zone)等信息来查询和过滤云硬盘独享集群详细信息，不同的过滤条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘独享集群列表。
    @inlinable
    public func describeDiskStoragePool(_ input: DescribeDiskStoragePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskStoragePoolResponse {
        try await self.client.execute(action: "DescribeDiskStoragePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云硬盘独享集群列表
    ///
    /// 本接口（DescribeDiskStoragePool）查询用户的云硬盘独享集群列表。
    ///
    /// * 可以根据独享集群ID(CdcId)、可用区(zone)等信息来查询和过滤云硬盘独享集群详细信息，不同的过滤条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘独享集群列表。
    @inlinable
    public func describeDiskStoragePool(limit: UInt64? = nil, cdcIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiskStoragePoolResponse> {
        let input = DescribeDiskStoragePoolRequest(limit: limit, cdcIds: cdcIds, filters: filters, offset: offset)
        return self.client.execute(action: "DescribeDiskStoragePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘独享集群列表
    ///
    /// 本接口（DescribeDiskStoragePool）查询用户的云硬盘独享集群列表。
    ///
    /// * 可以根据独享集群ID(CdcId)、可用区(zone)等信息来查询和过滤云硬盘独享集群详细信息，不同的过滤条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘独享集群列表。
    @inlinable
    public func describeDiskStoragePool(limit: UInt64? = nil, cdcIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskStoragePoolResponse {
        let input = DescribeDiskStoragePoolRequest(limit: limit, cdcIds: cdcIds, filters: filters, offset: offset)
        return try await self.client.execute(action: "DescribeDiskStoragePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云硬盘独享集群列表
    ///
    /// 本接口（DescribeDiskStoragePool）查询用户的云硬盘独享集群列表。
    ///
    /// * 可以根据独享集群ID(CdcId)、可用区(zone)等信息来查询和过滤云硬盘独享集群详细信息，不同的过滤条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘独享集群列表。
    @inlinable
    public func describeDiskStoragePoolPaginated(_ input: DescribeDiskStoragePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Cdc])> {
        self.client.paginate(input: input, region: region, command: self.describeDiskStoragePool, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘独享集群列表
    ///
    /// 本接口（DescribeDiskStoragePool）查询用户的云硬盘独享集群列表。
    ///
    /// * 可以根据独享集群ID(CdcId)、可用区(zone)等信息来查询和过滤云硬盘独享集群详细信息，不同的过滤条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘独享集群列表。
    @inlinable @discardableResult
    public func describeDiskStoragePoolPaginated(_ input: DescribeDiskStoragePoolRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDiskStoragePoolResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDiskStoragePool, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘独享集群列表
    ///
    /// 本接口（DescribeDiskStoragePool）查询用户的云硬盘独享集群列表。
    ///
    /// * 可以根据独享集群ID(CdcId)、可用区(zone)等信息来查询和过滤云硬盘独享集群详细信息，不同的过滤条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘独享集群列表。
    ///
    /// - Returns: `AsyncSequence`s of `Cdc` and `DescribeDiskStoragePoolResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDiskStoragePoolPaginator(_ input: DescribeDiskStoragePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDiskStoragePoolRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDiskStoragePool, logger: logger, on: eventLoop)
    }
}
