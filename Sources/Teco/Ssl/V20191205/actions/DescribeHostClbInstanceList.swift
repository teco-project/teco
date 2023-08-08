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

extension Ssl {
    /// DescribeHostClbInstanceList请求参数结构体
    public struct DescribeHostClbInstanceListRequest: TCPaginatedRequest {
        /// 待部署的证书ID
        public let certificateId: String

        /// 分页偏移量，从0开始。
        public let offset: UInt64?

        /// 每页数量，默认10。
        public let limit: UInt64?

        /// 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        public let isCache: UInt64?

        /// 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        public let filters: [Filter]?

        /// 是否异步缓存
        public let asyncCache: Int64?

        /// 原证书ID
        public let oldCertificateId: String?

        public init(certificateId: String, offset: UInt64? = nil, limit: UInt64? = nil, isCache: UInt64? = nil, filters: [Filter]? = nil, asyncCache: Int64? = nil, oldCertificateId: String? = nil) {
            self.certificateId = certificateId
            self.offset = offset
            self.limit = limit
            self.isCache = isCache
            self.filters = filters
            self.asyncCache = asyncCache
            self.oldCertificateId = oldCertificateId
        }

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case offset = "Offset"
            case limit = "Limit"
            case isCache = "IsCache"
            case filters = "Filters"
            case asyncCache = "AsyncCache"
            case oldCertificateId = "OldCertificateId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeHostClbInstanceListResponse) -> DescribeHostClbInstanceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeHostClbInstanceListRequest(certificateId: self.certificateId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, isCache: self.isCache, filters: self.filters, asyncCache: self.asyncCache, oldCertificateId: self.oldCertificateId)
        }
    }

    /// DescribeHostClbInstanceList返回参数结构体
    public struct DescribeHostClbInstanceListResponse: TCPaginatedResponse {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// CLB实例监听器列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceList: [ClbInstanceDetail]?

        /// 异步刷新总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asyncTotalNum: Int64?

        /// 异步刷新当前执行数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asyncOffset: Int64?

        /// 当前缓存读取时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asyncCacheTime: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceList = "InstanceList"
            case asyncTotalNum = "AsyncTotalNum"
            case asyncOffset = "AsyncOffset"
            case asyncCacheTime = "AsyncCacheTime"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ClbInstanceDetail] {
            self.instanceList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询证书CLB云资源部署实例列表信息
    ///
    /// 查询证书clb云资源部署实例列表
    @inlinable
    public func describeHostClbInstanceList(_ input: DescribeHostClbInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostClbInstanceListResponse> {
        self.client.execute(action: "DescribeHostClbInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询证书CLB云资源部署实例列表信息
    ///
    /// 查询证书clb云资源部署实例列表
    @inlinable
    public func describeHostClbInstanceList(_ input: DescribeHostClbInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostClbInstanceListResponse {
        try await self.client.execute(action: "DescribeHostClbInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询证书CLB云资源部署实例列表信息
    ///
    /// 查询证书clb云资源部署实例列表
    @inlinable
    public func describeHostClbInstanceList(certificateId: String, offset: UInt64? = nil, limit: UInt64? = nil, isCache: UInt64? = nil, filters: [Filter]? = nil, asyncCache: Int64? = nil, oldCertificateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostClbInstanceListResponse> {
        self.describeHostClbInstanceList(.init(certificateId: certificateId, offset: offset, limit: limit, isCache: isCache, filters: filters, asyncCache: asyncCache, oldCertificateId: oldCertificateId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询证书CLB云资源部署实例列表信息
    ///
    /// 查询证书clb云资源部署实例列表
    @inlinable
    public func describeHostClbInstanceList(certificateId: String, offset: UInt64? = nil, limit: UInt64? = nil, isCache: UInt64? = nil, filters: [Filter]? = nil, asyncCache: Int64? = nil, oldCertificateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostClbInstanceListResponse {
        try await self.describeHostClbInstanceList(.init(certificateId: certificateId, offset: offset, limit: limit, isCache: isCache, filters: filters, asyncCache: asyncCache, oldCertificateId: oldCertificateId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询证书CLB云资源部署实例列表信息
    ///
    /// 查询证书clb云资源部署实例列表
    @inlinable
    public func describeHostClbInstanceListPaginated(_ input: DescribeHostClbInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ClbInstanceDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeHostClbInstanceList, logger: logger, on: eventLoop)
    }

    /// 查询证书CLB云资源部署实例列表信息
    ///
    /// 查询证书clb云资源部署实例列表
    @inlinable @discardableResult
    public func describeHostClbInstanceListPaginated(_ input: DescribeHostClbInstanceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHostClbInstanceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHostClbInstanceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询证书CLB云资源部署实例列表信息
    ///
    /// 查询证书clb云资源部署实例列表
    ///
    /// - Returns: `AsyncSequence`s of `ClbInstanceDetail` and `DescribeHostClbInstanceListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeHostClbInstanceListPaginator(_ input: DescribeHostClbInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHostClbInstanceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHostClbInstanceList, logger: logger, on: eventLoop)
    }
}
