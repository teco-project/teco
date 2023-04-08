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

import TecoCore
import TecoPaginationHelpers

extension Vod {
    /// DescribeAIAnalysisTemplates请求参数结构体
    public struct DescribeAIAnalysisTemplatesRequest: TCPaginatedRequest {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 音视频内容分析模板唯一标识过滤条件，数组长度最大值：100。
        public let definitions: [Int64]?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: UInt64?

        public init(subAppId: UInt64? = nil, definitions: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.subAppId = subAppId
            self.definitions = definitions
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case definitions = "Definitions"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAIAnalysisTemplatesResponse) -> DescribeAIAnalysisTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAIAnalysisTemplatesRequest(subAppId: self.subAppId, definitions: self.definitions, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAIAnalysisTemplates返回参数结构体
    public struct DescribeAIAnalysisTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 音视频内容分析模板详情列表。
        public let aiAnalysisTemplateSet: [AIAnalysisTemplateItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case aiAnalysisTemplateSet = "AIAnalysisTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AIAnalysisTemplateItem] {
            self.aiAnalysisTemplateSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取音视频内容分析模板列表
    ///
    /// 根据音视频内容分析模板唯一标识，获取音视频内容分析模板详情列表。返回结果包含符合条件的所有用户自定义音视频内容分析模板及[系统预置音视频内容分析模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.A7.86.E9.A2.91.E5.86.85.E5.AE.B9.E5.88.86.E6.9E.90.E6.A8.A1.E6.9D.BF)。
    @inlinable
    public func describeAIAnalysisTemplates(_ input: DescribeAIAnalysisTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIAnalysisTemplatesResponse> {
        self.client.execute(action: "DescribeAIAnalysisTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取音视频内容分析模板列表
    ///
    /// 根据音视频内容分析模板唯一标识，获取音视频内容分析模板详情列表。返回结果包含符合条件的所有用户自定义音视频内容分析模板及[系统预置音视频内容分析模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.A7.86.E9.A2.91.E5.86.85.E5.AE.B9.E5.88.86.E6.9E.90.E6.A8.A1.E6.9D.BF)。
    @inlinable
    public func describeAIAnalysisTemplates(_ input: DescribeAIAnalysisTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIAnalysisTemplatesResponse {
        try await self.client.execute(action: "DescribeAIAnalysisTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取音视频内容分析模板列表
    ///
    /// 根据音视频内容分析模板唯一标识，获取音视频内容分析模板详情列表。返回结果包含符合条件的所有用户自定义音视频内容分析模板及[系统预置音视频内容分析模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.A7.86.E9.A2.91.E5.86.85.E5.AE.B9.E5.88.86.E6.9E.90.E6.A8.A1.E6.9D.BF)。
    @inlinable
    public func describeAIAnalysisTemplates(subAppId: UInt64? = nil, definitions: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIAnalysisTemplatesResponse> {
        self.describeAIAnalysisTemplates(.init(subAppId: subAppId, definitions: definitions, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取音视频内容分析模板列表
    ///
    /// 根据音视频内容分析模板唯一标识，获取音视频内容分析模板详情列表。返回结果包含符合条件的所有用户自定义音视频内容分析模板及[系统预置音视频内容分析模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.A7.86.E9.A2.91.E5.86.85.E5.AE.B9.E5.88.86.E6.9E.90.E6.A8.A1.E6.9D.BF)。
    @inlinable
    public func describeAIAnalysisTemplates(subAppId: UInt64? = nil, definitions: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIAnalysisTemplatesResponse {
        try await self.describeAIAnalysisTemplates(.init(subAppId: subAppId, definitions: definitions, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取音视频内容分析模板列表
    ///
    /// 根据音视频内容分析模板唯一标识，获取音视频内容分析模板详情列表。返回结果包含符合条件的所有用户自定义音视频内容分析模板及[系统预置音视频内容分析模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.A7.86.E9.A2.91.E5.86.85.E5.AE.B9.E5.88.86.E6.9E.90.E6.A8.A1.E6.9D.BF)。
    @inlinable
    public func describeAIAnalysisTemplatesPaginated(_ input: DescribeAIAnalysisTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AIAnalysisTemplateItem])> {
        self.client.paginate(input: input, region: region, command: self.describeAIAnalysisTemplates, logger: logger, on: eventLoop)
    }

    /// 获取音视频内容分析模板列表
    ///
    /// 根据音视频内容分析模板唯一标识，获取音视频内容分析模板详情列表。返回结果包含符合条件的所有用户自定义音视频内容分析模板及[系统预置音视频内容分析模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.A7.86.E9.A2.91.E5.86.85.E5.AE.B9.E5.88.86.E6.9E.90.E6.A8.A1.E6.9D.BF)。
    @inlinable @discardableResult
    public func describeAIAnalysisTemplatesPaginated(_ input: DescribeAIAnalysisTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAIAnalysisTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAIAnalysisTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取音视频内容分析模板列表
    ///
    /// 根据音视频内容分析模板唯一标识，获取音视频内容分析模板详情列表。返回结果包含符合条件的所有用户自定义音视频内容分析模板及[系统预置音视频内容分析模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.A7.86.E9.A2.91.E5.86.85.E5.AE.B9.E5.88.86.E6.9E.90.E6.A8.A1.E6.9D.BF)。
    ///
    /// - Returns: `AsyncSequence`s of `AIAnalysisTemplateItem` and `DescribeAIAnalysisTemplatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAIAnalysisTemplatesPaginator(_ input: DescribeAIAnalysisTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAIAnalysisTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAIAnalysisTemplates, logger: logger, on: eventLoop)
    }
}
