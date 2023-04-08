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
import TecoCore
import TecoDateHelpers

extension Tcss {
    /// DescribeEscapeEventTendency请求参数结构体
    public struct DescribeEscapeEventTendencyRequest: TCRequestModel {
        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endTime: Date

        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startTime: Date

        public init(endTime: Date, startTime: Date) {
            self._endTime = .init(wrappedValue: endTime)
            self._startTime = .init(wrappedValue: startTime)
        }

        enum CodingKeys: String, CodingKey {
            case endTime = "EndTime"
            case startTime = "StartTime"
        }
    }

    /// DescribeEscapeEventTendency返回参数结构体
    public struct DescribeEscapeEventTendencyResponse: TCResponseModel {
        /// 待处理逃逸事件趋势
        public let list: [EscapeEventTendencyInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 查询待处理逃逸事件趋势
    @inlinable
    public func describeEscapeEventTendency(_ input: DescribeEscapeEventTendencyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEscapeEventTendencyResponse> {
        self.client.execute(action: "DescribeEscapeEventTendency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询待处理逃逸事件趋势
    @inlinable
    public func describeEscapeEventTendency(_ input: DescribeEscapeEventTendencyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEscapeEventTendencyResponse {
        try await self.client.execute(action: "DescribeEscapeEventTendency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询待处理逃逸事件趋势
    @inlinable
    public func describeEscapeEventTendency(endTime: Date, startTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEscapeEventTendencyResponse> {
        self.describeEscapeEventTendency(.init(endTime: endTime, startTime: startTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询待处理逃逸事件趋势
    @inlinable
    public func describeEscapeEventTendency(endTime: Date, startTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEscapeEventTendencyResponse {
        try await self.describeEscapeEventTendency(.init(endTime: endTime, startTime: startTime), region: region, logger: logger, on: eventLoop)
    }
}
