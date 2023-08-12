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
import TecoPaginationHelpers

extension Ecm {
    /// DescribeDisks请求参数结构体
    public struct DescribeDisksRequest: TCPaginatedRequest {
        /// 过滤条件。参数不支持同时指定`DiskIds`和`Filters`。<br><li>disk-usage - Array of String - 是否必填：否 -（过滤条件）按云盘类型过滤。 (SYSTEM_DISK：表示系统盘 | DATA_DISK：表示数据盘)<br><li>disk-charge-type - Array of String - 是否必填：否 -（过滤条件）按照云硬盘计费模式过滤。 (PREPAID：表示预付费，即包年包月 | POSTPAID_BY_HOUR：表示后付费，即按量计费。)<br><li>portable - Array of String - 是否必填：否 -（过滤条件）按是否为弹性云盘过滤。 (TRUE：表示弹性云盘 | FALSE：表示非弹性云盘。)<br><li>project-id - Array of Integer - 是否必填：否 -（过滤条件）按云硬盘所属项目ID过滤。<br><li>disk-id - Array of String - 是否必填：否 -（过滤条件）按照云硬盘ID过滤。云盘ID形如：`disk-11112222`。<br><li>disk-name - Array of String - 是否必填：否 -（过滤条件）按照云盘名称过滤。<br><li>disk-type - Array of String - 是否必填：否 -（过滤条件）按照云盘介质类型过滤。(CLOUD_BASIC：表示普通云硬盘 | CLOUD_PREMIUM：表示高性能云硬盘。| CLOUD_SSD：表示SSD云硬盘 | CLOUD_HSSD：表示增强型SSD云硬盘。| CLOUD_TSSD：表示极速型云硬盘。)<br><li>disk-state - Array of String - 是否必填：否 -（过滤条件）按照云盘状态过滤。(UNATTACHED：未挂载 | ATTACHING：挂载中 | ATTACHED：已挂载 | DETACHING：解挂中 | EXPANDING：扩容中 | ROLLBACKING：回滚中 | TORECYCLE：待回收。)<br><li>instance-id - Array of String - 是否必填：否 -（过滤条件）按照云盘挂载的云主机实例ID过滤。可根据此参数查询挂载在指定云主机下的云硬盘。<br><li>zone - Array of String - 是否必填：否 -（过滤条件）按照[可用区](/document/product/213/15753#ZoneInfo)过滤。<br><li>instance-ip-address - Array of String - 是否必填：否 -（过滤条件）按云盘所挂载云主机的内网或外网IP过滤。<br><li>instance-name - Array of String - 是否必填：否 -（过滤条件）按云盘所挂载的实例名称过滤。<br><li>tag-key - Array of String - 是否必填：否 -（过滤条件）按照标签键进行过滤。<br><li>tag-value - Array of String - 是否必填：否 -（过滤条件）照标签值进行过滤。<br><li>tag:tag-key - Array of String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](/document/product/362/15633)中的相关小节。
        public let limit: UInt64?

        /// 云盘列表排序的依据字段。取值范围：<br><li>CREATE_TIME：依据云盘的创建时间排序<br><li>DEADLINE：依据云盘的到期时间排序<br>默认按云盘创建时间排序。
        public let orderField: String?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考API[简介](/document/product/362/15633)中的相关小节。
        public let offset: UInt64?

        /// 云盘详情中是否需要返回云盘绑定的定期快照策略ID，TRUE表示需要返回，FALSE表示不返回。
        public let returnBindAutoSnapshotPolicy: Bool?

        /// 按照一个或者多个云硬盘ID查询。云硬盘ID形如：`disk-11112222`，此参数的具体格式可参考API[简介](/document/product/362/15633)的ids.N一节）。参数不支持同时指定`DiskIds`和`Filters`。
        public let diskIds: [String]?

        /// 输出云盘列表的排列顺序。取值范围：<br><li>ASC：升序排列<br><li>DESC：降序排列。
        public let order: String?

