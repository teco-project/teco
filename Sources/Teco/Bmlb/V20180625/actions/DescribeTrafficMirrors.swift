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

extension Bmlb {
    /// DescribeTrafficMirrors请求参数结构体
    public struct DescribeTrafficMirrorsRequest: TCPaginatedRequest {
        /// 流量镜像实例ID的数组，支持批量查询
        public let trafficMirrorIds: [String]?

        /// 流量镜像实例别名数组。
        public let aliases: [String]?

        /// 流量镜像实例所属的私有网络ID数组，形如：vpc-xxx。
        public let vpcIds: [String]?

        /// 分页的偏移量，也即从第几条记录开始查询
        public let offset: Int64?

        /// 单次查询返回的条目数，默认值：500。
        public let limit: Int64?

        /// 排序字段。trafficMirrorId或者createTime。
        public let orderField: String?

        /// 排序方式，取值：0:增序(默认)，1:降序
        public let order: Int64?

        /// 模糊匹配trafficMirrorId或者alias字段。
        public let searchKey: String?

        public init(trafficMirrorIds: [String]? = nil, aliases: [String]? = nil, vpcIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderField: String? = nil, order: Int64? = nil, searchKey: String? = nil) {
            self.trafficMirrorIds = trafficMirrorIds
            self.aliases = aliases
            self.vpcIds = vpcIds
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.order = order
            self.searchKey = searchKey
        }

        enum CodingKeys: String, CodingKey {
            case trafficMirrorIds = "TrafficMirrorIds"
            case aliases = "Aliases"
            case vpcIds = "VpcIds"
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case order = "Order"
            case searchKey = "SearchKey"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTrafficMirrorsResponse) -> DescribeTrafficMirrorsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTrafficMirrorsRequest(trafficMirrorIds: self.trafficMirrorIds, aliases: self.aliases, vpcIds: self.vpcIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderField: self.orderField, order: self.order, searchKey: self.searchKey)
        }
    }

    /// DescribeTrafficMirrors返回参数结构体
    public struct DescribeTrafficMirrorsResponse: TCPaginatedResponse {
        /// 流量镜像总数。
        public let totalCount: Int64

        /// 对象数组。数组元素为流量镜像信息，具体结构描述如list结构所示。
        public let trafficMirrorSet: [TrafficMirror]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case trafficMirrorSet = "TrafficMirrorSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TrafficMirror] {
            self.trafficMirrorSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取流量镜像实例的列表信息
    ///
    /// 获取流量镜像实例的列表信息。
    @inlinable
    public func describeTrafficMirrors(_ input: DescribeTrafficMirrorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrafficMirrorsResponse> {
        self.client.execute(action: "DescribeTrafficMirrors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取流量镜像实例的列表信息
    ///
    /// 获取流量镜像实例的列表信息。
    @inlinable
    public func describeTrafficMirrors(_ input: DescribeTrafficMirrorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrafficMirrorsResponse {
        try await self.client.execute(action: "DescribeTrafficMirrors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取流量镜像实例的列表信息
    ///
    /// 获取流量镜像实例的列表信息。
    @inlinable
    public func describeTrafficMirrors(trafficMirrorIds: [String]? = nil, aliases: [String]? = nil, vpcIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderField: String? = nil, order: Int64? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrafficMirrorsResponse> {
        self.describeTrafficMirrors(.init(trafficMirrorIds: trafficMirrorIds, aliases: aliases, vpcIds: vpcIds, offset: offset, limit: limit, orderField: orderField, order: order, searchKey: searchKey), region: region, logger: logger, on: eventLoop)
    }

    /// 获取流量镜像实例的列表信息
    ///
    /// 获取流量镜像实例的列表信息。
    @inlinable
    public func describeTrafficMirrors(trafficMirrorIds: [String]? = nil, aliases: [String]? = nil, vpcIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderField: String? = nil, order: Int64? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrafficMirrorsResponse {
        try await self.describeTrafficMirrors(.init(trafficMirrorIds: trafficMirrorIds, aliases: aliases, vpcIds: vpcIds, offset: offset, limit: limit, orderField: orderField, order: order, searchKey: searchKey), region: region, logger: logger, on: eventLoop)
    }

    /// 获取流量镜像实例的列表信息
    ///
    /// 获取流量镜像实例的列表信息。
    @inlinable
    public func describeTrafficMirrorsPaginated(_ input: DescribeTrafficMirrorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TrafficMirror])> {
        self.client.paginate(input: input, region: region, command: self.describeTrafficMirrors, logger: logger, on: eventLoop)
    }

    /// 获取流量镜像实例的列表信息
    ///
    /// 获取流量镜像实例的列表信息。
    @inlinable @discardableResult
    public func describeTrafficMirrorsPaginated(_ input: DescribeTrafficMirrorsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTrafficMirrorsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTrafficMirrors, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取流量镜像实例的列表信息
    ///
    /// 获取流量镜像实例的列表信息。
    ///
    /// - Returns: `AsyncSequence`s of `TrafficMirror` and `DescribeTrafficMirrorsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTrafficMirrorsPaginator(_ input: DescribeTrafficMirrorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTrafficMirrorsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTrafficMirrors, logger: logger, on: eventLoop)
    }
}
