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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Cvm {
    /// DescribeLaunchTemplates请求参数结构体
    public struct DescribeLaunchTemplatesRequest: TCPaginatedRequest {
        /// 启动模板ID，一个或者多个启动模板ID。若未指定，则显示用户所有模板。
        public let launchTemplateIds: [String]?

        /// <p style="padding-left: 30px;">按照【<strong>LaunchTemplateName</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`LaunchTemplateIds`和`Filters`。
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        public init(launchTemplateIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.launchTemplateIds = launchTemplateIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case launchTemplateIds = "LaunchTemplateIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLaunchTemplatesResponse) -> DescribeLaunchTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLaunchTemplatesRequest(launchTemplateIds: self.launchTemplateIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeLaunchTemplates返回参数结构体
    public struct DescribeLaunchTemplatesResponse: TCPaginatedResponse {
        /// 符合条件的实例模板数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 实例详细信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let launchTemplateSet: [LaunchTemplateInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case launchTemplateSet = "LaunchTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LaunchTemplateInfo] {
            self.launchTemplateSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例启动模板
    ///
    /// 本接口（DescribeLaunchTemplates）用于查询一个或者多个实例启动模板。
    @inlinable
    public func describeLaunchTemplates(_ input: DescribeLaunchTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLaunchTemplatesResponse> {
        self.client.execute(action: "DescribeLaunchTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例启动模板
    ///
    /// 本接口（DescribeLaunchTemplates）用于查询一个或者多个实例启动模板。
    @inlinable
    public func describeLaunchTemplates(_ input: DescribeLaunchTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLaunchTemplatesResponse {
        try await self.client.execute(action: "DescribeLaunchTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例启动模板
    ///
    /// 本接口（DescribeLaunchTemplates）用于查询一个或者多个实例启动模板。
    @inlinable
    public func describeLaunchTemplates(launchTemplateIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLaunchTemplatesResponse> {
        self.describeLaunchTemplates(.init(launchTemplateIds: launchTemplateIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例启动模板
    ///
    /// 本接口（DescribeLaunchTemplates）用于查询一个或者多个实例启动模板。
    @inlinable
    public func describeLaunchTemplates(launchTemplateIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLaunchTemplatesResponse {
        try await self.describeLaunchTemplates(.init(launchTemplateIds: launchTemplateIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例启动模板
    ///
    /// 本接口（DescribeLaunchTemplates）用于查询一个或者多个实例启动模板。
    @inlinable
    public func describeLaunchTemplatesPaginated(_ input: DescribeLaunchTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [LaunchTemplateInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeLaunchTemplates, logger: logger, on: eventLoop)
    }

    /// 查询实例启动模板
    ///
    /// 本接口（DescribeLaunchTemplates）用于查询一个或者多个实例启动模板。
    @inlinable @discardableResult
    public func describeLaunchTemplatesPaginated(_ input: DescribeLaunchTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLaunchTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLaunchTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例启动模板
    ///
    /// 本接口（DescribeLaunchTemplates）用于查询一个或者多个实例启动模板。
    ///
    /// - Returns: `AsyncSequence`s of `LaunchTemplateInfo` and `DescribeLaunchTemplatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLaunchTemplatesPaginator(_ input: DescribeLaunchTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLaunchTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLaunchTemplates, logger: logger, on: eventLoop)
    }
}
