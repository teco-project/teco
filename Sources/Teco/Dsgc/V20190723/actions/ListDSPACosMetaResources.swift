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

extension Dsgc {
    /// ListDSPACosMetaResources请求参数结构体
    public struct ListDSPACosMetaResourcesRequest: TCPaginatedRequest {
        /// 实例Id
        public let dspaId: String

        /// 过滤数组。支持的Name：
        /// Bucket - 桶名，支持模糊匹配
        ///
        /// ResoureRegion - 资源所处地域，需要填写完整地域名称，不支持模糊匹配。
        ///
        /// Valid -- 资源是否有效，"1" 表示有效，"0"表示无效。
        public let filters: [DspaDataSourceMngFilter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为100。
        public let limit: UInt64?

        /// 资源绑定状态过滤，默认为全部
        public let bindType: String?

        public init(dspaId: String, filters: [DspaDataSourceMngFilter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, bindType: String? = nil) {
            self.dspaId = dspaId
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.bindType = bindType
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case bindType = "BindType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListDSPACosMetaResourcesResponse) -> ListDSPACosMetaResourcesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(dspaId: self.dspaId, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, bindType: self.bindType)
        }
    }

    /// ListDSPACosMetaResources返回参数结构体
    public struct ListDSPACosMetaResourcesResponse: TCPaginatedResponse {
        /// 符合条件的COS元数据数量。
        public let totalCount: Int64

        /// COS元数据信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [DSPACosMetaDataInfo]?

        /// DSPA实例ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dspaId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case dspaId = "DspaId"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DSPACosMetaDataInfo`` list from the paginated response.
        public func getItems() -> [DSPACosMetaDataInfo] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 拉取用户COS元数据信息
    ///
    /// 本接口用于获取COS元数据信息，返回COS元数据信息列表。
    @inlinable
    public func listDSPACosMetaResources(_ input: ListDSPACosMetaResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDSPACosMetaResourcesResponse> {
        self.client.execute(action: "ListDSPACosMetaResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取用户COS元数据信息
    ///
    /// 本接口用于获取COS元数据信息，返回COS元数据信息列表。
    @inlinable
    public func listDSPACosMetaResources(_ input: ListDSPACosMetaResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDSPACosMetaResourcesResponse {
        try await self.client.execute(action: "ListDSPACosMetaResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取用户COS元数据信息
    ///
    /// 本接口用于获取COS元数据信息，返回COS元数据信息列表。
    @inlinable
    public func listDSPACosMetaResources(dspaId: String, filters: [DspaDataSourceMngFilter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, bindType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDSPACosMetaResourcesResponse> {
        self.listDSPACosMetaResources(.init(dspaId: dspaId, filters: filters, offset: offset, limit: limit, bindType: bindType), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取用户COS元数据信息
    ///
    /// 本接口用于获取COS元数据信息，返回COS元数据信息列表。
    @inlinable
    public func listDSPACosMetaResources(dspaId: String, filters: [DspaDataSourceMngFilter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, bindType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDSPACosMetaResourcesResponse {
        try await self.listDSPACosMetaResources(.init(dspaId: dspaId, filters: filters, offset: offset, limit: limit, bindType: bindType), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取用户COS元数据信息
    ///
    /// 本接口用于获取COS元数据信息，返回COS元数据信息列表。
    @inlinable
    public func listDSPACosMetaResourcesPaginated(_ input: ListDSPACosMetaResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DSPACosMetaDataInfo])> {
        self.client.paginate(input: input, region: region, command: self.listDSPACosMetaResources, logger: logger, on: eventLoop)
    }

    /// 拉取用户COS元数据信息
    ///
    /// 本接口用于获取COS元数据信息，返回COS元数据信息列表。
    @inlinable @discardableResult
    public func listDSPACosMetaResourcesPaginated(_ input: ListDSPACosMetaResourcesRequest, region: TCRegion? = nil, onResponse: @escaping (ListDSPACosMetaResourcesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listDSPACosMetaResources, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取用户COS元数据信息
    ///
    /// 本接口用于获取COS元数据信息，返回COS元数据信息列表。
    ///
    /// - Returns: `AsyncSequence`s of ``DSPACosMetaDataInfo`` and ``ListDSPACosMetaResourcesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func listDSPACosMetaResourcesPaginator(_ input: ListDSPACosMetaResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListDSPACosMetaResourcesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listDSPACosMetaResources, logger: logger, on: eventLoop)
    }
}
