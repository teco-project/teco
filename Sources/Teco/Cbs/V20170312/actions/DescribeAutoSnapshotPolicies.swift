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

import TecoCore
import TecoPaginationHelpers

extension Cbs {
    /// DescribeAutoSnapshotPolicies请求参数结构体
    public struct DescribeAutoSnapshotPoliciesRequest: TCPaginatedRequest {
        /// 要查询的定期快照策略ID列表。参数不支持同时指定`AutoSnapshotPolicyIds`和`Filters`。
        public let autoSnapshotPolicyIds: [String]?

        /// 过滤条件。参数不支持同时指定`AutoSnapshotPolicyIds`和`Filters`。<br><li>auto-snapshot-policy-id - Array of String - 是否必填：否 -（过滤条件）按定期快照策略ID进行过滤。定期快照策略ID形如：`asp-11112222`。<br><li>auto-snapshot-policy-state - Array of String - 是否必填：否 -（过滤条件）按定期快照策略的状态进行过滤。定期快照策略ID形如：`asp-11112222`。(NORMAL：正常 | ISOLATED：已隔离。)<br><li>auto-snapshot-policy-name - Array of String - 是否必填：否 -（过滤条件）按定期快照策略名称进行过滤。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](/document/product/362/15633)中的相关小节。
        public let limit: UInt64?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考API[简介](/document/product/362/15633)中的相关小节。
        public let offset: UInt64?

        /// 输出定期快照列表的排列顺序。取值范围：<br><li>ASC：升序排列<br><li>DESC：降序排列。
        public let order: String?

        /// 定期快照列表排序的依据字段。取值范围：<br><li>CREATETIME：依据定期快照的创建时间排序<br>默认按创建时间排序。
        public let orderField: String?

        public init(autoSnapshotPolicyIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, orderField: String? = nil) {
            self.autoSnapshotPolicyIds = autoSnapshotPolicyIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.orderField = orderField
        }

        enum CodingKeys: String, CodingKey {
            case autoSnapshotPolicyIds = "AutoSnapshotPolicyIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case orderField = "OrderField"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAutoSnapshotPoliciesResponse) -> DescribeAutoSnapshotPoliciesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAutoSnapshotPoliciesRequest(autoSnapshotPolicyIds: self.autoSnapshotPolicyIds, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, orderField: self.orderField)
        }
    }

    /// DescribeAutoSnapshotPolicies返回参数结构体
    public struct DescribeAutoSnapshotPoliciesResponse: TCPaginatedResponse {
        /// 有效的定期快照策略数量。
        public let totalCount: UInt64

        /// 定期快照策略列表。
        public let autoSnapshotPolicySet: [AutoSnapshotPolicy]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case autoSnapshotPolicySet = "AutoSnapshotPolicySet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AutoSnapshotPolicy] {
            self.autoSnapshotPolicySet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询定期快照策略
    ///
    /// 本接口（DescribeAutoSnapshotPolicies）用于查询定期快照策略。
    ///
    /// * 可以根据定期快照策略ID、名称或者状态等信息来查询定期快照策略的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的定期快照策略表。
    @inlinable
    public func describeAutoSnapshotPolicies(_ input: DescribeAutoSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoSnapshotPoliciesResponse> {
        self.client.execute(action: "DescribeAutoSnapshotPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询定期快照策略
    ///
    /// 本接口（DescribeAutoSnapshotPolicies）用于查询定期快照策略。
    ///
    /// * 可以根据定期快照策略ID、名称或者状态等信息来查询定期快照策略的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的定期快照策略表。
    @inlinable
    public func describeAutoSnapshotPolicies(_ input: DescribeAutoSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoSnapshotPoliciesResponse {
        try await self.client.execute(action: "DescribeAutoSnapshotPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询定期快照策略
    ///
    /// 本接口（DescribeAutoSnapshotPolicies）用于查询定期快照策略。
    ///
    /// * 可以根据定期快照策略ID、名称或者状态等信息来查询定期快照策略的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的定期快照策略表。
    @inlinable
    public func describeAutoSnapshotPolicies(autoSnapshotPolicyIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoSnapshotPoliciesResponse> {
        self.describeAutoSnapshotPolicies(.init(autoSnapshotPolicyIds: autoSnapshotPolicyIds, filters: filters, limit: limit, offset: offset, order: order, orderField: orderField), region: region, logger: logger, on: eventLoop)
    }

    /// 查询定期快照策略
    ///
    /// 本接口（DescribeAutoSnapshotPolicies）用于查询定期快照策略。
    ///
    /// * 可以根据定期快照策略ID、名称或者状态等信息来查询定期快照策略的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的定期快照策略表。
    @inlinable
    public func describeAutoSnapshotPolicies(autoSnapshotPolicyIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoSnapshotPoliciesResponse {
        try await self.describeAutoSnapshotPolicies(.init(autoSnapshotPolicyIds: autoSnapshotPolicyIds, filters: filters, limit: limit, offset: offset, order: order, orderField: orderField), region: region, logger: logger, on: eventLoop)
    }

    /// 查询定期快照策略
    ///
    /// 本接口（DescribeAutoSnapshotPolicies）用于查询定期快照策略。
    ///
    /// * 可以根据定期快照策略ID、名称或者状态等信息来查询定期快照策略的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的定期快照策略表。
    @inlinable
    public func describeAutoSnapshotPoliciesPaginated(_ input: DescribeAutoSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AutoSnapshotPolicy])> {
        self.client.paginate(input: input, region: region, command: self.describeAutoSnapshotPolicies, logger: logger, on: eventLoop)
    }

    /// 查询定期快照策略
    ///
    /// 本接口（DescribeAutoSnapshotPolicies）用于查询定期快照策略。
    ///
    /// * 可以根据定期快照策略ID、名称或者状态等信息来查询定期快照策略的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的定期快照策略表。
    @inlinable @discardableResult
    public func describeAutoSnapshotPoliciesPaginated(_ input: DescribeAutoSnapshotPoliciesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAutoSnapshotPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAutoSnapshotPolicies, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询定期快照策略
    ///
    /// 本接口（DescribeAutoSnapshotPolicies）用于查询定期快照策略。
    ///
    /// * 可以根据定期快照策略ID、名称或者状态等信息来查询定期快照策略的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的定期快照策略表。
    ///
    /// - Returns: `AsyncSequence`s of `AutoSnapshotPolicy` and `DescribeAutoSnapshotPoliciesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAutoSnapshotPoliciesPaginator(_ input: DescribeAutoSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAutoSnapshotPoliciesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAutoSnapshotPolicies, logger: logger, on: eventLoop)
    }
}
