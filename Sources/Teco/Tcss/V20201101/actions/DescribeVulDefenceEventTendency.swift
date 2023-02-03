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

extension Tcss {
    /// DescribeVulDefenceEventTendency请求参数结构体
    public struct DescribeVulDefenceEventTendencyRequest: TCRequestModel {
        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endTime: Date

        public init(startTime: Date, endTime: Date) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeVulDefenceEventTendency返回参数结构体
    public struct DescribeVulDefenceEventTendencyResponse: TCResponseModel {
        /// 漏洞防御事件趋势
        public let defendedList: [VulDefenceEventTendency]

        /// 漏洞攻击事件趋势
        public let attackList: [VulDefenceEventTendency]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case defendedList = "DefendedList"
            case attackList = "AttackList"
            case requestId = "RequestId"
        }
    }

    /// 查询漏洞防御攻击事件趋势
    @inlinable
    public func describeVulDefenceEventTendency(_ input: DescribeVulDefenceEventTendencyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulDefenceEventTendencyResponse> {
        self.client.execute(action: "DescribeVulDefenceEventTendency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御攻击事件趋势
    @inlinable
    public func describeVulDefenceEventTendency(_ input: DescribeVulDefenceEventTendencyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDefenceEventTendencyResponse {
        try await self.client.execute(action: "DescribeVulDefenceEventTendency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞防御攻击事件趋势
    @inlinable
    public func describeVulDefenceEventTendency(startTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulDefenceEventTendencyResponse> {
        let input = DescribeVulDefenceEventTendencyRequest(startTime: startTime, endTime: endTime)
        return self.client.execute(action: "DescribeVulDefenceEventTendency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御攻击事件趋势
    @inlinable
    public func describeVulDefenceEventTendency(startTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDefenceEventTendencyResponse {
        let input = DescribeVulDefenceEventTendencyRequest(startTime: startTime, endTime: endTime)
        return try await self.client.execute(action: "DescribeVulDefenceEventTendency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
