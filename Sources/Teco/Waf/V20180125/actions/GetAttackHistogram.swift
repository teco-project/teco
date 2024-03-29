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

extension Waf {
    /// GetAttackHistogram请求参数结构体
    public struct GetAttackHistogramRequest: TCRequest {
        /// 查询的域名，所有域名使用all
        public let domain: String

        /// 查询起始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// Lucene语法
        public let queryString: String

        public init(domain: String, startTime: Date, endTime: Date, queryString: String) {
            self.domain = domain
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.queryString = queryString
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case queryString = "QueryString"
        }
    }

    /// GetAttackHistogram返回参数结构体
    public struct GetAttackHistogramResponse: TCResponse {
        /// 统计详情
        public let data: [LogHistogramInfo]

        /// 时间段大小
        public let period: UInt64

        /// 统计的条目数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case period = "Period"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 攻击日志统计
    ///
    /// 生成攻击日志的产生时间柱状图
    @inlinable
    public func getAttackHistogram(_ input: GetAttackHistogramRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAttackHistogramResponse> {
        self.client.execute(action: "GetAttackHistogram", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 攻击日志统计
    ///
    /// 生成攻击日志的产生时间柱状图
    @inlinable
    public func getAttackHistogram(_ input: GetAttackHistogramRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAttackHistogramResponse {
        try await self.client.execute(action: "GetAttackHistogram", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 攻击日志统计
    ///
    /// 生成攻击日志的产生时间柱状图
    @inlinable
    public func getAttackHistogram(domain: String, startTime: Date, endTime: Date, queryString: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAttackHistogramResponse> {
        self.getAttackHistogram(.init(domain: domain, startTime: startTime, endTime: endTime, queryString: queryString), region: region, logger: logger, on: eventLoop)
    }

    /// 攻击日志统计
    ///
    /// 生成攻击日志的产生时间柱状图
    @inlinable
    public func getAttackHistogram(domain: String, startTime: Date, endTime: Date, queryString: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAttackHistogramResponse {
        try await self.getAttackHistogram(.init(domain: domain, startTime: startTime, endTime: endTime, queryString: queryString), region: region, logger: logger, on: eventLoop)
    }
}
