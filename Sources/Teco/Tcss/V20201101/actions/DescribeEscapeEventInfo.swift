//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tcss {
    /// DescribeEscapeEventInfo请求参数结构体
    public struct DescribeEscapeEventInfoRequest: TCRequestModel {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤参数,Status：EVENT_UNDEAL:未处理，EVENT_DEALED:已处理，EVENT_INGNORE:忽略
        public let filters: [RunTimeFilters]?

        /// 升序降序,asc desc
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }
    }

    /// DescribeEscapeEventInfo返回参数结构体
    public struct DescribeEscapeEventInfoResponse: TCResponseModel {
        /// 逃逸事件数组
        public let eventSet: [EscapeEventInfo]

        /// 事件总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eventSet = "EventSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询容器逃逸事件列表
    ///
    /// DescribeEscapeEventInfo 查询容器逃逸事件列表
    @inlinable
    public func describeEscapeEventInfo(_ input: DescribeEscapeEventInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEscapeEventInfoResponse > {
        self.client.execute(action: "DescribeEscapeEventInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器逃逸事件列表
    ///
    /// DescribeEscapeEventInfo 查询容器逃逸事件列表
    @inlinable
    public func describeEscapeEventInfo(_ input: DescribeEscapeEventInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEscapeEventInfoResponse {
        try await self.client.execute(action: "DescribeEscapeEventInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器逃逸事件列表
    ///
    /// DescribeEscapeEventInfo 查询容器逃逸事件列表
    @inlinable
    public func describeEscapeEventInfo(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEscapeEventInfoResponse > {
        self.describeEscapeEventInfo(DescribeEscapeEventInfoRequest(limit: limit, offset: offset, filters: filters, order: order, by: by), logger: logger, on: eventLoop)
    }

    /// 查询容器逃逸事件列表
    ///
    /// DescribeEscapeEventInfo 查询容器逃逸事件列表
    @inlinable
    public func describeEscapeEventInfo(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEscapeEventInfoResponse {
        try await self.describeEscapeEventInfo(DescribeEscapeEventInfoRequest(limit: limit, offset: offset, filters: filters, order: order, by: by), logger: logger, on: eventLoop)
    }
}
