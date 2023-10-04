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
    /// DescribeAlertRecords请求参数结构体
    public struct DescribeAlertRecordsRequest: TCPaginatedRequest {
        /// 项目 ID 列表
        public let projectIds: [String]

        /// 场景 ID 列表
        public let scenarioIds: [String]?

        /// 任务 ID 列表
        public let jobIds: [String]?

        /// 是否正序
        public let ascend: Bool?

        /// 排序项
        public let orderBy: String?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为20，最大为100
        public let limit: UInt64?

        /// 按场景名筛选
        public let scenarioNames: [String]?

        public init(projectIds: [String], scenarioIds: [String]? = nil, jobIds: [String]? = nil, ascend: Bool? = nil, orderBy: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, scenarioNames: [String]? = nil) {
            self.projectIds = projectIds
            self.scenarioIds = scenarioIds
            self.jobIds = jobIds
            self.ascend = ascend
            self.orderBy = orderBy
            self.offset = offset
            self.limit = limit
            self.scenarioNames = scenarioNames
        }

        enum CodingKeys: String, CodingKey {
            case projectIds = "ProjectIds"
            case scenarioIds = "ScenarioIds"
            case jobIds = "JobIds"
            case ascend = "Ascend"
            case orderBy = "OrderBy"
            case offset = "Offset"
            case limit = "Limit"
            case scenarioNames = "ScenarioNames"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAlertRecordsResponse) -> DescribeAlertRecordsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(projectIds: self.projectIds, scenarioIds: self.scenarioIds, jobIds: self.jobIds, ascend: self.ascend, orderBy: self.orderBy, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, scenarioNames: self.scenarioNames)
        }
    }

    /// DescribeAlertRecords返回参数结构体
    public struct DescribeAlertRecordsResponse: TCPaginatedResponse {
        /// 告警历史
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alertRecordSet: [AlertRecord]?

        /// 告警历史记录的总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alertRecordSet = "AlertRecordSet"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AlertRecord`` list from the paginated response.
        public func getItems() -> [AlertRecord] {
            self.alertRecordSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询告警历史
    ///
    /// 返回告警历史项的列表
    @inlinable
    public func describeAlertRecords(_ input: DescribeAlertRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlertRecordsResponse> {
        self.client.execute(action: "DescribeAlertRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询告警历史
    ///
    /// 返回告警历史项的列表
    @inlinable
    public func describeAlertRecords(_ input: DescribeAlertRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlertRecordsResponse {
        try await self.client.execute(action: "DescribeAlertRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询告警历史
    ///
    /// 返回告警历史项的列表
    @inlinable
    public func describeAlertRecords(projectIds: [String], scenarioIds: [String]? = nil, jobIds: [String]? = nil, ascend: Bool? = nil, orderBy: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, scenarioNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlertRecordsResponse> {
        self.describeAlertRecords(.init(projectIds: projectIds, scenarioIds: scenarioIds, jobIds: jobIds, ascend: ascend, orderBy: orderBy, offset: offset, limit: limit, scenarioNames: scenarioNames), region: region, logger: logger, on: eventLoop)
    }

    /// 查询告警历史
    ///
    /// 返回告警历史项的列表
    @inlinable
    public func describeAlertRecords(projectIds: [String], scenarioIds: [String]? = nil, jobIds: [String]? = nil, ascend: Bool? = nil, orderBy: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, scenarioNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlertRecordsResponse {
        try await self.describeAlertRecords(.init(projectIds: projectIds, scenarioIds: scenarioIds, jobIds: jobIds, ascend: ascend, orderBy: orderBy, offset: offset, limit: limit, scenarioNames: scenarioNames), region: region, logger: logger, on: eventLoop)
    }

    /// 查询告警历史
    ///
    /// 返回告警历史项的列表
    @inlinable
    public func describeAlertRecordsPaginated(_ input: DescribeAlertRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AlertRecord])> {
        self.client.paginate(input: input, region: region, command: self.describeAlertRecords, logger: logger, on: eventLoop)
    }

    /// 查询告警历史
    ///
    /// 返回告警历史项的列表
    @inlinable @discardableResult
    public func describeAlertRecordsPaginated(_ input: DescribeAlertRecordsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAlertRecordsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAlertRecords, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询告警历史
    ///
    /// 返回告警历史项的列表
    ///
    /// - Returns: `AsyncSequence`s of ``AlertRecord`` and ``DescribeAlertRecordsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAlertRecordsPaginator(_ input: DescribeAlertRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAlertRecordsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAlertRecords, logger: logger, on: eventLoop)
    }
}
