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

extension Vod {
    /// DescribePersonSamples请求参数结构体
    public struct DescribePersonSamplesRequest: TCPaginatedRequest {
        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 拉取的素材类型，可选值：
        /// - UserDefine：用户自定义素材库；
        /// - Default：系统默认素材库。
        ///
        /// 默认值：UserDefine，拉取用户自定义素材库素材。
        /// 说明：如果是拉取系统默认素材库，只能使用素材名字或者素材 ID + 素材名字的方式进行拉取，且五官图片只返回一张。
        public let type: String?

        /// 素材 ID，数组长度限制：100。
        public let personIds: [String]?

        /// 素材名称，数组长度限制：20。
        public let names: [String]?

        /// 素材标签，数组长度限制：20。
        public let tags: [String]?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：100，最大值：100。
        public let limit: UInt64?

        public init(subAppId: UInt64? = nil, type: String? = nil, personIds: [String]? = nil, names: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.subAppId = subAppId
            self.type = type
            self.personIds = personIds
            self.names = names
            self.tags = tags
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case type = "Type"
            case personIds = "PersonIds"
            case names = "Names"
            case tags = "Tags"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePersonSamplesResponse) -> DescribePersonSamplesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(subAppId: self.subAppId, type: self.type, personIds: self.personIds, names: self.names, tags: self.tags, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePersonSamples返回参数结构体
    public struct DescribePersonSamplesResponse: TCPaginatedResponse {
        /// 符合条件的记录总数。
        public let totalCount: UInt64

        /// 人物信息。
        public let personSet: [AiSamplePerson]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case personSet = "PersonSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AiSamplePerson`` list from the paginated response.
        public func getItems() -> [AiSamplePerson] {
            self.personSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取素材样本列表
    ///
    /// 该接口用于查询素材样本信息，支持根据素材 ID、名称、标签，分页查询。
    @inlinable
    public func describePersonSamples(_ input: DescribePersonSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonSamplesResponse> {
        self.client.execute(action: "DescribePersonSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取素材样本列表
    ///
    /// 该接口用于查询素材样本信息，支持根据素材 ID、名称、标签，分页查询。
    @inlinable
    public func describePersonSamples(_ input: DescribePersonSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonSamplesResponse {
        try await self.client.execute(action: "DescribePersonSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取素材样本列表
    ///
    /// 该接口用于查询素材样本信息，支持根据素材 ID、名称、标签，分页查询。
    @inlinable
    public func describePersonSamples(subAppId: UInt64? = nil, type: String? = nil, personIds: [String]? = nil, names: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonSamplesResponse> {
        self.describePersonSamples(.init(subAppId: subAppId, type: type, personIds: personIds, names: names, tags: tags, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取素材样本列表
    ///
    /// 该接口用于查询素材样本信息，支持根据素材 ID、名称、标签，分页查询。
    @inlinable
    public func describePersonSamples(subAppId: UInt64? = nil, type: String? = nil, personIds: [String]? = nil, names: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonSamplesResponse {
        try await self.describePersonSamples(.init(subAppId: subAppId, type: type, personIds: personIds, names: names, tags: tags, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取素材样本列表
    ///
    /// 该接口用于查询素材样本信息，支持根据素材 ID、名称、标签，分页查询。
    @inlinable
    public func describePersonSamplesPaginated(_ input: DescribePersonSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AiSamplePerson])> {
        self.client.paginate(input: input, region: region, command: self.describePersonSamples, logger: logger, on: eventLoop)
    }

    /// 获取素材样本列表
    ///
    /// 该接口用于查询素材样本信息，支持根据素材 ID、名称、标签，分页查询。
    @inlinable @discardableResult
    public func describePersonSamplesPaginated(_ input: DescribePersonSamplesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePersonSamplesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePersonSamples, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取素材样本列表
    ///
    /// 该接口用于查询素材样本信息，支持根据素材 ID、名称、标签，分页查询。
    ///
    /// - Returns: `AsyncSequence`s of ``AiSamplePerson`` and ``DescribePersonSamplesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePersonSamplesPaginator(_ input: DescribePersonSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePersonSamplesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePersonSamples, logger: logger, on: eventLoop)
    }
}
