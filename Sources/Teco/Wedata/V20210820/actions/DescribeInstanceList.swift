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

extension Wedata {
    /// DescribeInstanceList请求参数结构体
    public struct DescribeInstanceListRequest: TCPaginatedRequest {
        /// 项目/工作空间id
        public let projectId: String

        /// 页码
        public let pageIndex: Int64

        /// 一页展示的条数
        public let pageSize: Int64

        /// 周期列表（如天，一次性），可选
        public let cycleList: [String]

        /// 责任人
        public let ownerList: [String]

        /// 跟之前保持一致
        public let instanceType: String

        /// 排序顺序（asc，desc）
        public let sort: String

        /// 排序列（costTime 运行耗时，startTime 开始时间，state 实例状态，curRunDate 数据时间）
        public let sortCol: String

        /// 类型列表（如python任务类型：30
        /// pyspark任务类型：31
        /// hivesql任务类型：34
        /// shell任务类型：35
        /// sparksql任务类型：36 jdbcsql任务类型：21 dlc任务类型：32），可选
        public let taskTypeList: [Int64]

        /// 状态列表（如成功 2，正在执行 1），可选
        public let stateList: [Int64]

        /// 任务名称
        public let keyword: String?

        public init(projectId: String, pageIndex: Int64, pageSize: Int64, cycleList: [String], ownerList: [String], instanceType: String, sort: String, sortCol: String, taskTypeList: [Int64], stateList: [Int64], keyword: String? = nil) {
            self.projectId = projectId
            self.pageIndex = pageIndex
            self.pageSize = pageSize
            self.cycleList = cycleList
            self.ownerList = ownerList
            self.instanceType = instanceType
            self.sort = sort
            self.sortCol = sortCol
            self.taskTypeList = taskTypeList
            self.stateList = stateList
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageIndex = "PageIndex"
            case pageSize = "PageSize"
            case cycleList = "CycleList"
            case ownerList = "OwnerList"
            case instanceType = "InstanceType"
            case sort = "Sort"
            case sortCol = "SortCol"
            case taskTypeList = "TaskTypeList"
            case stateList = "StateList"
            case keyword = "Keyword"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstanceListResponse) -> DescribeInstanceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(projectId: self.projectId, pageIndex: self.pageIndex + 1, pageSize: self.pageSize, cycleList: self.cycleList, ownerList: self.ownerList, instanceType: self.instanceType, sort: self.sort, sortCol: self.sortCol, taskTypeList: self.taskTypeList, stateList: self.stateList, keyword: self.keyword)
        }
    }

    /// DescribeInstanceList返回参数结构体
    public struct DescribeInstanceListResponse: TCPaginatedResponse {
        /// 结果
        public let data: String

        /// 实例列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceList: [InstanceList]?

        /// 总条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case instanceList = "InstanceList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``InstanceList`` list from the paginated response.
        public func getItems() -> [InstanceList] {
            self.instanceList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取离线运维实例列表
    ///
    /// 获取实例列表
    @inlinable
    public func describeInstanceList(_ input: DescribeInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceListResponse> {
        self.client.execute(action: "DescribeInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取离线运维实例列表
    ///
    /// 获取实例列表
    @inlinable
    public func describeInstanceList(_ input: DescribeInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceListResponse {
        try await self.client.execute(action: "DescribeInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取离线运维实例列表
    ///
    /// 获取实例列表
    @inlinable
    public func describeInstanceList(projectId: String, pageIndex: Int64, pageSize: Int64, cycleList: [String], ownerList: [String], instanceType: String, sort: String, sortCol: String, taskTypeList: [Int64], stateList: [Int64], keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceListResponse> {
        self.describeInstanceList(.init(projectId: projectId, pageIndex: pageIndex, pageSize: pageSize, cycleList: cycleList, ownerList: ownerList, instanceType: instanceType, sort: sort, sortCol: sortCol, taskTypeList: taskTypeList, stateList: stateList, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 获取离线运维实例列表
    ///
    /// 获取实例列表
    @inlinable
    public func describeInstanceList(projectId: String, pageIndex: Int64, pageSize: Int64, cycleList: [String], ownerList: [String], instanceType: String, sort: String, sortCol: String, taskTypeList: [Int64], stateList: [Int64], keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceListResponse {
        try await self.describeInstanceList(.init(projectId: projectId, pageIndex: pageIndex, pageSize: pageSize, cycleList: cycleList, ownerList: ownerList, instanceType: instanceType, sort: sort, sortCol: sortCol, taskTypeList: taskTypeList, stateList: stateList, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 获取离线运维实例列表
    ///
    /// 获取实例列表
    @inlinable
    public func describeInstanceListPaginated(_ input: DescribeInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceList])> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceList, logger: logger, on: eventLoop)
    }

    /// 获取离线运维实例列表
    ///
    /// 获取实例列表
    @inlinable @discardableResult
    public func describeInstanceListPaginated(_ input: DescribeInstanceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstanceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取离线运维实例列表
    ///
    /// 获取实例列表
    ///
    /// - Returns: `AsyncSequence`s of ``InstanceList`` and ``DescribeInstanceListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstanceListPaginator(_ input: DescribeInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstanceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstanceList, logger: logger, on: eventLoop)
    }
}
