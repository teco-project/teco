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

extension Cwp {
    /// DescribeAssetWebServiceProcessList请求参数结构体
    public struct DescribeAssetWebServiceProcessListRequest: TCPaginatedRequest {
        /// 主机Quuid
        public let quuid: String

        /// 主机Uuid
        public let uuid: String

        /// Web服务ID
        public let id: String

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        public init(quuid: String, uuid: String, id: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.quuid = quuid
            self.uuid = uuid
            self.id = id
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case uuid = "Uuid"
            case id = "Id"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetWebServiceProcessListResponse) -> DescribeAssetWebServiceProcessListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(quuid: self.quuid, uuid: self.uuid, id: self.id, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAssetWebServiceProcessList返回参数结构体
    public struct DescribeAssetWebServiceProcessListResponse: TCPaginatedResponse {
        /// 进程列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let process: [AssetAppProcessInfo]?

        /// 总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case process = "Process"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AssetAppProcessInfo`` list from the paginated response.
        public func getItems() -> [AssetAppProcessInfo] {
            self.process ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取Web服务关联进程列表
    @inlinable
    public func describeAssetWebServiceProcessList(_ input: DescribeAssetWebServiceProcessListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetWebServiceProcessListResponse> {
        self.client.execute(action: "DescribeAssetWebServiceProcessList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Web服务关联进程列表
    @inlinable
    public func describeAssetWebServiceProcessList(_ input: DescribeAssetWebServiceProcessListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebServiceProcessListResponse {
        try await self.client.execute(action: "DescribeAssetWebServiceProcessList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Web服务关联进程列表
    @inlinable
    public func describeAssetWebServiceProcessList(quuid: String, uuid: String, id: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetWebServiceProcessListResponse> {
        self.describeAssetWebServiceProcessList(.init(quuid: quuid, uuid: uuid, id: id, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Web服务关联进程列表
    @inlinable
    public func describeAssetWebServiceProcessList(quuid: String, uuid: String, id: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebServiceProcessListResponse {
        try await self.describeAssetWebServiceProcessList(.init(quuid: quuid, uuid: uuid, id: id, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Web服务关联进程列表
    @inlinable
    public func describeAssetWebServiceProcessListPaginated(_ input: DescribeAssetWebServiceProcessListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetAppProcessInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetWebServiceProcessList, logger: logger, on: eventLoop)
    }

    /// 获取Web服务关联进程列表
    @inlinable @discardableResult
    public func describeAssetWebServiceProcessListPaginated(_ input: DescribeAssetWebServiceProcessListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetWebServiceProcessListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetWebServiceProcessList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取Web服务关联进程列表
    ///
    /// - Returns: `AsyncSequence`s of ``AssetAppProcessInfo`` and ``DescribeAssetWebServiceProcessListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetWebServiceProcessListPaginator(_ input: DescribeAssetWebServiceProcessListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetWebServiceProcessListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetWebServiceProcessList, logger: logger, on: eventLoop)
    }
}
