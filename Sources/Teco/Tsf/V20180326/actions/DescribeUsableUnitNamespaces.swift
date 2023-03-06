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

extension Tsf {
    /// DescribeUsableUnitNamespaces请求参数结构体
    public struct DescribeUsableUnitNamespacesRequest: TCPaginatedRequest {
        /// 根据命名空间名或ID模糊查询
        public let searchWord: String?

        /// 翻页查询偏移量
        public let offset: Int64?

        /// 翻页查询每页记录数
        public let limit: Int64?

        public init(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeUsableUnitNamespacesResponse) -> DescribeUsableUnitNamespacesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUsableUnitNamespacesRequest(searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeUsableUnitNamespaces返回参数结构体
    public struct DescribeUsableUnitNamespacesResponse: TCPaginatedResponse {
        /// 单元化命名空间对象列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageUnitNamespace?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UnitNamespace] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询可用于被导入的命名空间列表
    @inlinable
    public func describeUsableUnitNamespaces(_ input: DescribeUsableUnitNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsableUnitNamespacesResponse> {
        self.client.execute(action: "DescribeUsableUnitNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询可用于被导入的命名空间列表
    @inlinable
    public func describeUsableUnitNamespaces(_ input: DescribeUsableUnitNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsableUnitNamespacesResponse {
        try await self.client.execute(action: "DescribeUsableUnitNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询可用于被导入的命名空间列表
    @inlinable
    public func describeUsableUnitNamespaces(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsableUnitNamespacesResponse> {
        let input = DescribeUsableUnitNamespacesRequest(searchWord: searchWord, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeUsableUnitNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询可用于被导入的命名空间列表
    @inlinable
    public func describeUsableUnitNamespaces(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsableUnitNamespacesResponse {
        let input = DescribeUsableUnitNamespacesRequest(searchWord: searchWord, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeUsableUnitNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询可用于被导入的命名空间列表
    @inlinable
    public func describeUsableUnitNamespacesPaginated(_ input: DescribeUsableUnitNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [UnitNamespace])> {
        self.client.paginate(input: input, region: region, command: self.describeUsableUnitNamespaces, logger: logger, on: eventLoop)
    }

    /// 查询可用于被导入的命名空间列表
    @inlinable
    public func describeUsableUnitNamespacesPaginated(_ input: DescribeUsableUnitNamespacesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUsableUnitNamespacesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUsableUnitNamespaces, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询可用于被导入的命名空间列表
    @inlinable
    public func describeUsableUnitNamespacesPaginator(_ input: DescribeUsableUnitNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeUsableUnitNamespacesRequest, DescribeUsableUnitNamespacesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeUsableUnitNamespacesRequest, DescribeUsableUnitNamespacesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeUsableUnitNamespacesRequest, DescribeUsableUnitNamespacesResponse>.ResultSequence(input: input, region: region, command: self.describeUsableUnitNamespaces, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeUsableUnitNamespacesRequest, DescribeUsableUnitNamespacesResponse>.ResponseSequence(input: input, region: region, command: self.describeUsableUnitNamespaces, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
