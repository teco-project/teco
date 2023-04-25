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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Ms {
    /// DescribeScanInstances请求参数结构体
    public struct DescribeScanInstancesRequest: TCPaginatedRequest {
        /// 支持通过app名称，app包名进行筛选
        public let filters: [Filter]?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 数量限制，默认为20，最大值为100。
        public let limit: UInt64?

        /// 可以提供ItemId数组来查询一个或者多个结果。注意不可以同时指定ItemIds和Filters。
        public let itemIds: [String]?

        /// 按某个字段排序，目前仅支持TaskTime排序。
        public let orderField: String?

        /// 升序（asc）还是降序（desc），默认：desc。
        public let orderDirection: String?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, itemIds: [String]? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.itemIds = itemIds
            self.orderField = orderField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case itemIds = "ItemIds"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeScanInstancesResponse) -> DescribeScanInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeScanInstancesRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, itemIds: self.itemIds, orderField: self.orderField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeScanInstances返回参数结构体
    public struct DescribeScanInstancesResponse: TCPaginatedResponse {
        /// 符合要求的app数量
        public let totalCount: UInt64

        /// 一个关于app详细信息的结构体，主要包括app的基本信息和扫描状态信息。
        public let scanSet: [AppScanSet]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case scanSet = "ScanSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AppScanSet] {
            self.scanSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询扫描列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。
    @available(*, unavailable, message: "由于该产品是线上免费使用产品，无企业版用户，升级迭代成本高及人力安排等原因，安全测评产品不再接入新用户，故下线。")
    @inlinable
    public func describeScanInstances(_ input: DescribeScanInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanInstancesResponse> {
        fatalError("DescribeScanInstances is no longer available.")
    }

    /// 查询扫描列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。
    @available(*, unavailable, message: "由于该产品是线上免费使用产品，无企业版用户，升级迭代成本高及人力安排等原因，安全测评产品不再接入新用户，故下线。")
    @inlinable
    public func describeScanInstances(_ input: DescribeScanInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanInstancesResponse {
        fatalError("DescribeScanInstances is no longer available.")
    }

    /// 查询扫描列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。
    @available(*, unavailable, message: "由于该产品是线上免费使用产品，无企业版用户，升级迭代成本高及人力安排等原因，安全测评产品不再接入新用户，故下线。")
    @inlinable
    public func describeScanInstances(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, itemIds: [String]? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanInstancesResponse> {
        fatalError("DescribeScanInstances is no longer available.")
    }

    /// 查询扫描列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。
    @available(*, unavailable, message: "由于该产品是线上免费使用产品，无企业版用户，升级迭代成本高及人力安排等原因，安全测评产品不再接入新用户，故下线。")
    @inlinable
    public func describeScanInstances(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, itemIds: [String]? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanInstancesResponse {
        fatalError("DescribeScanInstances is no longer available.")
    }

    /// 查询扫描列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。
    @available(*, unavailable, message: "由于该产品是线上免费使用产品，无企业版用户，升级迭代成本高及人力安排等原因，安全测评产品不再接入新用户，故下线。")
    @inlinable
    public func describeScanInstancesPaginated(_ input: DescribeScanInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AppScanSet])> {
        fatalError("DescribeScanInstances is no longer available.")
    }

    /// 查询扫描列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。
    @available(*, unavailable, message: "由于该产品是线上免费使用产品，无企业版用户，升级迭代成本高及人力安排等原因，安全测评产品不再接入新用户，故下线。")
    @inlinable @discardableResult
    public func describeScanInstancesPaginated(_ input: DescribeScanInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScanInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("DescribeScanInstances is no longer available.")
    }

    /// 查询扫描列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。
    ///
    /// - Returns: `AsyncSequence`s of `AppScanSet` and `DescribeScanInstancesResponse` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "由于该产品是线上免费使用产品，无企业版用户，升级迭代成本高及人力安排等原因，安全测评产品不再接入新用户，故下线。")
    @inlinable
    public func describeScanInstancesPaginator(_ input: DescribeScanInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScanInstancesRequest> {
        fatalError("DescribeScanInstances is no longer available.")
    }
}
