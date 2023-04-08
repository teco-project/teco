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

extension Wss {
    /// DescribeCertList请求参数结构体
    public struct DescribeCertListRequest: TCPaginatedRequest {
        /// 模块名称，应填 ssl。
        public let moduleType: String

        /// 页数，默认第一页。
        public let offset: UInt64?

        /// 每页条数，默认每页20条。
        public let limit: UInt64?

        /// 搜索关键字。
        public let searchKey: String?

        /// 证书类型（目前支持:CA=客户端证书,SVR=服务器证书）。
        public let certType: String?

        /// 证书ID。
        public let id: String?

        /// 是否同时获取证书内容。
        public let withCert: String?

        /// 如传，则只返回可以给该域名使用的证书。
        public let altDomain: String?

        public init(moduleType: String, offset: UInt64? = nil, limit: UInt64? = nil, searchKey: String? = nil, certType: String? = nil, id: String? = nil, withCert: String? = nil, altDomain: String? = nil) {
            self.moduleType = moduleType
            self.offset = offset
            self.limit = limit
            self.searchKey = searchKey
            self.certType = certType
            self.id = id
            self.withCert = withCert
            self.altDomain = altDomain
        }

        enum CodingKeys: String, CodingKey {
            case moduleType = "ModuleType"
            case offset = "Offset"
            case limit = "Limit"
            case searchKey = "SearchKey"
            case certType = "CertType"
            case id = "Id"
            case withCert = "WithCert"
            case altDomain = "AltDomain"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCertListResponse) -> DescribeCertListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCertListRequest(moduleType: self.moduleType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, searchKey: self.searchKey, certType: self.certType, id: self.id, withCert: self.withCert, altDomain: self.altDomain)
        }
    }

    /// DescribeCertList返回参数结构体
    public struct DescribeCertListResponse: TCPaginatedResponse {
        /// 总数量。
        public let totalCount: UInt64

        /// 列表。
        public let certificateSet: [SSLCertificate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case certificateSet = "CertificateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SSLCertificate] {
            self.certificateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取证书列表
    ///
    /// 本接口(DescribeCertList)用于获取证书列表。
    @inlinable
    public func describeCertList(_ input: DescribeCertListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertListResponse> {
        self.client.execute(action: "DescribeCertList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取证书列表
    ///
    /// 本接口(DescribeCertList)用于获取证书列表。
    @inlinable
    public func describeCertList(_ input: DescribeCertListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertListResponse {
        try await self.client.execute(action: "DescribeCertList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取证书列表
    ///
    /// 本接口(DescribeCertList)用于获取证书列表。
    @inlinable
    public func describeCertList(moduleType: String, offset: UInt64? = nil, limit: UInt64? = nil, searchKey: String? = nil, certType: String? = nil, id: String? = nil, withCert: String? = nil, altDomain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertListResponse> {
        self.describeCertList(.init(moduleType: moduleType, offset: offset, limit: limit, searchKey: searchKey, certType: certType, id: id, withCert: withCert, altDomain: altDomain), region: region, logger: logger, on: eventLoop)
    }

    /// 获取证书列表
    ///
    /// 本接口(DescribeCertList)用于获取证书列表。
    @inlinable
    public func describeCertList(moduleType: String, offset: UInt64? = nil, limit: UInt64? = nil, searchKey: String? = nil, certType: String? = nil, id: String? = nil, withCert: String? = nil, altDomain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertListResponse {
        try await self.describeCertList(.init(moduleType: moduleType, offset: offset, limit: limit, searchKey: searchKey, certType: certType, id: id, withCert: withCert, altDomain: altDomain), region: region, logger: logger, on: eventLoop)
    }

    /// 获取证书列表
    ///
    /// 本接口(DescribeCertList)用于获取证书列表。
    @inlinable
    public func describeCertListPaginated(_ input: DescribeCertListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SSLCertificate])> {
        self.client.paginate(input: input, region: region, command: self.describeCertList, logger: logger, on: eventLoop)
    }

    /// 获取证书列表
    ///
    /// 本接口(DescribeCertList)用于获取证书列表。
    @inlinable @discardableResult
    public func describeCertListPaginated(_ input: DescribeCertListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCertListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCertList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取证书列表
    ///
    /// 本接口(DescribeCertList)用于获取证书列表。
    ///
    /// - Returns: `AsyncSequence`s of `SSLCertificate` and `DescribeCertListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCertListPaginator(_ input: DescribeCertListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCertListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCertList, logger: logger, on: eventLoop)
    }
}
