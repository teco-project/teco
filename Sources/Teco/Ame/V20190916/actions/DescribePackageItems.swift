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

extension Ame {
    /// DescribePackageItems请求参数结构体
    public struct DescribePackageItemsRequest: TCPaginatedRequest {
        /// 订单id，从获取已购曲库包列表中获取
        public let orderId: String

        /// 默认0，Offset=Offset+Length
        public let offset: UInt64?

        /// 默认20
        public let length: UInt64?

        public init(orderId: String, offset: UInt64? = nil, length: UInt64? = nil) {
            self.orderId = orderId
            self.offset = offset
            self.length = length
        }

        enum CodingKeys: String, CodingKey {
            case orderId = "OrderId"
            case offset = "Offset"
            case length = "Length"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePackageItemsResponse) -> DescribePackageItemsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePackageItemsRequest(orderId: self.orderId, offset: (self.offset ?? 0) + .init(response.getItems().count), length: self.length)
        }
    }

    /// DescribePackageItems返回参数结构体
    public struct DescribePackageItemsResponse: TCPaginatedResponse {
        /// 已核销歌曲信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packageItems: [PackageItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case packageItems = "PackageItems"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PackageItem] {
            self.packageItems ?? []
        }
    }

    /// 获取曲库包已核销歌曲列表
    ///
    /// 获取曲库包下已核销歌曲列表接口
    @inlinable
    public func describePackageItems(_ input: DescribePackageItemsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackageItemsResponse> {
        self.client.execute(action: "DescribePackageItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取曲库包已核销歌曲列表
    ///
    /// 获取曲库包下已核销歌曲列表接口
    @inlinable
    public func describePackageItems(_ input: DescribePackageItemsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackageItemsResponse {
        try await self.client.execute(action: "DescribePackageItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取曲库包已核销歌曲列表
    ///
    /// 获取曲库包下已核销歌曲列表接口
    @inlinable
    public func describePackageItems(orderId: String, offset: UInt64? = nil, length: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackageItemsResponse> {
        let input = DescribePackageItemsRequest(orderId: orderId, offset: offset, length: length)
        return self.client.execute(action: "DescribePackageItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取曲库包已核销歌曲列表
    ///
    /// 获取曲库包下已核销歌曲列表接口
    @inlinable
    public func describePackageItems(orderId: String, offset: UInt64? = nil, length: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackageItemsResponse {
        let input = DescribePackageItemsRequest(orderId: orderId, offset: offset, length: length)
        return try await self.client.execute(action: "DescribePackageItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取曲库包已核销歌曲列表
    ///
    /// 获取曲库包下已核销歌曲列表接口
    @inlinable
    public func describePackageItemsPaginated(_ input: DescribePackageItemsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [PackageItem])> {
        self.client.paginate(input: input, region: region, command: self.describePackageItems, logger: logger, on: eventLoop)
    }

    /// 获取曲库包已核销歌曲列表
    ///
    /// 获取曲库包下已核销歌曲列表接口
    @inlinable @discardableResult
    public func describePackageItemsPaginated(_ input: DescribePackageItemsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePackageItemsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePackageItems, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取曲库包已核销歌曲列表
    ///
    /// 获取曲库包下已核销歌曲列表接口
    @inlinable
    public func describePackageItemsPaginator(_ input: DescribePackageItemsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePackageItemsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePackageItems, logger: logger, on: eventLoop)
    }
}
