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

import TecoCore

extension Eb {
    /// DescribeLogTagValue请求参数结构体
    public struct DescribeLogTagValueRequest: TCRequestModel {
        /// 起始时间
        public let startTime: Int64

        /// 结束时间
        public let endTime: Int64

        /// 事件集ID
        public let eventBusId: String

        /// 聚合字段
        public let groupField: String

        /// 页数
        public let page: Int64

        /// 每页数据大小
        public let limit: Int64

        /// 筛选条件
        public let filter: [LogFilter]?

        public init(startTime: Int64, endTime: Int64, eventBusId: String, groupField: String, page: Int64, limit: Int64, filter: [LogFilter]? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.eventBusId = eventBusId
            self.groupField = groupField
            self.page = page
            self.limit = limit
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case eventBusId = "EventBusId"
            case groupField = "GroupField"
            case page = "Page"
            case limit = "Limit"
            case filter = "Filter"
        }
    }

    /// DescribeLogTagValue返回参数结构体
    public struct DescribeLogTagValueResponse: TCResponseModel {
        /// 索引检索维度值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case results = "Results"
            case requestId = "RequestId"
        }
    }

    /// 查询日志索引维度值
    @inlinable
    public func describeLogTagValue(_ input: DescribeLogTagValueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogTagValueResponse> {
        self.client.execute(action: "DescribeLogTagValue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询日志索引维度值
    @inlinable
    public func describeLogTagValue(_ input: DescribeLogTagValueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogTagValueResponse {
        try await self.client.execute(action: "DescribeLogTagValue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询日志索引维度值
    @inlinable
    public func describeLogTagValue(startTime: Int64, endTime: Int64, eventBusId: String, groupField: String, page: Int64, limit: Int64, filter: [LogFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogTagValueResponse> {
        self.describeLogTagValue(.init(startTime: startTime, endTime: endTime, eventBusId: eventBusId, groupField: groupField, page: page, limit: limit, filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 查询日志索引维度值
    @inlinable
    public func describeLogTagValue(startTime: Int64, endTime: Int64, eventBusId: String, groupField: String, page: Int64, limit: Int64, filter: [LogFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogTagValueResponse {
        try await self.describeLogTagValue(.init(startTime: startTime, endTime: endTime, eventBusId: eventBusId, groupField: groupField, page: page, limit: limit, filter: filter), region: region, logger: logger, on: eventLoop)
    }
}
