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

extension Bm {
    /// DescribeCustomImages请求参数结构体
    public struct DescribeCustomImagesRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64

        /// 数量限制
        public let limit: UInt64

        /// 排序字段，仅支持CreateTime
        public let orderField: String?

        /// 排序方式 0:递增(默认) 1:递减
        public let order: UInt64?

        /// 按ImageId查找指定镜像信息，ImageId字段存在时其他字段失效
        public let imageId: String?

        /// 模糊查询过滤，可以查询镜像ID或镜像名
        public let searchKey: String?

        /// 镜像状态过滤列表，有效取值为：
        /// - 1：制作中
        /// - 2：制作失败
        /// - 3：正常
        /// - 4：删除中
        public let imageStatus: [UInt64]?

        public init(offset: UInt64, limit: UInt64, orderField: String? = nil, order: UInt64? = nil, imageId: String? = nil, searchKey: String? = nil, imageStatus: [UInt64]? = nil) {
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.order = order
            self.imageId = imageId
            self.searchKey = searchKey
            self.imageStatus = imageStatus
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case order = "Order"
            case imageId = "ImageId"
            case searchKey = "SearchKey"
            case imageStatus = "ImageStatus"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCustomImagesResponse) -> DescribeCustomImagesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: self.offset + .init(response.getItems().count), limit: self.limit, orderField: self.orderField, order: self.order, imageId: self.imageId, searchKey: self.searchKey, imageStatus: self.imageStatus)
        }
    }

    /// DescribeCustomImages返回参数结构体
    public struct DescribeCustomImagesResponse: TCPaginatedResponse {
        /// 返回镜像数量
        public let totalCount: UInt64

        /// 镜像信息列表
        public let customImageSet: [CustomImage]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case customImageSet = "CustomImageSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CustomImage`` list from the paginated response.
        public func getItems() -> [CustomImage] {
            self.customImageSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查看自定义镜像列表
    @inlinable
    public func describeCustomImages(_ input: DescribeCustomImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomImagesResponse> {
        self.client.execute(action: "DescribeCustomImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看自定义镜像列表
    @inlinable
    public func describeCustomImages(_ input: DescribeCustomImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomImagesResponse {
        try await self.client.execute(action: "DescribeCustomImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看自定义镜像列表
    @inlinable
    public func describeCustomImages(offset: UInt64, limit: UInt64, orderField: String? = nil, order: UInt64? = nil, imageId: String? = nil, searchKey: String? = nil, imageStatus: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomImagesResponse> {
        self.describeCustomImages(.init(offset: offset, limit: limit, orderField: orderField, order: order, imageId: imageId, searchKey: searchKey, imageStatus: imageStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 查看自定义镜像列表
    @inlinable
    public func describeCustomImages(offset: UInt64, limit: UInt64, orderField: String? = nil, order: UInt64? = nil, imageId: String? = nil, searchKey: String? = nil, imageStatus: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomImagesResponse {
        try await self.describeCustomImages(.init(offset: offset, limit: limit, orderField: orderField, order: order, imageId: imageId, searchKey: searchKey, imageStatus: imageStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 查看自定义镜像列表
    @inlinable
    public func describeCustomImagesPaginated(_ input: DescribeCustomImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CustomImage])> {
        self.client.paginate(input: input, region: region, command: self.describeCustomImages, logger: logger, on: eventLoop)
    }

    /// 查看自定义镜像列表
    @inlinable @discardableResult
    public func describeCustomImagesPaginated(_ input: DescribeCustomImagesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCustomImagesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCustomImages, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看自定义镜像列表
    ///
    /// - Returns: `AsyncSequence`s of ``CustomImage`` and ``DescribeCustomImagesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCustomImagesPaginator(_ input: DescribeCustomImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCustomImagesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCustomImages, logger: logger, on: eventLoop)
    }
}