        public init(filters: [Filter]? = nil, limit: UInt64? = nil, orderField: String? = nil, offset: UInt64? = nil, returnBindAutoSnapshotPolicy: Bool? = nil, diskIds: [String]? = nil, order: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.orderField = orderField
            self.offset = offset
            self.returnBindAutoSnapshotPolicy = returnBindAutoSnapshotPolicy
            self.diskIds = diskIds
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case orderField = "OrderField"
            case offset = "Offset"
            case returnBindAutoSnapshotPolicy = "ReturnBindAutoSnapshotPolicy"
            case diskIds = "DiskIds"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDisksResponse) -> DescribeDisksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDisksRequest(filters: self.filters, limit: self.limit, orderField: self.orderField, offset: (self.offset ?? 0) + .init(response.getItems().count), returnBindAutoSnapshotPolicy: self.returnBindAutoSnapshotPolicy, diskIds: self.diskIds, order: self.order)
        }
    }

    /// DescribeDisks返回参数结构体
    public struct DescribeDisksResponse: TCPaginatedResponse {
        /// 符合条件的云硬盘数量。
        public let totalCount: UInt64

        /// 云硬盘的详细信息列表。
        public let diskSet: [Disk]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case diskSet = "DiskSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Disk`` list from the paginated response.
        public func getItems() -> [Disk] {
            self.diskSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询云硬盘列表
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘列表。
    ///
    /// * 可以根据云硬盘ID、云硬盘类型或者云硬盘状态等信息来查询云硬盘的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘列表。
    @inlinable
    public func describeDisks(_ input: DescribeDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDisksResponse> {
        self.client.execute(action: "DescribeDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘列表
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘列表。
    ///
    /// * 可以根据云硬盘ID、云硬盘类型或者云硬盘状态等信息来查询云硬盘的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘列表。
    @inlinable
    public func describeDisks(_ input: DescribeDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDisksResponse {
        try await self.client.execute(action: "DescribeDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云硬盘列表
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘列表。
    ///
    /// * 可以根据云硬盘ID、云硬盘类型或者云硬盘状态等信息来查询云硬盘的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘列表。
    @inlinable
    public func describeDisks(filters: [Filter]? = nil, limit: UInt64? = nil, orderField: String? = nil, offset: UInt64? = nil, returnBindAutoSnapshotPolicy: Bool? = nil, diskIds: [String]? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDisksResponse> {
        self.describeDisks(.init(filters: filters, limit: limit, orderField: orderField, offset: offset, returnBindAutoSnapshotPolicy: returnBindAutoSnapshotPolicy, diskIds: diskIds, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘列表
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘列表。
    ///
    /// * 可以根据云硬盘ID、云硬盘类型或者云硬盘状态等信息来查询云硬盘的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘列表。
    @inlinable
    public func describeDisks(filters: [Filter]? = nil, limit: UInt64? = nil, orderField: String? = nil, offset: UInt64? = nil, returnBindAutoSnapshotPolicy: Bool? = nil, diskIds: [String]? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDisksResponse {
        try await self.describeDisks(.init(filters: filters, limit: limit, orderField: orderField, offset: offset, returnBindAutoSnapshotPolicy: returnBindAutoSnapshotPolicy, diskIds: diskIds, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘列表
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘列表。
    ///
    /// * 可以根据云硬盘ID、云硬盘类型或者云硬盘状态等信息来查询云硬盘的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘列表。
    @inlinable
    public func describeDisksPaginated(_ input: DescribeDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Disk])> {
        self.client.paginate(input: input, region: region, command: self.describeDisks, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘列表
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘列表。
    ///
    /// * 可以根据云硬盘ID、云硬盘类型或者云硬盘状态等信息来查询云硬盘的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘列表。
    @inlinable @discardableResult
    public func describeDisksPaginated(_ input: DescribeDisksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDisksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDisks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘列表
    ///
    /// 本接口（DescribeDisks）用于查询云硬盘列表。
    ///
    /// * 可以根据云硬盘ID、云硬盘类型或者云硬盘状态等信息来查询云硬盘的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘列表。
    ///
    /// - Returns: `AsyncSequence`s of `Disk` and `DescribeDisksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDisksPaginator(_ input: DescribeDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDisksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDisks, logger: logger, on: eventLoop)
    }
}
