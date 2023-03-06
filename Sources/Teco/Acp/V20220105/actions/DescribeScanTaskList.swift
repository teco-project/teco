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

extension Acp {
    /// DescribeScanTaskList请求参数结构体
    public struct DescribeScanTaskListRequest: TCPaginatedRequest {
        /// 任务来源, -1:所有, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
        public let source: Int64

        /// 应用平台, 0:android, 1:ios, 2:小程序
        public let platform: Int64

        /// 任务状态,可多值查询,例如:"1,2,3" 0:默认值(待检测/待咨询), 1.检测中, 2:待评估, 3:评估中, 4:任务完成/咨询完成, 5:任务失败, 6:咨询中;
        public let taskStatuses: String

        /// 任务类型,可多值查询,采用逗号分隔,例如:"0,1" 0:基础版, 1:专家版, 2:本地化
        public let taskTypes: String

        /// 页码
        public let pageNo: Int64

        /// 页码大小
        public let pageSize: Int64

        /// 应用名称或小程序名称(可选参数)
        public let appName: String?

        /// 查询时间范围, 查询开始时间(2021-09-30 或 2021-09-30 10:57:34)
        public let startTime: String?

        /// 查询时间范围, 查询结束时间(2021-09-30 或 2021-09-30 10:57:34)
        public let endTime: String?

        public init(source: Int64, platform: Int64, taskStatuses: String, taskTypes: String, pageNo: Int64, pageSize: Int64, appName: String? = nil, startTime: String? = nil, endTime: String? = nil) {
            self.source = source
            self.platform = platform
            self.taskStatuses = taskStatuses
            self.taskTypes = taskTypes
            self.pageNo = pageNo
            self.pageSize = pageSize
            self.appName = appName
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case source = "Source"
            case platform = "Platform"
            case taskStatuses = "TaskStatuses"
            case taskTypes = "TaskTypes"
            case pageNo = "PageNo"
            case pageSize = "PageSize"
            case appName = "AppName"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeScanTaskListResponse) -> DescribeScanTaskListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeScanTaskListRequest(source: self.source, platform: self.platform, taskStatuses: self.taskStatuses, taskTypes: self.taskTypes, pageNo: self.pageNo + 1, pageSize: self.pageSize, appName: self.appName, startTime: self.startTime, endTime: self.endTime)
        }
    }

    /// DescribeScanTaskList返回参数结构体
    public struct DescribeScanTaskListResponse: TCPaginatedResponse {
        /// 返回值, 0:成功, 其他值请查看“返回值”定义
        public let result: Int64

        /// 任务总数量
        public let total: Int64

        /// 诊断任务数据列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [AppTaskData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case total = "Total"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AppTaskData] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取应用合规隐私诊断任务列表
    ///
    /// 获取App隐私合规诊断任务列表
    @inlinable
    public func describeScanTaskList(_ input: DescribeScanTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanTaskListResponse> {
        self.client.execute(action: "DescribeScanTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用合规隐私诊断任务列表
    ///
    /// 获取App隐私合规诊断任务列表
    @inlinable
    public func describeScanTaskList(_ input: DescribeScanTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanTaskListResponse {
        try await self.client.execute(action: "DescribeScanTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用合规隐私诊断任务列表
    ///
    /// 获取App隐私合规诊断任务列表
    @inlinable
    public func describeScanTaskList(source: Int64, platform: Int64, taskStatuses: String, taskTypes: String, pageNo: Int64, pageSize: Int64, appName: String? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanTaskListResponse> {
        let input = DescribeScanTaskListRequest(source: source, platform: platform, taskStatuses: taskStatuses, taskTypes: taskTypes, pageNo: pageNo, pageSize: pageSize, appName: appName, startTime: startTime, endTime: endTime)
        return self.client.execute(action: "DescribeScanTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用合规隐私诊断任务列表
    ///
    /// 获取App隐私合规诊断任务列表
    @inlinable
    public func describeScanTaskList(source: Int64, platform: Int64, taskStatuses: String, taskTypes: String, pageNo: Int64, pageSize: Int64, appName: String? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanTaskListResponse {
        let input = DescribeScanTaskListRequest(source: source, platform: platform, taskStatuses: taskStatuses, taskTypes: taskTypes, pageNo: pageNo, pageSize: pageSize, appName: appName, startTime: startTime, endTime: endTime)
        return try await self.client.execute(action: "DescribeScanTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用合规隐私诊断任务列表
    ///
    /// 获取App隐私合规诊断任务列表
    @inlinable
    public func describeScanTaskListPaginated(_ input: DescribeScanTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AppTaskData])> {
        self.client.paginate(input: input, region: region, command: self.describeScanTaskList, logger: logger, on: eventLoop)
    }

    /// 获取应用合规隐私诊断任务列表
    ///
    /// 获取App隐私合规诊断任务列表
    @inlinable @discardableResult
    public func describeScanTaskListPaginated(_ input: DescribeScanTaskListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScanTaskListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeScanTaskList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取应用合规隐私诊断任务列表
    ///
    /// 获取App隐私合规诊断任务列表
    ///
    /// - Returns: `AsyncSequence`s of `AppTaskData` and `DescribeScanTaskListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeScanTaskListPaginator(_ input: DescribeScanTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScanTaskListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeScanTaskList, logger: logger, on: eventLoop)
    }
}
