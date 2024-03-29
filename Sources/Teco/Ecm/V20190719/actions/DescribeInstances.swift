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
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCPaginatedRequest {
        /// 过滤条件。
        /// zone      String      是否必填：否     （过滤条件）按照可用区英文标识符过滤。
        /// zone-name      String      是否必填：否     （过滤条件）按照可用区中文名过滤,支持模糊匹配。
        /// module-id      String      是否必填：否     （过滤条件）按照模块ID过滤。
        /// instance-id      String      是否必填：否      （过滤条件）按照实例ID过滤。
        /// instance-name      String      是否必填：否      （过滤条件）按照实例名称过滤,支持模糊匹配。
        /// ip-address      String      是否必填：否      （过滤条件）按照实例的内网/公网IP过滤。
        /// instance-uuid   string 是否必填：否 （过滤条件）按照uuid过滤实例列表。
        /// instance-state  string  是否必填：否 （过滤条件）按照实例状态更新实例列表。
        /// internet-service-provider      String      是否必填：否      （过滤条件）按照实例公网IP所属的运营商进行过滤。
        /// tag-key      String      是否必填：否      （过滤条件）按照标签键进行过滤。
        /// tag:tag-key      String      是否必填：否      （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。
        /// instance-family      String      是否必填：否      （过滤条件）按照机型family过滤。
        /// module-name      String      是否必填：否      （过滤条件）按照模块名称过滤,支持模糊匹配。
        /// image-id      String      是否必填：否      （过滤条件）按照实例的镜像ID过滤。
        /// vpc-id String      是否必填：否      （过滤条件）按照实例的vpc id过滤。
        /// subnet-id String      是否必填：否      （过滤条件）按照实例的subnet id过滤。
        ///
        /// 若不传Filters参数则表示查询所有相关的实例信息。
        /// 单次请求的Filter.Values的上限为5。
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 返回数量，默认为20(如果查询结果数目大于等于20)，最大值为100。
        public let limit: Int64?

        /// 指定排序字段。目前支持的可选值如下
        /// timestamp 按实例创建时间排序。
        /// 注意：目前仅支持按创建时间排序，后续可能会有扩展。
        /// 如果不传，默认按实例创建时间排序
        public let orderByField: String?

        /// 指定排序是降序还是升序。0表示降序； 1表示升序。如果不传默认为降序
        public let orderDirection: Int64?

        public init(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderByField: String? = nil, orderDirection: Int64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.orderByField = orderByField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case orderByField = "OrderByField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstancesResponse) -> DescribeInstancesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderByField: self.orderByField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCPaginatedResponse {
        /// 返回的实例相关信息列表的长度。
        public let totalCount: Int64

        /// 返回的实例相关信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceSet: [Instance]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceSet = "InstanceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Instance`` list from the paginated response.
        public func getItems() -> [Instance] {
            self.instanceSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取实例相关信息
    ///
    /// 获取实例的相关信息。
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例相关信息
    ///
    /// 获取实例的相关信息。
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例相关信息
    ///
    /// 获取实例的相关信息。
    @inlinable
    public func describeInstances(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderByField: String? = nil, orderDirection: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.describeInstances(.init(filters: filters, offset: offset, limit: limit, orderByField: orderByField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实例相关信息
    ///
    /// 获取实例的相关信息。
    @inlinable
    public func describeInstances(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderByField: String? = nil, orderDirection: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.describeInstances(.init(filters: filters, offset: offset, limit: limit, orderByField: orderByField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实例相关信息
    ///
    /// 获取实例的相关信息。
    @inlinable
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Instance])> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }

    /// 获取实例相关信息
    ///
    /// 获取实例的相关信息。
    @inlinable @discardableResult
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取实例相关信息
    ///
    /// 获取实例的相关信息。
    ///
    /// - Returns: `AsyncSequence`s of ``Instance`` and ``DescribeInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstancesPaginator(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }
}
