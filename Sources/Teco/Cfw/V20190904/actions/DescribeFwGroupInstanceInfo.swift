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

extension Cfw {
    /// DescribeFwGroupInstanceInfo请求参数结构体
    public struct DescribeFwGroupInstanceInfoRequest: TCPaginatedRequest {
        /// 每页条数
        public let limit: Int64

        /// 偏移值
        public let offset: Int64

        /// 过滤条件组合
        public let filters: [CommonFilter]?

        /// 检索的起始时间，可不传
        public let startTime: String?

        /// 检索的截止时间，可不传
        public let endTime: String?

        /// desc：降序；asc：升序。根据By字段的值进行排序，这里传参的话则By也必须有值
        public let order: String?

        /// 排序所用到的字段
        public let by: String?

        public init(limit: Int64, offset: Int64, filters: [CommonFilter]? = nil, startTime: String? = nil, endTime: String? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.startTime = startTime
            self.endTime = endTime
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeFwGroupInstanceInfoResponse) -> DescribeFwGroupInstanceInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(limit: self.limit, offset: self.offset + .init(response.getItems().count), filters: self.filters, startTime: self.startTime, endTime: self.endTime, order: self.order, by: self.by)
        }
    }

    /// DescribeFwGroupInstanceInfo返回参数结构体
    public struct DescribeFwGroupInstanceInfoResponse: TCPaginatedResponse {
        /// 防火墙(组)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcFwGroupLst: [VpcFwGroupInfo]?

        /// 防火墙(组)个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpcFwGroupLst = "VpcFwGroupLst"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``VpcFwGroupInfo`` list from the paginated response.
        public func getItems() -> [VpcFwGroupInfo] {
            self.vpcFwGroupLst ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取租户所有VPC防火墙(组)及VPC防火墙实例卡片信息
    @inlinable
    public func describeFwGroupInstanceInfo(_ input: DescribeFwGroupInstanceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFwGroupInstanceInfoResponse> {
        self.client.execute(action: "DescribeFwGroupInstanceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取租户所有VPC防火墙(组)及VPC防火墙实例卡片信息
    @inlinable
    public func describeFwGroupInstanceInfo(_ input: DescribeFwGroupInstanceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFwGroupInstanceInfoResponse {
        try await self.client.execute(action: "DescribeFwGroupInstanceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取租户所有VPC防火墙(组)及VPC防火墙实例卡片信息
    @inlinable
    public func describeFwGroupInstanceInfo(limit: Int64, offset: Int64, filters: [CommonFilter]? = nil, startTime: String? = nil, endTime: String? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFwGroupInstanceInfoResponse> {
        self.describeFwGroupInstanceInfo(.init(limit: limit, offset: offset, filters: filters, startTime: startTime, endTime: endTime, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取租户所有VPC防火墙(组)及VPC防火墙实例卡片信息
    @inlinable
    public func describeFwGroupInstanceInfo(limit: Int64, offset: Int64, filters: [CommonFilter]? = nil, startTime: String? = nil, endTime: String? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFwGroupInstanceInfoResponse {
        try await self.describeFwGroupInstanceInfo(.init(limit: limit, offset: offset, filters: filters, startTime: startTime, endTime: endTime, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取租户所有VPC防火墙(组)及VPC防火墙实例卡片信息
    @inlinable
    public func describeFwGroupInstanceInfoPaginated(_ input: DescribeFwGroupInstanceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [VpcFwGroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeFwGroupInstanceInfo, logger: logger, on: eventLoop)
    }

    /// 获取租户所有VPC防火墙(组)及VPC防火墙实例卡片信息
    @inlinable @discardableResult
    public func describeFwGroupInstanceInfoPaginated(_ input: DescribeFwGroupInstanceInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeFwGroupInstanceInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeFwGroupInstanceInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取租户所有VPC防火墙(组)及VPC防火墙实例卡片信息
    ///
    /// - Returns: `AsyncSequence`s of ``VpcFwGroupInfo`` and ``DescribeFwGroupInstanceInfoResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeFwGroupInstanceInfoPaginator(_ input: DescribeFwGroupInstanceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeFwGroupInstanceInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeFwGroupInstanceInfo, logger: logger, on: eventLoop)
    }
}