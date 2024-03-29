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

extension Pts {
    /// DescribeScenarios请求参数结构体
    public struct DescribeScenariosRequest: TCPaginatedRequest {
        /// 场景ID数组
        public let scenarioIds: [String]?

        /// 场景名
        public let scenarioName: String?

        /// 场景状态数组
        public let scenarioStatus: [Int64]?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认为20，最大为100
        public let limit: Int64?

        /// 排序的列
        public let orderBy: String?

        /// 是否正序
        public let ascend: Bool?

        /// 项目ID数组
        public let projectIds: [String]?

        /// 场景类型
        public let scenarioType: String?

        public init(scenarioIds: [String]? = nil, scenarioName: String? = nil, scenarioStatus: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, ascend: Bool? = nil, projectIds: [String]? = nil, scenarioType: String? = nil) {
            self.scenarioIds = scenarioIds
            self.scenarioName = scenarioName
            self.scenarioStatus = scenarioStatus
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
            self.ascend = ascend
            self.projectIds = projectIds
            self.scenarioType = scenarioType
        }

        enum CodingKeys: String, CodingKey {
            case scenarioIds = "ScenarioIds"
            case scenarioName = "ScenarioName"
            case scenarioStatus = "ScenarioStatus"
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
            case ascend = "Ascend"
            case projectIds = "ProjectIds"
            case scenarioType = "ScenarioType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeScenariosResponse) -> DescribeScenariosRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(scenarioIds: self.scenarioIds, scenarioName: self.scenarioName, scenarioStatus: self.scenarioStatus, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderBy: self.orderBy, ascend: self.ascend, projectIds: self.projectIds, scenarioType: self.scenarioType)
        }
    }

    /// DescribeScenarios返回参数结构体
    public struct DescribeScenariosResponse: TCPaginatedResponse {
        /// 场景列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scenarioSet: [Scenario]?

        /// 场景总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scenarioSet = "ScenarioSet"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Scenario`` list from the paginated response.
        public func getItems() -> [Scenario] {
            self.scenarioSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询场景列表
    @inlinable
    public func describeScenarios(_ input: DescribeScenariosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScenariosResponse> {
        self.client.execute(action: "DescribeScenarios", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询场景列表
    @inlinable
    public func describeScenarios(_ input: DescribeScenariosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScenariosResponse {
        try await self.client.execute(action: "DescribeScenarios", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询场景列表
    @inlinable
    public func describeScenarios(scenarioIds: [String]? = nil, scenarioName: String? = nil, scenarioStatus: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, ascend: Bool? = nil, projectIds: [String]? = nil, scenarioType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScenariosResponse> {
        self.describeScenarios(.init(scenarioIds: scenarioIds, scenarioName: scenarioName, scenarioStatus: scenarioStatus, offset: offset, limit: limit, orderBy: orderBy, ascend: ascend, projectIds: projectIds, scenarioType: scenarioType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询场景列表
    @inlinable
    public func describeScenarios(scenarioIds: [String]? = nil, scenarioName: String? = nil, scenarioStatus: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, ascend: Bool? = nil, projectIds: [String]? = nil, scenarioType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScenariosResponse {
        try await self.describeScenarios(.init(scenarioIds: scenarioIds, scenarioName: scenarioName, scenarioStatus: scenarioStatus, offset: offset, limit: limit, orderBy: orderBy, ascend: ascend, projectIds: projectIds, scenarioType: scenarioType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询场景列表
    @inlinable
    public func describeScenariosPaginated(_ input: DescribeScenariosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Scenario])> {
        self.client.paginate(input: input, region: region, command: self.describeScenarios, logger: logger, on: eventLoop)
    }

    /// 查询场景列表
    @inlinable @discardableResult
    public func describeScenariosPaginated(_ input: DescribeScenariosRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScenariosResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeScenarios, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询场景列表
    ///
    /// - Returns: `AsyncSequence`s of ``Scenario`` and ``DescribeScenariosResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeScenariosPaginator(_ input: DescribeScenariosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScenariosRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeScenarios, logger: logger, on: eventLoop)
    }
}
