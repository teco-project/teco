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

extension Monitor {
    /// DescribeProductEventList请求参数结构体
    public struct DescribeProductEventListRequest: TCPaginatedRequest {
        /// 接口模块名，固定值"monitor"
        public let module: String

        /// 产品类型过滤，比如"cvm"表示云服务器
        public let productName: [String]?

        /// 事件名称过滤，比如"guest_reboot"表示机器重启
        public let eventName: [String]?

        /// 影响对象，比如"ins-19708ino"
        public let instanceId: [String]?

        /// 维度过滤，比如外网IP:10.0.0.1
        public let dimensions: [DescribeProductEventListDimensions]?

        /// 产品事件地域过滤参数，比如gz，各地域缩写可参见[地域列表](https://cloud.tencent.com/document/product/248/50863)
        public let regionList: [String]?

        /// 事件类型过滤，取值范围["status_change","abnormal"]，分别表示状态变更、异常事件
        public let type: [String]?

        /// 事件状态过滤，取值范围["recover","alarm","-"]，分别表示已恢复、未恢复、无状态
        public let status: [String]?

        /// 项目ID过滤
        public let project: [String]?

        /// 告警状态配置过滤，1表示已配置，0表示未配置
        public let isAlarmConfig: Int64?

        /// 按更新时间排序，ASC表示升序，DESC表示降序，默认DESC
        public let timeOrder: String?

        /// 起始时间，默认一天前的时间戳
        public let startTime: Int64?

        /// 结束时间，默认当前时间戳
        public let endTime: Int64?

        /// 页偏移量，默认0
        public let offset: Int64?

        /// 每页返回的数量，默认20
        public let limit: Int64?

        public init(module: String, productName: [String]? = nil, eventName: [String]? = nil, instanceId: [String]? = nil, dimensions: [DescribeProductEventListDimensions]? = nil, regionList: [String]? = nil, type: [String]? = nil, status: [String]? = nil, project: [String]? = nil, isAlarmConfig: Int64? = nil, timeOrder: String? = nil, startTime: Int64? = nil, endTime: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.module = module
            self.productName = productName
            self.eventName = eventName
            self.instanceId = instanceId
            self.dimensions = dimensions
            self.regionList = regionList
            self.type = type
            self.status = status
            self.project = project
            self.isAlarmConfig = isAlarmConfig
            self.timeOrder = timeOrder
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case productName = "ProductName"
            case eventName = "EventName"
            case instanceId = "InstanceId"
            case dimensions = "Dimensions"
            case regionList = "RegionList"
            case type = "Type"
            case status = "Status"
            case project = "Project"
            case isAlarmConfig = "IsAlarmConfig"
            case timeOrder = "TimeOrder"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProductEventListResponse) -> DescribeProductEventListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProductEventListRequest(module: self.module, productName: self.productName, eventName: self.eventName, instanceId: self.instanceId, dimensions: self.dimensions, regionList: self.regionList, type: self.type, status: self.status, project: self.project, isAlarmConfig: self.isAlarmConfig, timeOrder: self.timeOrder, startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeProductEventList返回参数结构体
    public struct DescribeProductEventListResponse: TCPaginatedResponse {
        /// 事件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let events: [DescribeProductEventListEvents]?

        /// 事件统计
        public let overView: DescribeProductEventListOverView

        /// 事件总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case events = "Events"
            case overView = "OverView"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DescribeProductEventListEvents] {
            self.events ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取产品事件列表
    ///
    /// 分页获取产品事件的列表
    @inlinable
    public func describeProductEventList(_ input: DescribeProductEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductEventListResponse> {
        self.client.execute(action: "DescribeProductEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品事件列表
    ///
    /// 分页获取产品事件的列表
    @inlinable
    public func describeProductEventList(_ input: DescribeProductEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductEventListResponse {
        try await self.client.execute(action: "DescribeProductEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品事件列表
    ///
    /// 分页获取产品事件的列表
    @inlinable
    public func describeProductEventList(module: String, productName: [String]? = nil, eventName: [String]? = nil, instanceId: [String]? = nil, dimensions: [DescribeProductEventListDimensions]? = nil, regionList: [String]? = nil, type: [String]? = nil, status: [String]? = nil, project: [String]? = nil, isAlarmConfig: Int64? = nil, timeOrder: String? = nil, startTime: Int64? = nil, endTime: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductEventListResponse> {
        let input = DescribeProductEventListRequest(module: module, productName: productName, eventName: eventName, instanceId: instanceId, dimensions: dimensions, regionList: regionList, type: type, status: status, project: project, isAlarmConfig: isAlarmConfig, timeOrder: timeOrder, startTime: startTime, endTime: endTime, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeProductEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品事件列表
    ///
    /// 分页获取产品事件的列表
    @inlinable
    public func describeProductEventList(module: String, productName: [String]? = nil, eventName: [String]? = nil, instanceId: [String]? = nil, dimensions: [DescribeProductEventListDimensions]? = nil, regionList: [String]? = nil, type: [String]? = nil, status: [String]? = nil, project: [String]? = nil, isAlarmConfig: Int64? = nil, timeOrder: String? = nil, startTime: Int64? = nil, endTime: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductEventListResponse {
        let input = DescribeProductEventListRequest(module: module, productName: productName, eventName: eventName, instanceId: instanceId, dimensions: dimensions, regionList: regionList, type: type, status: status, project: project, isAlarmConfig: isAlarmConfig, timeOrder: timeOrder, startTime: startTime, endTime: endTime, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeProductEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品事件列表
    ///
    /// 分页获取产品事件的列表
    @inlinable
    public func describeProductEventListPaginated(_ input: DescribeProductEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DescribeProductEventListEvents])> {
        self.client.paginate(input: input, region: region, command: self.describeProductEventList, logger: logger, on: eventLoop)
    }

    /// 获取产品事件列表
    ///
    /// 分页获取产品事件的列表
    @inlinable @discardableResult
    public func describeProductEventListPaginated(_ input: DescribeProductEventListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProductEventListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProductEventList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取产品事件列表
    ///
    /// 分页获取产品事件的列表
    ///
    /// - Returns: `AsyncSequence`s of `DescribeProductEventListEvents` and `DescribeProductEventListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProductEventListPaginator(_ input: DescribeProductEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProductEventListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProductEventList, logger: logger, on: eventLoop)
    }
}
