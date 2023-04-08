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

extension Iotexplorer {
    /// DescribeFenceBindList请求参数结构体
    public struct DescribeFenceBindListRequest: TCPaginatedRequest {
        /// 围栏Id
        public let fenceId: Int64

        /// 翻页偏移量，0起始
        public let offset: Int64?

        /// 最大返回结果数
        public let limit: Int64?

        public init(fenceId: Int64, offset: Int64? = nil, limit: Int64? = nil) {
            self.fenceId = fenceId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case fenceId = "FenceId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeFenceBindListResponse) -> DescribeFenceBindListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeFenceBindListRequest(fenceId: self.fenceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeFenceBindList返回参数结构体
    public struct DescribeFenceBindListResponse: TCPaginatedResponse {
        /// 围栏绑定的产品设备列表
        public let list: [FenceBindProductItem]

        /// 围栏绑定的设备总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [FenceBindProductItem] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取围栏绑定信息列表
    @inlinable
    public func describeFenceBindList(_ input: DescribeFenceBindListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFenceBindListResponse> {
        self.client.execute(action: "DescribeFenceBindList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取围栏绑定信息列表
    @inlinable
    public func describeFenceBindList(_ input: DescribeFenceBindListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFenceBindListResponse {
        try await self.client.execute(action: "DescribeFenceBindList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取围栏绑定信息列表
    @inlinable
    public func describeFenceBindList(fenceId: Int64, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFenceBindListResponse> {
        self.describeFenceBindList(.init(fenceId: fenceId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取围栏绑定信息列表
    @inlinable
    public func describeFenceBindList(fenceId: Int64, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFenceBindListResponse {
        try await self.describeFenceBindList(.init(fenceId: fenceId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取围栏绑定信息列表
    @inlinable
    public func describeFenceBindListPaginated(_ input: DescribeFenceBindListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [FenceBindProductItem])> {
        self.client.paginate(input: input, region: region, command: self.describeFenceBindList, logger: logger, on: eventLoop)
    }

    /// 获取围栏绑定信息列表
    @inlinable @discardableResult
    public func describeFenceBindListPaginated(_ input: DescribeFenceBindListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeFenceBindListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeFenceBindList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取围栏绑定信息列表
    ///
    /// - Returns: `AsyncSequence`s of `FenceBindProductItem` and `DescribeFenceBindListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeFenceBindListPaginator(_ input: DescribeFenceBindListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeFenceBindListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeFenceBindList, logger: logger, on: eventLoop)
    }
}
