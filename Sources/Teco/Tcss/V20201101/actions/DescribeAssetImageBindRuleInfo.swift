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

extension Tcss {
    /// DescribeAssetImageBindRuleInfo请求参数结构体
    public struct DescribeAssetImageBindRuleInfoRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤参数,"Filters":[{"Name":"EventType","Values":[""]}]
        /// EventType取值：
        /// "FILE_ABNORMAL_READ" 访问控制
        /// "MALICE_PROCESS_START" 恶意进程启动
        public let filters: [RunTimeFilters]?

        /// 升序降序,asc desc
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetImageBindRuleInfoResponse) -> DescribeAssetImageBindRuleInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetImageBindRuleInfoRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeAssetImageBindRuleInfo返回参数结构体
    public struct DescribeAssetImageBindRuleInfoResponse: TCPaginatedResponse {
        /// 事件总数量
        public let totalCount: UInt64

        /// 镜像绑定规则列表
        public let imageBindRuleSet: [ImagesBindRuleInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case imageBindRuleSet = "ImageBindRuleSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ImagesBindRuleInfo] {
            self.imageBindRuleSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 镜像绑定规则列表
    ///
    /// 镜像绑定规则列表信息，包含运行时访问控制和异常进程公用
    @inlinable
    public func describeAssetImageBindRuleInfo(_ input: DescribeAssetImageBindRuleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageBindRuleInfoResponse> {
        self.client.execute(action: "DescribeAssetImageBindRuleInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像绑定规则列表
    ///
    /// 镜像绑定规则列表信息，包含运行时访问控制和异常进程公用
    @inlinable
    public func describeAssetImageBindRuleInfo(_ input: DescribeAssetImageBindRuleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageBindRuleInfoResponse {
        try await self.client.execute(action: "DescribeAssetImageBindRuleInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像绑定规则列表
    ///
    /// 镜像绑定规则列表信息，包含运行时访问控制和异常进程公用
    @inlinable
    public func describeAssetImageBindRuleInfo(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageBindRuleInfoResponse> {
        self.describeAssetImageBindRuleInfo(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像绑定规则列表
    ///
    /// 镜像绑定规则列表信息，包含运行时访问控制和异常进程公用
    @inlinable
    public func describeAssetImageBindRuleInfo(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageBindRuleInfoResponse {
        try await self.describeAssetImageBindRuleInfo(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像绑定规则列表
    ///
    /// 镜像绑定规则列表信息，包含运行时访问控制和异常进程公用
    @inlinable
    public func describeAssetImageBindRuleInfoPaginated(_ input: DescribeAssetImageBindRuleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ImagesBindRuleInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageBindRuleInfo, logger: logger, on: eventLoop)
    }

    /// 镜像绑定规则列表
    ///
    /// 镜像绑定规则列表信息，包含运行时访问控制和异常进程公用
    @inlinable @discardableResult
    public func describeAssetImageBindRuleInfoPaginated(_ input: DescribeAssetImageBindRuleInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetImageBindRuleInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageBindRuleInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 镜像绑定规则列表
    ///
    /// 镜像绑定规则列表信息，包含运行时访问控制和异常进程公用
    ///
    /// - Returns: `AsyncSequence`s of `ImagesBindRuleInfo` and `DescribeAssetImageBindRuleInfoResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetImageBindRuleInfoPaginator(_ input: DescribeAssetImageBindRuleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetImageBindRuleInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetImageBindRuleInfo, logger: logger, on: eventLoop)
    }
}
