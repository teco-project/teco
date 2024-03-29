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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Ape {
    /// DescribeDownloadInfos请求参数结构体
    public struct DescribeDownloadInfosRequest: TCPaginatedRequest {
        /// 默认10
        public let limit: Int64?

        /// 默认0
        public let offset: Int64?

        /// 开始时间晚于指定时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$beginTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var beginTime: Date?

        /// 结束时间早于指定时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 无效值，过滤结果为空
        public let imageIds: [Int64]?

        public init(limit: Int64? = nil, offset: Int64? = nil, beginTime: Date? = nil, endTime: Date? = nil, imageIds: [Int64]? = nil) {
            self.limit = limit
            self.offset = offset
            self._beginTime = .init(wrappedValue: beginTime)
            self._endTime = .init(wrappedValue: endTime)
            self.imageIds = imageIds
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case imageIds = "ImageIds"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDownloadInfosResponse) -> DescribeDownloadInfosRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), beginTime: self.beginTime, endTime: self.endTime, imageIds: self.imageIds)
        }
    }

    /// DescribeDownloadInfos返回参数结构体
    public struct DescribeDownloadInfosResponse: TCPaginatedResponse {
        /// 核销下载记录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadInfos: [DownloadInfo]?

        /// 总记录数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadInfos = "DownloadInfos"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DownloadInfo`` list from the paginated response.
        public func getItems() -> [DownloadInfo] {
            self.downloadInfos ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取图片下载记录
    ///
    /// 获取用户图片下载记录
    @inlinable
    public func describeDownloadInfos(_ input: DescribeDownloadInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDownloadInfosResponse> {
        self.client.execute(action: "DescribeDownloadInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取图片下载记录
    ///
    /// 获取用户图片下载记录
    @inlinable
    public func describeDownloadInfos(_ input: DescribeDownloadInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDownloadInfosResponse {
        try await self.client.execute(action: "DescribeDownloadInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取图片下载记录
    ///
    /// 获取用户图片下载记录
    @inlinable
    public func describeDownloadInfos(limit: Int64? = nil, offset: Int64? = nil, beginTime: Date? = nil, endTime: Date? = nil, imageIds: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDownloadInfosResponse> {
        self.describeDownloadInfos(.init(limit: limit, offset: offset, beginTime: beginTime, endTime: endTime, imageIds: imageIds), region: region, logger: logger, on: eventLoop)
    }

    /// 获取图片下载记录
    ///
    /// 获取用户图片下载记录
    @inlinable
    public func describeDownloadInfos(limit: Int64? = nil, offset: Int64? = nil, beginTime: Date? = nil, endTime: Date? = nil, imageIds: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDownloadInfosResponse {
        try await self.describeDownloadInfos(.init(limit: limit, offset: offset, beginTime: beginTime, endTime: endTime, imageIds: imageIds), region: region, logger: logger, on: eventLoop)
    }

    /// 获取图片下载记录
    ///
    /// 获取用户图片下载记录
    @inlinable
    public func describeDownloadInfosPaginated(_ input: DescribeDownloadInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DownloadInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDownloadInfos, logger: logger, on: eventLoop)
    }

    /// 获取图片下载记录
    ///
    /// 获取用户图片下载记录
    @inlinable @discardableResult
    public func describeDownloadInfosPaginated(_ input: DescribeDownloadInfosRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDownloadInfosResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDownloadInfos, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取图片下载记录
    ///
    /// 获取用户图片下载记录
    ///
    /// - Returns: `AsyncSequence`s of ``DownloadInfo`` and ``DescribeDownloadInfosResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDownloadInfosPaginator(_ input: DescribeDownloadInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDownloadInfosRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDownloadInfos, logger: logger, on: eventLoop)
    }
}
