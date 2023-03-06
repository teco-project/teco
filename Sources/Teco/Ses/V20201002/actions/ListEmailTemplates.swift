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

extension Ses {
    /// ListEmailTemplates请求参数结构体
    public struct ListEmailTemplatesRequest: TCPaginatedRequest {
        /// 获取模板数据量，用于分页
        public let limit: UInt64

        /// 获取模板偏移值，用于分页
        public let offset: UInt64

        public init(limit: UInt64, offset: UInt64) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: ListEmailTemplatesResponse) -> ListEmailTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListEmailTemplatesRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count))
        }
    }

    /// ListEmailTemplates返回参数结构体
    public struct ListEmailTemplatesResponse: TCPaginatedResponse {
        /// 邮件模板列表
        public let templatesMetadata: [TemplatesMetadata]

        /// 模板总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templatesMetadata = "TemplatesMetadata"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TemplatesMetadata] {
            self.templatesMetadata
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取当前邮件模板列表
    @inlinable
    public func listEmailTemplates(_ input: ListEmailTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEmailTemplatesResponse> {
        self.client.execute(action: "ListEmailTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取当前邮件模板列表
    @inlinable
    public func listEmailTemplates(_ input: ListEmailTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEmailTemplatesResponse {
        try await self.client.execute(action: "ListEmailTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取当前邮件模板列表
    @inlinable
    public func listEmailTemplates(limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEmailTemplatesResponse> {
        let input = ListEmailTemplatesRequest(limit: limit, offset: offset)
        return self.client.execute(action: "ListEmailTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取当前邮件模板列表
    @inlinable
    public func listEmailTemplates(limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEmailTemplatesResponse {
        let input = ListEmailTemplatesRequest(limit: limit, offset: offset)
        return try await self.client.execute(action: "ListEmailTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取当前邮件模板列表
    @inlinable
    public func listEmailTemplatesPaginated(_ input: ListEmailTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TemplatesMetadata])> {
        self.client.paginate(input: input, region: region, command: self.listEmailTemplates, logger: logger, on: eventLoop)
    }

    /// 获取当前邮件模板列表
    @inlinable
    public func listEmailTemplatesPaginated(_ input: ListEmailTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (ListEmailTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listEmailTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取当前邮件模板列表
    @inlinable
    public func listEmailTemplatesPaginator(_ input: ListEmailTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<ListEmailTemplatesRequest, ListEmailTemplatesResponse>.ResultSequence, responses: TCClient.Paginator<ListEmailTemplatesRequest, ListEmailTemplatesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<ListEmailTemplatesRequest, ListEmailTemplatesResponse>.ResultSequence(input: input, region: region, command: self.listEmailTemplates, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<ListEmailTemplatesRequest, ListEmailTemplatesResponse>.ResponseSequence(input: input, region: region, command: self.listEmailTemplates, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
