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

extension Domain {
    /// DescribeDomainNameList请求参数结构体
    public struct DescribeDomainNameListRequest: TCPaginatedRequest {
        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为20，取值范围[1,100]
        public let limit: UInt64?

        public init(offset: UInt64? = nil, limit: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeDomainNameListResponse) -> DescribeDomainNameListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDomainNameListRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDomainNameList返回参数结构体
    public struct DescribeDomainNameListResponse: TCPaginatedResponse {
        /// 域名信息集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainSet: [DomainList]?

        /// 域名总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domainSet = "DomainSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DomainList] {
            self.domainSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 我的域名列表
    ///
    /// 本接口 (  DescribeDomainNameList ) 我的域名列表。
    @inlinable
    public func describeDomainNameList(_ input: DescribeDomainNameListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainNameListResponse> {
        self.client.execute(action: "DescribeDomainNameList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 我的域名列表
    ///
    /// 本接口 (  DescribeDomainNameList ) 我的域名列表。
    @inlinable
    public func describeDomainNameList(_ input: DescribeDomainNameListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainNameListResponse {
        try await self.client.execute(action: "DescribeDomainNameList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 我的域名列表
    ///
    /// 本接口 (  DescribeDomainNameList ) 我的域名列表。
    @inlinable
    public func describeDomainNameList(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainNameListResponse> {
        let input = DescribeDomainNameListRequest(offset: offset, limit: limit)
        return self.client.execute(action: "DescribeDomainNameList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 我的域名列表
    ///
    /// 本接口 (  DescribeDomainNameList ) 我的域名列表。
    @inlinable
    public func describeDomainNameList(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainNameListResponse {
        let input = DescribeDomainNameListRequest(offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeDomainNameList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 我的域名列表
    ///
    /// 本接口 (  DescribeDomainNameList ) 我的域名列表。
    @inlinable
    public func describeDomainNameListPaginated(_ input: DescribeDomainNameListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DomainList])> {
        self.client.paginate(input: input, region: region, command: self.describeDomainNameList, logger: logger, on: eventLoop)
    }

    /// 我的域名列表
    ///
    /// 本接口 (  DescribeDomainNameList ) 我的域名列表。
    @inlinable @discardableResult
    public func describeDomainNameListPaginated(_ input: DescribeDomainNameListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDomainNameListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDomainNameList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 我的域名列表
    ///
    /// 本接口 (  DescribeDomainNameList ) 我的域名列表。
    @inlinable
    public func describeDomainNameListPaginator(_ input: DescribeDomainNameListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeDomainNameListRequest, DescribeDomainNameListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeDomainNameListRequest, DescribeDomainNameListResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDomainNameList, logger: logger, on: eventLoop)
    }
}
