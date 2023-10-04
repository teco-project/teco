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

extension Cloudhsm {
    /// DescribeVsms请求参数结构体
    public struct DescribeVsmsRequest: TCPaginatedRequest {
        /// 偏移
        public let offset: Int64

        /// 最大数量
        public let limit: Int64

        /// 查询关键字
        public let searchWord: String?

        /// 标签过滤条件
        public let tagFilters: [TagFilter]?

        /// 设备所属的厂商名称，根据厂商来进行筛选
        public let manufacturer: String?

        /// Hsm服务类型，可选virtualization、physical、GHSM、EHSM、SHSM、all
        public let hsmType: String?

        public init(offset: Int64, limit: Int64, searchWord: String? = nil, tagFilters: [TagFilter]? = nil, manufacturer: String? = nil, hsmType: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
            self.tagFilters = tagFilters
            self.manufacturer = manufacturer
            self.hsmType = hsmType
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
            case tagFilters = "TagFilters"
            case manufacturer = "Manufacturer"
            case hsmType = "HsmType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVsmsResponse) -> DescribeVsmsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: self.offset + .init(response.getItems().count), limit: self.limit, searchWord: self.searchWord, tagFilters: self.tagFilters, manufacturer: self.manufacturer, hsmType: self.hsmType)
        }
    }

    /// DescribeVsms返回参数结构体
    public struct DescribeVsmsResponse: TCPaginatedResponse {
        /// 获取实例的总个数
        public let totalCount: Int64

        /// 资源信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vsmList: [ResourceInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vsmList = "VsmList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ResourceInfo`` list from the paginated response.
        public func getItems() -> [ResourceInfo] {
            self.vsmList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取用户VSM列表
    @inlinable
    public func describeVsms(_ input: DescribeVsmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVsmsResponse> {
        self.client.execute(action: "DescribeVsms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户VSM列表
    @inlinable
    public func describeVsms(_ input: DescribeVsmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVsmsResponse {
        try await self.client.execute(action: "DescribeVsms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户VSM列表
    @inlinable
    public func describeVsms(offset: Int64, limit: Int64, searchWord: String? = nil, tagFilters: [TagFilter]? = nil, manufacturer: String? = nil, hsmType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVsmsResponse> {
        self.describeVsms(.init(offset: offset, limit: limit, searchWord: searchWord, tagFilters: tagFilters, manufacturer: manufacturer, hsmType: hsmType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户VSM列表
    @inlinable
    public func describeVsms(offset: Int64, limit: Int64, searchWord: String? = nil, tagFilters: [TagFilter]? = nil, manufacturer: String? = nil, hsmType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVsmsResponse {
        try await self.describeVsms(.init(offset: offset, limit: limit, searchWord: searchWord, tagFilters: tagFilters, manufacturer: manufacturer, hsmType: hsmType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户VSM列表
    @inlinable
    public func describeVsmsPaginated(_ input: DescribeVsmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ResourceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeVsms, logger: logger, on: eventLoop)
    }

    /// 获取用户VSM列表
    @inlinable @discardableResult
    public func describeVsmsPaginated(_ input: DescribeVsmsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVsmsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVsms, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取用户VSM列表
    ///
    /// - Returns: `AsyncSequence`s of ``ResourceInfo`` and ``DescribeVsmsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVsmsPaginator(_ input: DescribeVsmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVsmsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVsms, logger: logger, on: eventLoop)
    }
}
