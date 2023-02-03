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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Wedata {
    /// DescribeTaskReportDetailList请求参数结构体
    public struct DescribeTaskReportDetailListRequest: TCRequestModel {
        /// WeData项目id
        public let projectId: String

        /// 任务Id
        public let taskId: String

        /// 统计周期的开始日期，格式为 yyyy-MM-dd
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var beginDate: Date

        /// 统计周期的结束日期，格式为 yyyy-MM-dd
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        /// 任务状态，多个状态用逗号连接
        public let stateList: String?

        /// 排序字段名
        public let sortItem: String?

        /// 升序或降序，传ASC或DESC
        public let sortType: String?

        /// 页数，从1开始
        public let pageIndex: UInt64?

        /// 每页的记录条数，默认10条
        public let pageSize: UInt64?

        public init(projectId: String, taskId: String, beginDate: Date, endDate: Date, stateList: String? = nil, sortItem: String? = nil, sortType: String? = nil, pageIndex: UInt64? = nil, pageSize: UInt64? = nil) {
            self.projectId = projectId
            self.taskId = taskId
            self._beginDate = .init(wrappedValue: beginDate)
            self._endDate = .init(wrappedValue: endDate)
            self.stateList = stateList
            self.sortItem = sortItem
            self.sortType = sortType
            self.pageIndex = pageIndex
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskId = "TaskId"
            case beginDate = "BeginDate"
            case endDate = "EndDate"
            case stateList = "StateList"
            case sortItem = "SortItem"
            case sortType = "SortType"
            case pageIndex = "PageIndex"
            case pageSize = "PageSize"
        }
    }

    /// DescribeTaskReportDetailList返回参数结构体
    public struct DescribeTaskReportDetailListResponse: TCResponseModel {
        /// 页码，从1开始
        public let pageIndex: UInt64

        /// 每页的记录数
        public let pageSize: UInt64

        /// 总记录数
        public let totalCount: UInt64

        /// 总页数
        public let totalPage: UInt64

        /// 任务运行指标
        public let items: [TaskReportDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pageIndex = "PageIndex"
            case pageSize = "PageSize"
            case totalCount = "TotalCount"
            case totalPage = "TotalPage"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 离线任务周期统计明细
    @inlinable
    public func describeTaskReportDetailList(_ input: DescribeTaskReportDetailListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskReportDetailListResponse> {
        self.client.execute(action: "DescribeTaskReportDetailList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 离线任务周期统计明细
    @inlinable
    public func describeTaskReportDetailList(_ input: DescribeTaskReportDetailListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskReportDetailListResponse {
        try await self.client.execute(action: "DescribeTaskReportDetailList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 离线任务周期统计明细
    @inlinable
    public func describeTaskReportDetailList(projectId: String, taskId: String, beginDate: Date, endDate: Date, stateList: String? = nil, sortItem: String? = nil, sortType: String? = nil, pageIndex: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskReportDetailListResponse> {
        let input = DescribeTaskReportDetailListRequest(projectId: projectId, taskId: taskId, beginDate: beginDate, endDate: endDate, stateList: stateList, sortItem: sortItem, sortType: sortType, pageIndex: pageIndex, pageSize: pageSize)
        return self.client.execute(action: "DescribeTaskReportDetailList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 离线任务周期统计明细
    @inlinable
    public func describeTaskReportDetailList(projectId: String, taskId: String, beginDate: Date, endDate: Date, stateList: String? = nil, sortItem: String? = nil, sortType: String? = nil, pageIndex: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskReportDetailListResponse {
        let input = DescribeTaskReportDetailListRequest(projectId: projectId, taskId: taskId, beginDate: beginDate, endDate: endDate, stateList: stateList, sortItem: sortItem, sortType: sortType, pageIndex: pageIndex, pageSize: pageSize)
        return try await self.client.execute(action: "DescribeTaskReportDetailList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
