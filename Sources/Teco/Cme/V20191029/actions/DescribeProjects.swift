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

extension Cme {
    /// DescribeProjects请求参数结构体
    public struct DescribeProjectsRequest: TCPaginatedRequest {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 项目 Id 过滤参数列表，最大支持20个项目 Id 过滤。如果不填不需要项目 Id 进行过滤。
        public let projectIds: [String]?

        /// 画布宽高比过滤参数列表。如果不填则不用画布宽高比进行过滤。
        public let aspectRatioSet: [String]?

        /// 项目类型过滤参数列表，取值有：
        /// <li>VIDEO_EDIT：视频编辑。</li>
        /// <li>SWITCHER：导播台。</li>
        /// <li>VIDEO_SEGMENTATION：视频拆条。</li>
        /// <li>STREAM_CONNECT：云转推。</li>
        /// <li>RECORD_REPLAY：录制回放。</li>
        ///
        /// 注：如果不填则不使用项目类型进行过滤。
        public let categorySet: [String]?

        /// 项目模式过滤参数列表，一个项目可以有多种模式并相互切换。
        /// 当 Category 为 VIDEO_EDIT 时，可选模式有：
        /// <li>Default：默认模式。</li>
        /// <li>VideoEditTemplate：视频编辑模板制作模式。</li>
        ///
        /// 注：不填不使用项目模式进行过滤。
        public let modes: [String]?

        /// 结果排序方式，支持下列排序字段：
        /// <li>CreateTime：创建时间；</li>
        /// <li>UpdateTime：更新时间。</li>
        ///
        /// 注：如不填，则使用项目创建时间倒序排列。
        public let sort: SortBy?

        /// 项目所有者，目前仅支持个人项目过滤。
        public let owner: Entity?

        /// 分页返回的起始偏移量，默认值：0。
        public let offset: UInt64?

        /// 分页返回的记录条数，默认值：10。
        public let limit: UInt64?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以查询一切用户项目信息。如果指定操作者，则操作者必须为项目所有者。
        public let `operator`: String?

        public init(platform: String, projectIds: [String]? = nil, aspectRatioSet: [String]? = nil, categorySet: [String]? = nil, modes: [String]? = nil, sort: SortBy? = nil, owner: Entity? = nil, offset: UInt64? = nil, limit: UInt64? = nil, operator: String? = nil) {
            self.platform = platform
            self.projectIds = projectIds
            self.aspectRatioSet = aspectRatioSet
            self.categorySet = categorySet
            self.modes = modes
            self.sort = sort
            self.owner = owner
            self.offset = offset
            self.limit = limit
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case projectIds = "ProjectIds"
            case aspectRatioSet = "AspectRatioSet"
            case categorySet = "CategorySet"
            case modes = "Modes"
            case sort = "Sort"
            case owner = "Owner"
            case offset = "Offset"
            case limit = "Limit"
            case `operator` = "Operator"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeProjectsResponse) -> DescribeProjectsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProjectsRequest(platform: self.platform, projectIds: self.projectIds, aspectRatioSet: self.aspectRatioSet, categorySet: self.categorySet, modes: self.modes, sort: self.sort, owner: self.owner, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, operator: self.operator)
        }
    }

    /// DescribeProjects返回参数结构体
    public struct DescribeProjectsResponse: TCPaginatedResponse {
        /// 符合条件的记录总数。
        public let totalCount: UInt64

        /// 项目信息列表。
        public let projectInfoSet: [ProjectInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case projectInfoSet = "ProjectInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ProjectInfo] {
            self.projectInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取项目列表
    ///
    /// 支持根据多种条件过滤出项目列表。
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectsResponse> {
        self.client.execute(action: "DescribeProjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取项目列表
    ///
    /// 支持根据多种条件过滤出项目列表。
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectsResponse {
        try await self.client.execute(action: "DescribeProjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取项目列表
    ///
    /// 支持根据多种条件过滤出项目列表。
    @inlinable
    public func describeProjects(platform: String, projectIds: [String]? = nil, aspectRatioSet: [String]? = nil, categorySet: [String]? = nil, modes: [String]? = nil, sort: SortBy? = nil, owner: Entity? = nil, offset: UInt64? = nil, limit: UInt64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectsResponse> {
        let input = DescribeProjectsRequest(platform: platform, projectIds: projectIds, aspectRatioSet: aspectRatioSet, categorySet: categorySet, modes: modes, sort: sort, owner: owner, offset: offset, limit: limit, operator: `operator`)
        return self.client.execute(action: "DescribeProjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取项目列表
    ///
    /// 支持根据多种条件过滤出项目列表。
    @inlinable
    public func describeProjects(platform: String, projectIds: [String]? = nil, aspectRatioSet: [String]? = nil, categorySet: [String]? = nil, modes: [String]? = nil, sort: SortBy? = nil, owner: Entity? = nil, offset: UInt64? = nil, limit: UInt64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectsResponse {
        let input = DescribeProjectsRequest(platform: platform, projectIds: projectIds, aspectRatioSet: aspectRatioSet, categorySet: categorySet, modes: modes, sort: sort, owner: owner, offset: offset, limit: limit, operator: `operator`)
        return try await self.client.execute(action: "DescribeProjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取项目列表
    ///
    /// 支持根据多种条件过滤出项目列表。
    @inlinable
    public func describeProjectsPaginated(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProjectInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeProjects, logger: logger, on: eventLoop)
    }

    /// 获取项目列表
    ///
    /// 支持根据多种条件过滤出项目列表。
    @inlinable @discardableResult
    public func describeProjectsPaginated(_ input: DescribeProjectsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProjectsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProjects, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取项目列表
    ///
    /// 支持根据多种条件过滤出项目列表。
    @inlinable
    public func describeProjectsPaginator(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeProjectsRequest, DescribeProjectsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeProjectsRequest, DescribeProjectsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProjects, logger: logger, on: eventLoop)
    }
}
