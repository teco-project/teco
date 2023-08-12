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
import TecoPaginationHelpers

extension Live {
    /// DescribeLiveDomainCertBindings请求参数结构体
    public struct DescribeLiveDomainCertBindingsRequest: TCPaginatedRequest {
        /// 要搜索的域名字符串。
        public let domainSearch: String?

        /// 记录行的位置，从0开始。默认0。
        public let offset: Int64?

        /// 记录行的最大数目。默认50。
        /// 若不传，则最多返回50条数据。
        public let length: Int64?

        /// 要查询的单个域名。
        public let domainName: String?

        /// 可取值：
        /// ExpireTimeAsc：证书过期时间升序。
        /// ExpireTimeDesc：证书过期时间降序。
        public let orderBy: String?

        public init(domainSearch: String? = nil, offset: Int64? = nil, length: Int64? = nil, domainName: String? = nil, orderBy: String? = nil) {
            self.domainSearch = domainSearch
            self.offset = offset
            self.length = length
            self.domainName = domainName
            self.orderBy = orderBy
        }

        enum CodingKeys: String, CodingKey {
            case domainSearch = "DomainSearch"
            case offset = "Offset"
            case length = "Length"
            case domainName = "DomainName"
            case orderBy = "OrderBy"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLiveDomainCertBindingsResponse) -> DescribeLiveDomainCertBindingsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLiveDomainCertBindingsRequest(domainSearch: self.domainSearch, offset: (self.offset ?? 0) + .init(response.getItems().count), length: self.length, domainName: self.domainName, orderBy: self.orderBy)
        }
    }

    /// DescribeLiveDomainCertBindings返回参数结构体
    public struct DescribeLiveDomainCertBindingsResponse: TCPaginatedResponse {
        /// 有绑定证书的域名信息数组。
        public let liveDomainCertBindings: [LiveDomainCertBindings]

        /// 总的记录行数，便于分页。
        public let totalNum: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case liveDomainCertBindings = "LiveDomainCertBindings"
            case totalNum = "TotalNum"
            case requestId = "RequestId"
        }

        /// Extract the returned ``LiveDomainCertBindings`` list from the paginated response.
        public func getItems() -> [LiveDomainCertBindings] {
            self.liveDomainCertBindings
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalNum
        }
    }

    /// 查询绑定证书的域名列表
    ///
    /// 查询绑定证书的域名列表。
    @inlinable
    public func describeLiveDomainCertBindings(_ input: DescribeLiveDomainCertBindingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveDomainCertBindingsResponse> {
        self.client.execute(action: "DescribeLiveDomainCertBindings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询绑定证书的域名列表
    ///
    /// 查询绑定证书的域名列表。
    @inlinable
    public func describeLiveDomainCertBindings(_ input: DescribeLiveDomainCertBindingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDomainCertBindingsResponse {
        try await self.client.execute(action: "DescribeLiveDomainCertBindings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询绑定证书的域名列表
    ///
    /// 查询绑定证书的域名列表。
    @inlinable
    public func describeLiveDomainCertBindings(domainSearch: String? = nil, offset: Int64? = nil, length: Int64? = nil, domainName: String? = nil, orderBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveDomainCertBindingsResponse> {
        self.describeLiveDomainCertBindings(.init(domainSearch: domainSearch, offset: offset, length: length, domainName: domainName, orderBy: orderBy), region: region, logger: logger, on: eventLoop)
    }

    /// 查询绑定证书的域名列表
    ///
    /// 查询绑定证书的域名列表。
    @inlinable
    public func describeLiveDomainCertBindings(domainSearch: String? = nil, offset: Int64? = nil, length: Int64? = nil, domainName: String? = nil, orderBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDomainCertBindingsResponse {
        try await self.describeLiveDomainCertBindings(.init(domainSearch: domainSearch, offset: offset, length: length, domainName: domainName, orderBy: orderBy), region: region, logger: logger, on: eventLoop)
    }

    /// 查询绑定证书的域名列表
    ///
    /// 查询绑定证书的域名列表。
    @inlinable
    public func describeLiveDomainCertBindingsPaginated(_ input: DescribeLiveDomainCertBindingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [LiveDomainCertBindings])> {
        self.client.paginate(input: input, region: region, command: self.describeLiveDomainCertBindings, logger: logger, on: eventLoop)
    }

    /// 查询绑定证书的域名列表
    ///
    /// 查询绑定证书的域名列表。
    @inlinable @discardableResult
    public func describeLiveDomainCertBindingsPaginated(_ input: DescribeLiveDomainCertBindingsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLiveDomainCertBindingsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLiveDomainCertBindings, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询绑定证书的域名列表
    ///
    /// 查询绑定证书的域名列表。
    ///
    /// - Returns: `AsyncSequence`s of `LiveDomainCertBindings` and `DescribeLiveDomainCertBindingsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLiveDomainCertBindingsPaginator(_ input: DescribeLiveDomainCertBindingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLiveDomainCertBindingsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLiveDomainCertBindings, logger: logger, on: eventLoop)
    }
}
