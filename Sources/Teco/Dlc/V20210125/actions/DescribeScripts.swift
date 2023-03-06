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

extension Dlc {
    /// DescribeScripts请求参数结构体
    public struct DescribeScriptsRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: Int64?

        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 按字段排序，支持如下字段类型，update-time
        public let sortBy: String?

        /// 排序方式，desc表示正序，asc表示反序，默认asc
        public let sorting: String?

        /// 过滤条件，如下支持的过滤类型，传参Name应为其一
        /// script-id - String - （过滤条件）script-id取值形如：157de0d1-26b4-4df2-a2d0-b64afc406c25。
        /// script-name-keyword - String - （过滤条件）数据表名称,形如：script-test。
        public let filters: [Filter]?

        public init(limit: Int64? = nil, offset: Int64? = nil, sortBy: String? = nil, sorting: String? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.sortBy = sortBy
            self.sorting = sorting
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case sortBy = "SortBy"
            case sorting = "Sorting"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeScriptsResponse) -> DescribeScriptsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeScriptsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), sortBy: self.sortBy, sorting: self.sorting, filters: self.filters)
        }
    }

    /// DescribeScripts返回参数结构体
    public struct DescribeScriptsResponse: TCPaginatedResponse {
        /// Script列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scripts: [Script]?

        /// 实例总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scripts = "Scripts"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Script] {
            self.scripts ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询script列表
    ///
    /// 该接口（DescribeScripts）用于获取所有SQL查询。
    @inlinable
    public func describeScripts(_ input: DescribeScriptsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScriptsResponse> {
        self.client.execute(action: "DescribeScripts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询script列表
    ///
    /// 该接口（DescribeScripts）用于获取所有SQL查询。
    @inlinable
    public func describeScripts(_ input: DescribeScriptsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScriptsResponse {
        try await self.client.execute(action: "DescribeScripts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询script列表
    ///
    /// 该接口（DescribeScripts）用于获取所有SQL查询。
    @inlinable
    public func describeScripts(limit: Int64? = nil, offset: Int64? = nil, sortBy: String? = nil, sorting: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScriptsResponse> {
        let input = DescribeScriptsRequest(limit: limit, offset: offset, sortBy: sortBy, sorting: sorting, filters: filters)
        return self.client.execute(action: "DescribeScripts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询script列表
    ///
    /// 该接口（DescribeScripts）用于获取所有SQL查询。
    @inlinable
    public func describeScripts(limit: Int64? = nil, offset: Int64? = nil, sortBy: String? = nil, sorting: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScriptsResponse {
        let input = DescribeScriptsRequest(limit: limit, offset: offset, sortBy: sortBy, sorting: sorting, filters: filters)
        return try await self.client.execute(action: "DescribeScripts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询script列表
    ///
    /// 该接口（DescribeScripts）用于获取所有SQL查询。
    @inlinable
    public func describeScriptsPaginated(_ input: DescribeScriptsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Script])> {
        self.client.paginate(input: input, region: region, command: self.describeScripts, logger: logger, on: eventLoop)
    }

    /// 查询script列表
    ///
    /// 该接口（DescribeScripts）用于获取所有SQL查询。
    @inlinable
    public func describeScriptsPaginated(_ input: DescribeScriptsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScriptsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeScripts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询script列表
    ///
    /// 该接口（DescribeScripts）用于获取所有SQL查询。
    @inlinable
    public func describeScriptsPaginator(_ input: DescribeScriptsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeScriptsRequest, DescribeScriptsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeScriptsRequest, DescribeScriptsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeScriptsRequest, DescribeScriptsResponse>.ResultSequence(input: input, region: region, command: self.describeScripts, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeScriptsRequest, DescribeScriptsResponse>.ResponseSequence(input: input, region: region, command: self.describeScripts, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
