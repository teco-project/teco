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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Cvm {
    /// DescribeTaskInfo请求参数结构体
    public struct DescribeTaskInfoRequest: TCPaginatedRequest {
        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64

        /// 按照指定的产品类型查询，支持取值：
        ///
        /// - `CVM`：云服务器
        /// - `CDH`：专用宿主机
        /// - `CPM2.0`：裸金属云服务器
        ///
        /// 未传入或为空时，默认查询全部产品类型。
        public let product: String?

        /// 按照一个或多个任务状态ID进行过滤。
        /// `TaskStatus`（任务状态ID）与任务状态中文名的对应关系如下：
        ///
        /// - `1`：待授权
        /// - `2`：处理中
        /// - `3`：已结束
        /// - `4`：已预约
        /// - `5`：已取消
        /// - `6`：已避免
        ///
        /// 各任务状态的具体含义，可参考 [任务状态](https://cloud.tencent.com/document/product/213/67789#.E4.BB.BB.E5.8A.A1.E7.8A.B6.E6.80.81)。
        public let taskStatus: [Int64]?

        /// 按照一个或多个任务类型ID进行过滤。
        ///
        /// `TaskTypeId`（任务类型ID）与任务类型中文名的对应关系如下：
        ///
        /// - `101`：实例运行隐患
        /// - `102`：实例运行异常
        /// - `103`：实例硬盘异常
        /// - `104`：实例网络连接异常
        /// - `105`：实例运行预警
        /// - `106`：实例硬盘预警
        /// - `107`：实例维护升级
        ///
        /// 各任务类型的具体含义，可参考 [维修任务分类](https://cloud.tencent.com/document/product/213/67789#.E7.BB.B4.E4.BF.AE.E4.BB.BB.E5.8A.A1.E5.88.86.E7.B1.BB)。
        public let taskTypeIds: [Int64]?

        /// 按照一个或者多个任务ID查询。任务ID形如：`rep-xxxxxxxx`。
        public let taskIds: [String]?

        /// 按照一个或者多个实例ID查询。实例ID形如：`ins-xxxxxxxx`。
        public let instanceIds: [String]?

        /// 按照一个或者多个实例名称查询。
        public let aliases: [String]?

        /// 时间查询区间的起始位置，会根据任务创建时间`CreateTime`进行过滤。未传入时默认为当天`00:00:00`。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startDate: Date?

        /// 时间查询区间的终止位置，会根据任务创建时间`CreateTime`进行过滤。未传入时默认为当前时刻。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endDate: Date?

        /// 指定返回维修任务列表的排序字段，目前支持：
        ///
        /// - `CreateTime`：任务创建时间
        /// - `AuthTime`：任务授权时间
        /// - `EndTime`：任务结束时间
        ///
        /// 未传入时或为空时，默认按`CreateTime`字段进行排序。
        public let orderField: String?

        /// 排序方式，目前支持：
        ///
        /// - `0`：升序（默认）
        /// - `1`：降序
        ///
        /// 未传入或为空时，默认按升序排序。
        public let order: Int64?

        public init(limit: Int64, offset: Int64, product: String? = nil, taskStatus: [Int64]? = nil, taskTypeIds: [Int64]? = nil, taskIds: [String]? = nil, instanceIds: [String]? = nil, aliases: [String]? = nil, startDate: Date? = nil, endDate: Date? = nil, orderField: String? = nil, order: Int64? = nil) {
            self.limit = limit
            self.offset = offset
            self.product = product
            self.taskStatus = taskStatus
            self.taskTypeIds = taskTypeIds
            self.taskIds = taskIds
            self.instanceIds = instanceIds
            self.aliases = aliases
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
            self.orderField = orderField
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case product = "Product"
            case taskStatus = "TaskStatus"
            case taskTypeIds = "TaskTypeIds"
            case taskIds = "TaskIds"
            case instanceIds = "InstanceIds"
            case aliases = "Aliases"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case orderField = "OrderField"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTaskInfoResponse) -> DescribeTaskInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(limit: self.limit, offset: self.offset + .init(response.getItems().count), product: self.product, taskStatus: self.taskStatus, taskTypeIds: self.taskTypeIds, taskIds: self.taskIds, instanceIds: self.instanceIds, aliases: self.aliases, startDate: self.startDate, endDate: self.endDate, orderField: self.orderField, order: self.order)
        }
    }

    /// DescribeTaskInfo返回参数结构体
    public struct DescribeTaskInfoResponse: TCPaginatedResponse {
        /// 查询返回的维修任务总数量。
        public let totalCount: Int64

        /// 查询返回的维修任务列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let repairTaskInfoSet: [RepairTaskInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case repairTaskInfoSet = "RepairTaskInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RepairTaskInfo`` list from the paginated response.
        public func getItems() -> [RepairTaskInfo] {
            self.repairTaskInfoSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询维修任务列表
    ///
    /// 本接口 (DescribeTaskInfo) 用于查询云服务器维修任务列表及详细信息。
    ///
    /// - 可以根据实例ID、实例名称或任务状态等信息来查询维修任务列表。过滤信息详情可参考入参说明。
    /// - 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的维修任务列表。
    @inlinable
    public func describeTaskInfo(_ input: DescribeTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskInfoResponse> {
        self.client.execute(action: "DescribeTaskInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询维修任务列表
    ///
    /// 本接口 (DescribeTaskInfo) 用于查询云服务器维修任务列表及详细信息。
    ///
    /// - 可以根据实例ID、实例名称或任务状态等信息来查询维修任务列表。过滤信息详情可参考入参说明。
    /// - 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的维修任务列表。
    @inlinable
    public func describeTaskInfo(_ input: DescribeTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInfoResponse {
        try await self.client.execute(action: "DescribeTaskInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询维修任务列表
    ///
    /// 本接口 (DescribeTaskInfo) 用于查询云服务器维修任务列表及详细信息。
    ///
    /// - 可以根据实例ID、实例名称或任务状态等信息来查询维修任务列表。过滤信息详情可参考入参说明。
    /// - 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的维修任务列表。
    @inlinable
    public func describeTaskInfo(limit: Int64, offset: Int64, product: String? = nil, taskStatus: [Int64]? = nil, taskTypeIds: [Int64]? = nil, taskIds: [String]? = nil, instanceIds: [String]? = nil, aliases: [String]? = nil, startDate: Date? = nil, endDate: Date? = nil, orderField: String? = nil, order: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskInfoResponse> {
        self.describeTaskInfo(.init(limit: limit, offset: offset, product: product, taskStatus: taskStatus, taskTypeIds: taskTypeIds, taskIds: taskIds, instanceIds: instanceIds, aliases: aliases, startDate: startDate, endDate: endDate, orderField: orderField, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询维修任务列表
    ///
    /// 本接口 (DescribeTaskInfo) 用于查询云服务器维修任务列表及详细信息。
    ///
    /// - 可以根据实例ID、实例名称或任务状态等信息来查询维修任务列表。过滤信息详情可参考入参说明。
    /// - 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的维修任务列表。
    @inlinable
    public func describeTaskInfo(limit: Int64, offset: Int64, product: String? = nil, taskStatus: [Int64]? = nil, taskTypeIds: [Int64]? = nil, taskIds: [String]? = nil, instanceIds: [String]? = nil, aliases: [String]? = nil, startDate: Date? = nil, endDate: Date? = nil, orderField: String? = nil, order: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInfoResponse {
        try await self.describeTaskInfo(.init(limit: limit, offset: offset, product: product, taskStatus: taskStatus, taskTypeIds: taskTypeIds, taskIds: taskIds, instanceIds: instanceIds, aliases: aliases, startDate: startDate, endDate: endDate, orderField: orderField, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询维修任务列表
    ///
    /// 本接口 (DescribeTaskInfo) 用于查询云服务器维修任务列表及详细信息。
    ///
    /// - 可以根据实例ID、实例名称或任务状态等信息来查询维修任务列表。过滤信息详情可参考入参说明。
    /// - 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的维修任务列表。
    @inlinable
    public func describeTaskInfoPaginated(_ input: DescribeTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RepairTaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTaskInfo, logger: logger, on: eventLoop)
    }

    /// 查询维修任务列表
    ///
    /// 本接口 (DescribeTaskInfo) 用于查询云服务器维修任务列表及详细信息。
    ///
    /// - 可以根据实例ID、实例名称或任务状态等信息来查询维修任务列表。过滤信息详情可参考入参说明。
    /// - 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的维修任务列表。
    @inlinable @discardableResult
    public func describeTaskInfoPaginated(_ input: DescribeTaskInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTaskInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTaskInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询维修任务列表
    ///
    /// 本接口 (DescribeTaskInfo) 用于查询云服务器维修任务列表及详细信息。
    ///
    /// - 可以根据实例ID、实例名称或任务状态等信息来查询维修任务列表。过滤信息详情可参考入参说明。
    /// - 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的维修任务列表。
    ///
    /// - Returns: `AsyncSequence`s of ``RepairTaskInfo`` and ``DescribeTaskInfoResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTaskInfoPaginator(_ input: DescribeTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTaskInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTaskInfo, logger: logger, on: eventLoop)
    }
}
