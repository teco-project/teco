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

extension Trp {
    /// DescribeCodePacks请求参数结构体
    public struct DescribeCodePacksRequest: TCPaginatedRequest {
        /// 每页数量
        public let pageSize: UInt64?

        /// 页数
        public let pageNumber: UInt64?

        /// 查询关键字
        public let keyword: String?

        /// 企业ID
        public let corpId: UInt64?

        /// 是否有流水码 0:无 1:有
        public let serialType: UInt64?

        public init(pageSize: UInt64? = nil, pageNumber: UInt64? = nil, keyword: String? = nil, corpId: UInt64? = nil, serialType: UInt64? = nil) {
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.keyword = keyword
            self.corpId = corpId
            self.serialType = serialType
        }

        enum CodingKeys: String, CodingKey {
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case keyword = "Keyword"
            case corpId = "CorpId"
            case serialType = "SerialType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeCodePacksResponse) -> DescribeCodePacksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCodePacksRequest(pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1, keyword: self.keyword, corpId: self.corpId, serialType: self.serialType)
        }
    }

    /// DescribeCodePacks返回参数结构体
    public struct DescribeCodePacksResponse: TCPaginatedResponse {
        /// 码列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codePacks: [CodePack]?

        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case codePacks = "CodePacks"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CodePack] {
            self.codePacks ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询码包列表
    @inlinable
    public func describeCodePacks(_ input: DescribeCodePacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodePacksResponse> {
        self.client.execute(action: "DescribeCodePacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询码包列表
    @inlinable
    public func describeCodePacks(_ input: DescribeCodePacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodePacksResponse {
        try await self.client.execute(action: "DescribeCodePacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询码包列表
    @inlinable
    public func describeCodePacks(pageSize: UInt64? = nil, pageNumber: UInt64? = nil, keyword: String? = nil, corpId: UInt64? = nil, serialType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodePacksResponse> {
        let input = DescribeCodePacksRequest(pageSize: pageSize, pageNumber: pageNumber, keyword: keyword, corpId: corpId, serialType: serialType)
        return self.client.execute(action: "DescribeCodePacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询码包列表
    @inlinable
    public func describeCodePacks(pageSize: UInt64? = nil, pageNumber: UInt64? = nil, keyword: String? = nil, corpId: UInt64? = nil, serialType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodePacksResponse {
        let input = DescribeCodePacksRequest(pageSize: pageSize, pageNumber: pageNumber, keyword: keyword, corpId: corpId, serialType: serialType)
        return try await self.client.execute(action: "DescribeCodePacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询码包列表
    @inlinable
    public func describeCodePacksPaginated(_ input: DescribeCodePacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CodePack])> {
        self.client.paginate(input: input, region: region, command: self.describeCodePacks, logger: logger, on: eventLoop)
    }

    /// 查询码包列表
    @inlinable @discardableResult
    public func describeCodePacksPaginated(_ input: DescribeCodePacksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCodePacksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCodePacks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询码包列表
    @inlinable
    public func describeCodePacksPaginator(_ input: DescribeCodePacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeCodePacksRequest, DescribeCodePacksResponse>.ResultSequence, responses: TCClient.Paginator<DescribeCodePacksRequest, DescribeCodePacksResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCodePacks, logger: logger, on: eventLoop)
    }
}
