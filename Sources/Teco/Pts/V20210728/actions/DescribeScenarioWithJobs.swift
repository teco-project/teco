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

extension Pts {
    /// DescribeScenarioWithJobs请求参数结构体
    public struct DescribeScenarioWithJobsRequest: TCPaginatedRequest {
        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认为20，最大为100
        public let limit: Int64?

        /// 项目ID数组
        public let projectIds: [String]?

        /// 场景ID数组
        public let scenarioIds: [String]?

        /// 场景名
        public let scenarioName: String?

        /// 场景状态数组
        public let scenarioStatus: Int64?

        /// 排序的列
        public let orderBy: String?

        /// 是否正序
        public let ascend: Bool?

        /// job相关参数
        public let scenarioRelatedJobsParams: ScenarioRelatedJobsParams?

        /// 是否需要返回场景的脚本内容
        public let ignoreScript: Bool?

        /// 是否需要返回测试数据文件信息
        public let ignoreDataset: Bool?

        /// 场景类型，如pts-http, pts-js, pts-trpc, pts-jmeter
        public let scenarioType: String?

        /// 创建人员
        public let owner: String?

        public init(offset: Int64? = nil, limit: Int64? = nil, projectIds: [String]? = nil, scenarioIds: [String]? = nil, scenarioName: String? = nil, scenarioStatus: Int64? = nil, orderBy: String? = nil, ascend: Bool? = nil, scenarioRelatedJobsParams: ScenarioRelatedJobsParams? = nil, ignoreScript: Bool? = nil, ignoreDataset: Bool? = nil, scenarioType: String? = nil, owner: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.projectIds = projectIds
            self.scenarioIds = scenarioIds
            self.scenarioName = scenarioName
            self.scenarioStatus = scenarioStatus
            self.orderBy = orderBy
            self.ascend = ascend
            self.scenarioRelatedJobsParams = scenarioRelatedJobsParams
            self.ignoreScript = ignoreScript
            self.ignoreDataset = ignoreDataset
            self.scenarioType = scenarioType
            self.owner = owner
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case projectIds = "ProjectIds"
            case scenarioIds = "ScenarioIds"
            case scenarioName = "ScenarioName"
            case scenarioStatus = "ScenarioStatus"
            case orderBy = "OrderBy"
            case ascend = "Ascend"
            case scenarioRelatedJobsParams = "ScenarioRelatedJobsParams"
            case ignoreScript = "IgnoreScript"
            case ignoreDataset = "IgnoreDataset"
            case scenarioType = "ScenarioType"
            case owner = "Owner"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeScenarioWithJobsResponse) -> DescribeScenarioWithJobsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeScenarioWithJobsRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, projectIds: self.projectIds, scenarioIds: self.scenarioIds, scenarioName: self.scenarioName, scenarioStatus: self.scenarioStatus, orderBy: self.orderBy, ascend: self.ascend, scenarioRelatedJobsParams: self.scenarioRelatedJobsParams, ignoreScript: self.ignoreScript, ignoreDataset: self.ignoreDataset, scenarioType: self.scenarioType, owner: self.owner)
        }
    }

    /// DescribeScenarioWithJobs返回参数结构体
    public struct DescribeScenarioWithJobsResponse: TCPaginatedResponse {
        /// 场景配置以及附带的job内容
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scenarioWithJobsSet: [ScenarioWithJobs]?

        /// 场景总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scenarioWithJobsSet = "ScenarioWithJobsSet"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ScenarioWithJobs`` list from the paginated response.
        public func getItems() -> [ScenarioWithJobs] {
            self.scenarioWithJobsSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询场景及对应的任务
    ///
    /// 查询场景配置并附带已经执行的任务内容
    @inlinable
    public func describeScenarioWithJobs(_ input: DescribeScenarioWithJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScenarioWithJobsResponse> {
        self.client.execute(action: "DescribeScenarioWithJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询场景及对应的任务
    ///
    /// 查询场景配置并附带已经执行的任务内容
    @inlinable
    public func describeScenarioWithJobs(_ input: DescribeScenarioWithJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScenarioWithJobsResponse {
        try await self.client.execute(action: "DescribeScenarioWithJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询场景及对应的任务
    ///
    /// 查询场景配置并附带已经执行的任务内容
    @inlinable
    public func describeScenarioWithJobs(offset: Int64? = nil, limit: Int64? = nil, projectIds: [String]? = nil, scenarioIds: [String]? = nil, scenarioName: String? = nil, scenarioStatus: Int64? = nil, orderBy: String? = nil, ascend: Bool? = nil, scenarioRelatedJobsParams: ScenarioRelatedJobsParams? = nil, ignoreScript: Bool? = nil, ignoreDataset: Bool? = nil, scenarioType: String? = nil, owner: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScenarioWithJobsResponse> {
        self.describeScenarioWithJobs(.init(offset: offset, limit: limit, projectIds: projectIds, scenarioIds: scenarioIds, scenarioName: scenarioName, scenarioStatus: scenarioStatus, orderBy: orderBy, ascend: ascend, scenarioRelatedJobsParams: scenarioRelatedJobsParams, ignoreScript: ignoreScript, ignoreDataset: ignoreDataset, scenarioType: scenarioType, owner: owner), region: region, logger: logger, on: eventLoop)
    }

    /// 查询场景及对应的任务
    ///
    /// 查询场景配置并附带已经执行的任务内容
    @inlinable
    public func describeScenarioWithJobs(offset: Int64? = nil, limit: Int64? = nil, projectIds: [String]? = nil, scenarioIds: [String]? = nil, scenarioName: String? = nil, scenarioStatus: Int64? = nil, orderBy: String? = nil, ascend: Bool? = nil, scenarioRelatedJobsParams: ScenarioRelatedJobsParams? = nil, ignoreScript: Bool? = nil, ignoreDataset: Bool? = nil, scenarioType: String? = nil, owner: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScenarioWithJobsResponse {
        try await self.describeScenarioWithJobs(.init(offset: offset, limit: limit, projectIds: projectIds, scenarioIds: scenarioIds, scenarioName: scenarioName, scenarioStatus: scenarioStatus, orderBy: orderBy, ascend: ascend, scenarioRelatedJobsParams: scenarioRelatedJobsParams, ignoreScript: ignoreScript, ignoreDataset: ignoreDataset, scenarioType: scenarioType, owner: owner), region: region, logger: logger, on: eventLoop)
    }

    /// 查询场景及对应的任务
    ///
    /// 查询场景配置并附带已经执行的任务内容
    @inlinable
    public func describeScenarioWithJobsPaginated(_ input: DescribeScenarioWithJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ScenarioWithJobs])> {
        self.client.paginate(input: input, region: region, command: self.describeScenarioWithJobs, logger: logger, on: eventLoop)
    }

    /// 查询场景及对应的任务
    ///
    /// 查询场景配置并附带已经执行的任务内容
    @inlinable @discardableResult
    public func describeScenarioWithJobsPaginated(_ input: DescribeScenarioWithJobsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScenarioWithJobsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeScenarioWithJobs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询场景及对应的任务
    ///
    /// 查询场景配置并附带已经执行的任务内容
    ///
    /// - Returns: `AsyncSequence`s of ``ScenarioWithJobs`` and ``DescribeScenarioWithJobsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeScenarioWithJobsPaginator(_ input: DescribeScenarioWithJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScenarioWithJobsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeScenarioWithJobs, logger: logger, on: eventLoop)
    }
}
