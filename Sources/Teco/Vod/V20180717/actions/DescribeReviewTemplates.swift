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
    /// DescribeReviewTemplates请求参数结构体
    public struct DescribeReviewTemplatesRequest: TCPaginatedRequest {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: Int64?

        /// 审核模版唯一标识过滤条件，数组长度限制：100。
        public let definitions: [Int64]?

        /// 模板类型过滤条件，可选值：
        /// <li>Preset：系统预置模板；</li>
        /// <li>Custom：用户自定义模板。</li>
        public let type: String?

        /// 分页偏移量，默认值：0。
        public let offset: Int64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: Int64?

        public init(subAppId: Int64? = nil, definitions: [Int64]? = nil, type: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.subAppId = subAppId
            self.definitions = definitions
            self.type = type
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case definitions = "Definitions"
            case type = "Type"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeReviewTemplatesResponse) -> DescribeReviewTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeReviewTemplatesRequest(subAppId: self.subAppId, definitions: self.definitions, type: self.type, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeReviewTemplates返回参数结构体
    public struct DescribeReviewTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: Int64

        /// 审核模板详情列表。
        public let reviewTemplateSet: [ReviewTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case reviewTemplateSet = "ReviewTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ReviewTemplate] {
            self.reviewTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取审核模板列表
    ///
    /// 获取审核模板列表。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable
    public func describeReviewTemplates(_ input: DescribeReviewTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReviewTemplatesResponse> {
        self.client.execute(action: "DescribeReviewTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取审核模板列表
    ///
    /// 获取审核模板列表。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable
    public func describeReviewTemplates(_ input: DescribeReviewTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReviewTemplatesResponse {
        try await self.client.execute(action: "DescribeReviewTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取审核模板列表
    ///
    /// 获取审核模板列表。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable
    public func describeReviewTemplates(subAppId: Int64? = nil, definitions: [Int64]? = nil, type: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReviewTemplatesResponse> {
        self.describeReviewTemplates(.init(subAppId: subAppId, definitions: definitions, type: type, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取审核模板列表
    ///
    /// 获取审核模板列表。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable
    public func describeReviewTemplates(subAppId: Int64? = nil, definitions: [Int64]? = nil, type: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReviewTemplatesResponse {
        try await self.describeReviewTemplates(.init(subAppId: subAppId, definitions: definitions, type: type, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取审核模板列表
    ///
    /// 获取审核模板列表。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable
    public func describeReviewTemplatesPaginated(_ input: DescribeReviewTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ReviewTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeReviewTemplates, logger: logger, on: eventLoop)
    }

    /// 获取审核模板列表
    ///
    /// 获取审核模板列表。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable @discardableResult
    public func describeReviewTemplatesPaginated(_ input: DescribeReviewTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeReviewTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeReviewTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取审核模板列表
    ///
    /// 获取审核模板列表。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    ///
    /// - Returns: `AsyncSequence`s of `ReviewTemplate` and `DescribeReviewTemplatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeReviewTemplatesPaginator(_ input: DescribeReviewTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeReviewTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeReviewTemplates, logger: logger, on: eventLoop)
    }
}
