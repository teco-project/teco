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

extension Cme {
    /// SearchMaterial请求参数结构体
    public struct SearchMaterialRequest: TCPaginatedRequest {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 指定搜索空间，数组长度不得超过5。
        public let searchScopes: [SearchScope]

        /// 媒体类型，可取值有：
        /// <li>AUDIO：音频；</li>
        /// <li>VIDEO：视频 ；</li>
        /// <li>IMAGE：图片；</li>
        /// <li>VIDEO_EDIT_TEMPLATE：剪辑模板。</li>
        public let materialTypes: [String]?

        /// 搜索文本，模糊匹配媒体名称或描述信息，匹配项越多，匹配度越高，排序越优先。长度限制：15个字符。
        public let text: String?

        /// 按画质检索，取值为：LD/SD/HD/FHD/2K/4K。
        public let resolution: String?

        /// 按媒体时长检索，单位s。
        public let durationRange: IntegerRange?

        /// 按照媒体创建时间检索。
        public let createTimeRange: TimeRange?

        /// 按标签检索，填入检索的标签名。
        public let tags: [String]?

        /// 排序方式。Sort.Field 可选值：CreateTime。指定 Text 搜索时，将根据匹配度排序，该字段无效。
        public let sort: SortBy?

        /// 偏移量。默认值：0。
        public let offset: Int64?

        /// 返回记录条数，默认值：50。
        public let limit: Int64?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以搜索任意媒体的信息。如果指定操作者，则操作者必须对媒体有读权限。
        public let `operator`: String?

        public init(platform: String, searchScopes: [SearchScope], materialTypes: [String]? = nil, text: String? = nil, resolution: String? = nil, durationRange: IntegerRange? = nil, createTimeRange: TimeRange? = nil, tags: [String]? = nil, sort: SortBy? = nil, offset: Int64? = nil, limit: Int64? = nil, operator: String? = nil) {
            self.platform = platform
            self.searchScopes = searchScopes
            self.materialTypes = materialTypes
            self.text = text
            self.resolution = resolution
            self.durationRange = durationRange
            self.createTimeRange = createTimeRange
            self.tags = tags
            self.sort = sort
            self.offset = offset
            self.limit = limit
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case searchScopes = "SearchScopes"
            case materialTypes = "MaterialTypes"
            case text = "Text"
            case resolution = "Resolution"
            case durationRange = "DurationRange"
            case createTimeRange = "CreateTimeRange"
            case tags = "Tags"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
            case `operator` = "Operator"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: SearchMaterialResponse) -> SearchMaterialRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return SearchMaterialRequest(platform: self.platform, searchScopes: self.searchScopes, materialTypes: self.materialTypes, text: self.text, resolution: self.resolution, durationRange: self.durationRange, createTimeRange: self.createTimeRange, tags: self.tags, sort: self.sort, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, operator: self.operator)
        }
    }

    /// SearchMaterial返回参数结构体
    public struct SearchMaterialResponse: TCPaginatedResponse {
        /// 符合记录总条数。
        public let totalCount: Int64

        /// 媒体信息，仅返回基础信息。
        public let materialInfoSet: [MaterialInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case materialInfoSet = "MaterialInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``MaterialInfo`` list from the paginated response.
        public func getItems() -> [MaterialInfo] {
            self.materialInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 搜索媒体
    ///
    /// 根据检索条件搜索媒体，返回媒体的基本信息。
    @inlinable
    public func searchMaterial(_ input: SearchMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchMaterialResponse> {
        self.client.execute(action: "SearchMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索媒体
    ///
    /// 根据检索条件搜索媒体，返回媒体的基本信息。
    @inlinable
    public func searchMaterial(_ input: SearchMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchMaterialResponse {
        try await self.client.execute(action: "SearchMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索媒体
    ///
    /// 根据检索条件搜索媒体，返回媒体的基本信息。
    @inlinable
    public func searchMaterial(platform: String, searchScopes: [SearchScope], materialTypes: [String]? = nil, text: String? = nil, resolution: String? = nil, durationRange: IntegerRange? = nil, createTimeRange: TimeRange? = nil, tags: [String]? = nil, sort: SortBy? = nil, offset: Int64? = nil, limit: Int64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchMaterialResponse> {
        self.searchMaterial(.init(platform: platform, searchScopes: searchScopes, materialTypes: materialTypes, text: text, resolution: resolution, durationRange: durationRange, createTimeRange: createTimeRange, tags: tags, sort: sort, offset: offset, limit: limit, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索媒体
    ///
    /// 根据检索条件搜索媒体，返回媒体的基本信息。
    @inlinable
    public func searchMaterial(platform: String, searchScopes: [SearchScope], materialTypes: [String]? = nil, text: String? = nil, resolution: String? = nil, durationRange: IntegerRange? = nil, createTimeRange: TimeRange? = nil, tags: [String]? = nil, sort: SortBy? = nil, offset: Int64? = nil, limit: Int64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchMaterialResponse {
        try await self.searchMaterial(.init(platform: platform, searchScopes: searchScopes, materialTypes: materialTypes, text: text, resolution: resolution, durationRange: durationRange, createTimeRange: createTimeRange, tags: tags, sort: sort, offset: offset, limit: limit, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索媒体
    ///
    /// 根据检索条件搜索媒体，返回媒体的基本信息。
    @inlinable
    public func searchMaterialPaginated(_ input: SearchMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MaterialInfo])> {
        self.client.paginate(input: input, region: region, command: self.searchMaterial, logger: logger, on: eventLoop)
    }

    /// 搜索媒体
    ///
    /// 根据检索条件搜索媒体，返回媒体的基本信息。
    @inlinable @discardableResult
    public func searchMaterialPaginated(_ input: SearchMaterialRequest, region: TCRegion? = nil, onResponse: @escaping (SearchMaterialResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.searchMaterial, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 搜索媒体
    ///
    /// 根据检索条件搜索媒体，返回媒体的基本信息。
    ///
    /// - Returns: `AsyncSequence`s of ``MaterialInfo`` and ``SearchMaterialResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func searchMaterialPaginator(_ input: SearchMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<SearchMaterialRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.searchMaterial, logger: logger, on: eventLoop)
    }
}
