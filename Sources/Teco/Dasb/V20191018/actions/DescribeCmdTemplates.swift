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

extension Dasb {
    /// DescribeCmdTemplates请求参数结构体
    public struct DescribeCmdTemplatesRequest: TCPaginatedRequest {
        /// 命令模板ID集合，非必需
        public let idSet: [UInt64]?

        /// 命令模板名，模糊查询，最大长度64字符
        public let name: String?

        /// 分页偏移位置，默认值为0
        public let offset: UInt64?

        /// 每页条目数量，默认20
        public let limit: UInt64?

        public init(idSet: [UInt64]? = nil, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.idSet = idSet
            self.name = name
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCmdTemplatesResponse) -> DescribeCmdTemplatesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(idSet: self.idSet, name: self.name, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeCmdTemplates返回参数结构体
    public struct DescribeCmdTemplatesResponse: TCPaginatedResponse {
        /// 命令模板列表
        public let cmdTemplateSet: [CmdTemplate]

        /// 总记录数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cmdTemplateSet = "CmdTemplateSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CmdTemplate`` list from the paginated response.
        public func getItems() -> [CmdTemplate] {
            self.cmdTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询命令模板列表
    @inlinable
    public func describeCmdTemplates(_ input: DescribeCmdTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCmdTemplatesResponse> {
        self.client.execute(action: "DescribeCmdTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询命令模板列表
    @inlinable
    public func describeCmdTemplates(_ input: DescribeCmdTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmdTemplatesResponse {
        try await self.client.execute(action: "DescribeCmdTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询命令模板列表
    @inlinable
    public func describeCmdTemplates(idSet: [UInt64]? = nil, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCmdTemplatesResponse> {
        self.describeCmdTemplates(.init(idSet: idSet, name: name, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询命令模板列表
    @inlinable
    public func describeCmdTemplates(idSet: [UInt64]? = nil, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmdTemplatesResponse {
        try await self.describeCmdTemplates(.init(idSet: idSet, name: name, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询命令模板列表
    @inlinable
    public func describeCmdTemplatesPaginated(_ input: DescribeCmdTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CmdTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeCmdTemplates, logger: logger, on: eventLoop)
    }

    /// 查询命令模板列表
    @inlinable @discardableResult
    public func describeCmdTemplatesPaginated(_ input: DescribeCmdTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCmdTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCmdTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询命令模板列表
    ///
    /// - Returns: `AsyncSequence`s of ``CmdTemplate`` and ``DescribeCmdTemplatesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCmdTemplatesPaginator(_ input: DescribeCmdTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCmdTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCmdTemplates, logger: logger, on: eventLoop)
    }
}
