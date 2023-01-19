//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Ssa {
    /// DescribeSafetyEventList请求参数结构体
    public struct DescribeSafetyEventListRequest: TCRequestModel {
        /// 搜索过滤查询参数
        public let filter: String

        /// 限制数目
        public let limit: UInt64

        /// 页偏移
        public let offset: UInt64

        /// 排序列名
        public let order: String?

        /// 排序升降：desc-降序 asc-升序
        public let by: String?

        /// 开始查询时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date?

        /// 结束查询时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        /// 是否过滤响应时间
        public let isFilterResponseTime: Bool?

        public init(filter: String, limit: UInt64, offset: UInt64, order: String? = nil, by: String? = nil, startTime: Date? = nil, endTime: Date? = nil, isFilterResponseTime: Bool? = nil) {
            self.filter = filter
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.isFilterResponseTime = isFilterResponseTime
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case isFilterResponseTime = "IsFilterResponseTime"
        }
    }

    /// DescribeSafetyEventList返回参数结构体
    public struct DescribeSafetyEventListResponse: TCResponseModel {
        /// 事件列表
        public let list: [DataEvent]

        /// 事件总条数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 获取安全事件列表
    @inlinable
    public func describeSafetyEventList(_ input: DescribeSafetyEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSafetyEventListResponse> {
        self.client.execute(action: "DescribeSafetyEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取安全事件列表
    @inlinable
    public func describeSafetyEventList(_ input: DescribeSafetyEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSafetyEventListResponse {
        try await self.client.execute(action: "DescribeSafetyEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取安全事件列表
    @inlinable
    public func describeSafetyEventList(filter: String, limit: UInt64, offset: UInt64, order: String? = nil, by: String? = nil, startTime: Date? = nil, endTime: Date? = nil, isFilterResponseTime: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSafetyEventListResponse> {
        self.describeSafetyEventList(DescribeSafetyEventListRequest(filter: filter, limit: limit, offset: offset, order: order, by: by, startTime: startTime, endTime: endTime, isFilterResponseTime: isFilterResponseTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取安全事件列表
    @inlinable
    public func describeSafetyEventList(filter: String, limit: UInt64, offset: UInt64, order: String? = nil, by: String? = nil, startTime: Date? = nil, endTime: Date? = nil, isFilterResponseTime: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSafetyEventListResponse {
        try await self.describeSafetyEventList(DescribeSafetyEventListRequest(filter: filter, limit: limit, offset: offset, order: order, by: by, startTime: startTime, endTime: endTime, isFilterResponseTime: isFilterResponseTime), region: region, logger: logger, on: eventLoop)
    }
}
