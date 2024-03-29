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

extension Cvm {
    /// DescribeKeyPairs请求参数结构体
    public struct DescribeKeyPairsRequest: TCPaginatedRequest {
        /// 密钥对ID，密钥对ID形如：`skey-11112222`（此接口支持同时传入多个ID进行过滤。此参数的具体格式可参考 API [简介](https://cloud.tencent.com/document/api/213/15688)的 `id.N` 一节）。参数不支持同时指定 `KeyIds` 和 `Filters`。密钥对ID可以通过登录[控制台](https://console.cloud.tencent.com/cvm/index)查询。
        public let keyIds: [String]?

        /// 过滤条件。
        /// - project-id - Integer - 是否必填：否 -（过滤条件）按照项目ID过滤。可以通过[项目列表](https://console.cloud.tencent.com/project)查询项目ID，或者调用接口 [DescribeProject](https://cloud.tencent.com/document/api/378/4400)，取返回信息中的projectId获取项目ID。
        /// - key-name - String - 是否必填：否 -（过滤条件）按照密钥对名称过滤。
        /// - tag-key - String - 是否必填：否 -（过滤条件）按照标签键过滤。
        /// - tag-value - String - 是否必填：否 -（过滤条件）按照标签值过滤。
        /// - tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对过滤。tag-key使用具体的标签键进行替换。
        ///
        /// 参数不支持同时指定 `KeyIds` 和 `Filters`。
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        public init(keyIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.keyIds = keyIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case keyIds = "KeyIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeKeyPairsResponse) -> DescribeKeyPairsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(keyIds: self.keyIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeKeyPairs返回参数结构体
    public struct DescribeKeyPairsResponse: TCPaginatedResponse {
        /// 符合条件的密钥对数量。
        public let totalCount: Int64

        /// 密钥对详细信息列表。
        public let keyPairSet: [KeyPair]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case keyPairSet = "KeyPairSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``KeyPair`` list from the paginated response.
        public func getItems() -> [KeyPair] {
            self.keyPairSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询密钥对列表
    ///
    /// 本接口 (DescribeKeyPairs) 用于查询密钥对信息。
    ///
    /// * 密钥对是通过一种算法生成的一对密钥，在生成的密钥对中，一个向外界公开，称为公钥；另一个用户自己保留，称为私钥。密钥对的公钥内容可以通过这个接口查询，但私钥内容系统不保留。
    @inlinable
    public func describeKeyPairs(_ input: DescribeKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKeyPairsResponse> {
        self.client.execute(action: "DescribeKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询密钥对列表
    ///
    /// 本接口 (DescribeKeyPairs) 用于查询密钥对信息。
    ///
    /// * 密钥对是通过一种算法生成的一对密钥，在生成的密钥对中，一个向外界公开，称为公钥；另一个用户自己保留，称为私钥。密钥对的公钥内容可以通过这个接口查询，但私钥内容系统不保留。
    @inlinable
    public func describeKeyPairs(_ input: DescribeKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKeyPairsResponse {
        try await self.client.execute(action: "DescribeKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询密钥对列表
    ///
    /// 本接口 (DescribeKeyPairs) 用于查询密钥对信息。
    ///
    /// * 密钥对是通过一种算法生成的一对密钥，在生成的密钥对中，一个向外界公开，称为公钥；另一个用户自己保留，称为私钥。密钥对的公钥内容可以通过这个接口查询，但私钥内容系统不保留。
    @inlinable
    public func describeKeyPairs(keyIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKeyPairsResponse> {
        self.describeKeyPairs(.init(keyIds: keyIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询密钥对列表
    ///
    /// 本接口 (DescribeKeyPairs) 用于查询密钥对信息。
    ///
    /// * 密钥对是通过一种算法生成的一对密钥，在生成的密钥对中，一个向外界公开，称为公钥；另一个用户自己保留，称为私钥。密钥对的公钥内容可以通过这个接口查询，但私钥内容系统不保留。
    @inlinable
    public func describeKeyPairs(keyIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKeyPairsResponse {
        try await self.describeKeyPairs(.init(keyIds: keyIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询密钥对列表
    ///
    /// 本接口 (DescribeKeyPairs) 用于查询密钥对信息。
    ///
    /// * 密钥对是通过一种算法生成的一对密钥，在生成的密钥对中，一个向外界公开，称为公钥；另一个用户自己保留，称为私钥。密钥对的公钥内容可以通过这个接口查询，但私钥内容系统不保留。
    @inlinable
    public func describeKeyPairsPaginated(_ input: DescribeKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [KeyPair])> {
        self.client.paginate(input: input, region: region, command: self.describeKeyPairs, logger: logger, on: eventLoop)
    }

    /// 查询密钥对列表
    ///
    /// 本接口 (DescribeKeyPairs) 用于查询密钥对信息。
    ///
    /// * 密钥对是通过一种算法生成的一对密钥，在生成的密钥对中，一个向外界公开，称为公钥；另一个用户自己保留，称为私钥。密钥对的公钥内容可以通过这个接口查询，但私钥内容系统不保留。
    @inlinable @discardableResult
    public func describeKeyPairsPaginated(_ input: DescribeKeyPairsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeKeyPairsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeKeyPairs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询密钥对列表
    ///
    /// 本接口 (DescribeKeyPairs) 用于查询密钥对信息。
    ///
    /// * 密钥对是通过一种算法生成的一对密钥，在生成的密钥对中，一个向外界公开，称为公钥；另一个用户自己保留，称为私钥。密钥对的公钥内容可以通过这个接口查询，但私钥内容系统不保留。
    ///
    /// - Returns: `AsyncSequence`s of ``KeyPair`` and ``DescribeKeyPairsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeKeyPairsPaginator(_ input: DescribeKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeKeyPairsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeKeyPairs, logger: logger, on: eventLoop)
    }
}
