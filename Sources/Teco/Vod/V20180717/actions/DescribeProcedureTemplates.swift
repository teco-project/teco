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

extension Vod {
    /// DescribeProcedureTemplates请求参数结构体
    public struct DescribeProcedureTemplatesRequest: TCPaginatedRequest {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 任务流模板名字过滤条件，数组长度限制：100。
        public let names: [String]?

        /// 任务流模板类型过滤条件，可选值：
        /// <li>Preset：系统预置任务流模板；</li>
        /// <li>Custom：用户自定义任务流模板。</li>
        public let type: String?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: UInt64?

        public init(subAppId: UInt64? = nil, names: [String]? = nil, type: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.subAppId = subAppId
            self.names = names
            self.type = type
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case names = "Names"
            case type = "Type"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProcedureTemplatesResponse) -> DescribeProcedureTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProcedureTemplatesRequest(subAppId: self.subAppId, names: self.names, type: self.type, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeProcedureTemplates返回参数结构体
    public struct DescribeProcedureTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 任务流模板详情列表。
        public let procedureTemplateSet: [ProcedureTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case procedureTemplateSet = "ProcedureTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ProcedureTemplate] {
            self.procedureTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取任务流模板列表
    ///
    /// 根据任务流模板名字，获取任务流模板详情列表。
    @inlinable
    public func describeProcedureTemplates(_ input: DescribeProcedureTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProcedureTemplatesResponse> {
        self.client.execute(action: "DescribeProcedureTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取任务流模板列表
    ///
    /// 根据任务流模板名字，获取任务流模板详情列表。
    @inlinable
    public func describeProcedureTemplates(_ input: DescribeProcedureTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProcedureTemplatesResponse {
        try await self.client.execute(action: "DescribeProcedureTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取任务流模板列表
    ///
    /// 根据任务流模板名字，获取任务流模板详情列表。
    @inlinable
    public func describeProcedureTemplates(subAppId: UInt64? = nil, names: [String]? = nil, type: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProcedureTemplatesResponse> {
        let input = DescribeProcedureTemplatesRequest(subAppId: subAppId, names: names, type: type, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeProcedureTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取任务流模板列表
    ///
    /// 根据任务流模板名字，获取任务流模板详情列表。
    @inlinable
    public func describeProcedureTemplates(subAppId: UInt64? = nil, names: [String]? = nil, type: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProcedureTemplatesResponse {
        let input = DescribeProcedureTemplatesRequest(subAppId: subAppId, names: names, type: type, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeProcedureTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取任务流模板列表
    ///
    /// 根据任务流模板名字，获取任务流模板详情列表。
    @inlinable
    public func describeProcedureTemplatesPaginated(_ input: DescribeProcedureTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProcedureTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeProcedureTemplates, logger: logger, on: eventLoop)
    }

    /// 获取任务流模板列表
    ///
    /// 根据任务流模板名字，获取任务流模板详情列表。
    @inlinable @discardableResult
    public func describeProcedureTemplatesPaginated(_ input: DescribeProcedureTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProcedureTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProcedureTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取任务流模板列表
    ///
    /// 根据任务流模板名字，获取任务流模板详情列表。
    ///
    /// - Returns: `AsyncSequence`s of `ProcedureTemplate` and `DescribeProcedureTemplatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProcedureTemplatesPaginator(_ input: DescribeProcedureTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProcedureTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProcedureTemplates, logger: logger, on: eventLoop)
    }
}
