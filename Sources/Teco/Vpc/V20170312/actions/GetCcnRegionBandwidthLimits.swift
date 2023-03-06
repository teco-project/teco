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

extension Vpc {
    /// GetCcnRegionBandwidthLimits请求参数结构体
    public struct GetCcnRegionBandwidthLimitsRequest: TCPaginatedRequest {
        /// CCN实例ID。形如：ccn-f49l6u0z。
        public let ccnId: String

        /// 过滤条件。
        /// <li>sregion - String - （过滤条件）源地域，形如：ap-guangzhou。</li>
        /// <li>dregion - String - （过滤条件）目的地域，形如：ap-shanghai-bm</li>
        public let filters: [Filter]?

        /// 排序条件，目前支持带宽（BandwidthLimit）和过期时间（ExpireTime）
        public let sortedBy: String?

        /// 偏移量
        public let offset: UInt64?

        /// 返回数量
        public let limit: UInt64?

        /// 排序方式，'ASC':升序,'DESC':降序。
        public let orderBy: String?

        public init(ccnId: String, filters: [Filter]? = nil, sortedBy: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderBy: String? = nil) {
            self.ccnId = ccnId
            self.filters = filters
            self.sortedBy = sortedBy
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
        }

        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
            case filters = "Filters"
            case sortedBy = "SortedBy"
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: GetCcnRegionBandwidthLimitsResponse) -> GetCcnRegionBandwidthLimitsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetCcnRegionBandwidthLimitsRequest(ccnId: self.ccnId, filters: self.filters, sortedBy: self.sortedBy, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderBy: self.orderBy)
        }
    }

    /// GetCcnRegionBandwidthLimits返回参数结构体
    public struct GetCcnRegionBandwidthLimitsResponse: TCPaginatedResponse {
        /// 云联网（CCN）各地域出带宽带宽详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ccnBandwidthSet: [CcnBandwidthInfo]?

        /// 符合条件的对象数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ccnBandwidthSet = "CcnBandwidthSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CcnBandwidthInfo] {
            self.ccnBandwidthSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询云联网相关地域带宽信息
    ///
    /// 本接口（GetCcnRegionBandwidthLimits）用于查询云联网相关地域带宽信息，其中预付费模式的云联网仅支持地域间限速，后付费模式的云联网支持地域间限速和地域出口限速。
    @inlinable
    public func getCcnRegionBandwidthLimits(_ input: GetCcnRegionBandwidthLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCcnRegionBandwidthLimitsResponse> {
        self.client.execute(action: "GetCcnRegionBandwidthLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云联网相关地域带宽信息
    ///
    /// 本接口（GetCcnRegionBandwidthLimits）用于查询云联网相关地域带宽信息，其中预付费模式的云联网仅支持地域间限速，后付费模式的云联网支持地域间限速和地域出口限速。
    @inlinable
    public func getCcnRegionBandwidthLimits(_ input: GetCcnRegionBandwidthLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCcnRegionBandwidthLimitsResponse {
        try await self.client.execute(action: "GetCcnRegionBandwidthLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云联网相关地域带宽信息
    ///
    /// 本接口（GetCcnRegionBandwidthLimits）用于查询云联网相关地域带宽信息，其中预付费模式的云联网仅支持地域间限速，后付费模式的云联网支持地域间限速和地域出口限速。
    @inlinable
    public func getCcnRegionBandwidthLimits(ccnId: String, filters: [Filter]? = nil, sortedBy: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCcnRegionBandwidthLimitsResponse> {
        let input = GetCcnRegionBandwidthLimitsRequest(ccnId: ccnId, filters: filters, sortedBy: sortedBy, offset: offset, limit: limit, orderBy: orderBy)
        return self.client.execute(action: "GetCcnRegionBandwidthLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云联网相关地域带宽信息
    ///
    /// 本接口（GetCcnRegionBandwidthLimits）用于查询云联网相关地域带宽信息，其中预付费模式的云联网仅支持地域间限速，后付费模式的云联网支持地域间限速和地域出口限速。
    @inlinable
    public func getCcnRegionBandwidthLimits(ccnId: String, filters: [Filter]? = nil, sortedBy: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCcnRegionBandwidthLimitsResponse {
        let input = GetCcnRegionBandwidthLimitsRequest(ccnId: ccnId, filters: filters, sortedBy: sortedBy, offset: offset, limit: limit, orderBy: orderBy)
        return try await self.client.execute(action: "GetCcnRegionBandwidthLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云联网相关地域带宽信息
    ///
    /// 本接口（GetCcnRegionBandwidthLimits）用于查询云联网相关地域带宽信息，其中预付费模式的云联网仅支持地域间限速，后付费模式的云联网支持地域间限速和地域出口限速。
    @inlinable
    public func getCcnRegionBandwidthLimitsPaginated(_ input: GetCcnRegionBandwidthLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CcnBandwidthInfo])> {
        self.client.paginate(input: input, region: region, command: self.getCcnRegionBandwidthLimits, logger: logger, on: eventLoop)
    }

    /// 查询云联网相关地域带宽信息
    ///
    /// 本接口（GetCcnRegionBandwidthLimits）用于查询云联网相关地域带宽信息，其中预付费模式的云联网仅支持地域间限速，后付费模式的云联网支持地域间限速和地域出口限速。
    @inlinable
    public func getCcnRegionBandwidthLimitsPaginated(_ input: GetCcnRegionBandwidthLimitsRequest, region: TCRegion? = nil, onResponse: @escaping (GetCcnRegionBandwidthLimitsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getCcnRegionBandwidthLimits, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询云联网相关地域带宽信息
    ///
    /// 本接口（GetCcnRegionBandwidthLimits）用于查询云联网相关地域带宽信息，其中预付费模式的云联网仅支持地域间限速，后付费模式的云联网支持地域间限速和地域出口限速。
    @inlinable
    public func getCcnRegionBandwidthLimitsPaginator(_ input: GetCcnRegionBandwidthLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<GetCcnRegionBandwidthLimitsRequest, GetCcnRegionBandwidthLimitsResponse>.ResultSequence, responses: TCClient.Paginator<GetCcnRegionBandwidthLimitsRequest, GetCcnRegionBandwidthLimitsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<GetCcnRegionBandwidthLimitsRequest, GetCcnRegionBandwidthLimitsResponse>.ResultSequence(input: input, region: region, command: self.getCcnRegionBandwidthLimits, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<GetCcnRegionBandwidthLimitsRequest, GetCcnRegionBandwidthLimitsResponse>.ResponseSequence(input: input, region: region, command: self.getCcnRegionBandwidthLimits, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
