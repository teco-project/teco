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

extension Vm {
    /// DescribeTasks请求参数结构体
    public struct DescribeTasksRequest: TCRequestModel {
        /// 该参数表示任务列表每页展示的任务条数，**默认值为10**（每页展示10条任务）。
        public let limit: Int64?

        /// 该参数表示任务筛选器的输入参数，可根据业务类型、审核文件类型、处理建议及任务状态筛选想要查看的审核任务，具体参数内容请参见TaskFilter数据结构的详细描述。
        public let filter: TaskFilter?

        /// 该参数表示翻页时使用的Token信息，由系统自动生成，并在翻页时向下一个生成的页面传递此参数，以方便快速翻页功能的实现。当到最后一页时，该字段为空。
        public let pageToken: String?

        /// 该参数表示任务列表的开始时间，格式为ISO8601标准的时间戳。**默认值为最近3天**，若传入该参数，则在这一时间到EndTime之间的任务将会被筛选出来。<br>备注：该参数与Filter共同起到任务筛选作用，二者作用无先后顺序。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 该参数表示任务列表的结束时间，格式为ISO8601标准的时间戳。**默认值为空**，若传入该参数，则在这StartTime到这一时间之间的任务将会被筛选出来。<br>备注：该参数与Filter共同起到任务筛选作用，二者作用无先后顺序。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        public init(limit: Int64? = nil, filter: TaskFilter? = nil, pageToken: String? = nil, startTime: Date? = nil, endTime: Date? = nil) {
            self.limit = limit
            self.filter = filter
            self.pageToken = pageToken
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case filter = "Filter"
            case pageToken = "PageToken"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeTasks返回参数结构体
    public struct DescribeTasksResponse: TCResponseModel {
        /// 该字段用于返回当前查询的任务总量，格式为int字符串。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: String?

        /// 该字段用于返回当前页的任务详细数据，具体输出内容请参见TaskData数据结构的详细描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TaskData]?

        /// 该字段用于返回翻页时使用的Token信息，由系统自动生成，并在翻页时向下一个生成的页面传递此参数，以方便快速翻页功能的实现。当到最后一页时，该字段为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageToken: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case data = "Data"
            case pageToken = "PageToken"
            case requestId = "RequestId"
        }
    }

    /// 查看审核任务列表
    ///
    /// 通过查看审核任务列表接口，可查询任务队列；您可根据多种业务信息（业务类型、审核结果、任务状态等）筛选审核任务列表。<br>
    ///
    /// 默认接口请求频率限制：**20次/秒**。
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看审核任务列表
    ///
    /// 通过查看审核任务列表接口，可查询任务队列；您可根据多种业务信息（业务类型、审核结果、任务状态等）筛选审核任务列表。<br>
    ///
    /// 默认接口请求频率限制：**20次/秒**。
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看审核任务列表
    ///
    /// 通过查看审核任务列表接口，可查询任务队列；您可根据多种业务信息（业务类型、审核结果、任务状态等）筛选审核任务列表。<br>
    ///
    /// 默认接口请求频率限制：**20次/秒**。
    @inlinable
    public func describeTasks(limit: Int64? = nil, filter: TaskFilter? = nil, pageToken: String? = nil, startTime: Date? = nil, endTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        let input = DescribeTasksRequest(limit: limit, filter: filter, pageToken: pageToken, startTime: startTime, endTime: endTime)
        return self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看审核任务列表
    ///
    /// 通过查看审核任务列表接口，可查询任务队列；您可根据多种业务信息（业务类型、审核结果、任务状态等）筛选审核任务列表。<br>
    ///
    /// 默认接口请求频率限制：**20次/秒**。
    @inlinable
    public func describeTasks(limit: Int64? = nil, filter: TaskFilter? = nil, pageToken: String? = nil, startTime: Date? = nil, endTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        let input = DescribeTasksRequest(limit: limit, filter: filter, pageToken: pageToken, startTime: startTime, endTime: endTime)
        return try await self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
