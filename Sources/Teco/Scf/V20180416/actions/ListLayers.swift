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

extension Scf {
    /// ListLayers请求参数结构体
    public struct ListLayersRequest: TCPaginatedRequest {
        /// 适配的运行时
        public let compatibleRuntime: String?

        /// 偏移位置
        public let offset: Int64?

        /// 查询数目限制
        public let limit: Int64?

        /// 查询key，模糊匹配名称
        public let searchKey: String?

        public init(compatibleRuntime: String? = nil, offset: Int64? = nil, limit: Int64? = nil, searchKey: String? = nil) {
            self.compatibleRuntime = compatibleRuntime
            self.offset = offset
            self.limit = limit
            self.searchKey = searchKey
        }

        enum CodingKeys: String, CodingKey {
            case compatibleRuntime = "CompatibleRuntime"
            case offset = "Offset"
            case limit = "Limit"
            case searchKey = "SearchKey"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: ListLayersResponse) -> ListLayersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListLayersRequest(compatibleRuntime: self.compatibleRuntime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, searchKey: self.searchKey)
        }
    }

    /// ListLayers返回参数结构体
    public struct ListLayersResponse: TCPaginatedResponse {
        /// 层列表
        public let layers: [LayerVersionInfo]

        /// 层总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case layers = "Layers"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LayerVersionInfo] {
            self.layers
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 返回层列表
    ///
    /// 返回全部层的列表，其中包含了每个层最新版本的信息，可以通过适配运行时进行过滤。
    @inlinable
    public func listLayers(_ input: ListLayersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLayersResponse> {
        self.client.execute(action: "ListLayers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 返回层列表
    ///
    /// 返回全部层的列表，其中包含了每个层最新版本的信息，可以通过适配运行时进行过滤。
    @inlinable
    public func listLayers(_ input: ListLayersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLayersResponse {
        try await self.client.execute(action: "ListLayers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 返回层列表
    ///
    /// 返回全部层的列表，其中包含了每个层最新版本的信息，可以通过适配运行时进行过滤。
    @inlinable
    public func listLayers(compatibleRuntime: String? = nil, offset: Int64? = nil, limit: Int64? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLayersResponse> {
        let input = ListLayersRequest(compatibleRuntime: compatibleRuntime, offset: offset, limit: limit, searchKey: searchKey)
        return self.client.execute(action: "ListLayers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 返回层列表
    ///
    /// 返回全部层的列表，其中包含了每个层最新版本的信息，可以通过适配运行时进行过滤。
    @inlinable
    public func listLayers(compatibleRuntime: String? = nil, offset: Int64? = nil, limit: Int64? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLayersResponse {
        let input = ListLayersRequest(compatibleRuntime: compatibleRuntime, offset: offset, limit: limit, searchKey: searchKey)
        return try await self.client.execute(action: "ListLayers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
