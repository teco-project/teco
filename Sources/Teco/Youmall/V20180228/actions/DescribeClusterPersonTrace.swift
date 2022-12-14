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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Youmall {
    /// DescribeClusterPersonTrace请求参数结构体
    public struct DescribeClusterPersonTraceRequest: TCRequestModel {
        /// 卖场编码
        public let mallId: String

        /// 客户编码
        public let personId: String

        /// 查询开始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date

        public init(mallId: String, personId: String, startTime: Date, endTime: Date) {
            self.mallId = mallId
            self.personId = personId
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case mallId = "MallId"
            case personId = "PersonId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeClusterPersonTrace返回参数结构体
    public struct DescribeClusterPersonTraceResponse: TCResponseModel {
        /// 卖场系统编码
        public let mallId: String

        /// 卖场用户编码
        public let mallCode: String

        /// 客户编码
        public let personId: String

        /// 轨迹序列
        public let tracePointSet: [DailyTracePoint]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case mallId = "MallId"
            case mallCode = "MallCode"
            case personId = "PersonId"
            case tracePointSet = "TracePointSet"
            case requestId = "RequestId"
        }
    }

    /// 查询客户单次到场轨迹（按天聚合）
    ///
    /// 输出开始时间到结束时间段内的进出场数据。按天聚合的情况下，每天多次进出场算一次，以最初进场时间为进场时间，最后离场时间为离场时间。
    @inlinable
    public func describeClusterPersonTrace(_ input: DescribeClusterPersonTraceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeClusterPersonTraceResponse > {
        self.client.execute(action: "DescribeClusterPersonTrace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询客户单次到场轨迹（按天聚合）
    ///
    /// 输出开始时间到结束时间段内的进出场数据。按天聚合的情况下，每天多次进出场算一次，以最初进场时间为进场时间，最后离场时间为离场时间。
    @inlinable
    public func describeClusterPersonTrace(_ input: DescribeClusterPersonTraceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterPersonTraceResponse {
        try await self.client.execute(action: "DescribeClusterPersonTrace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询客户单次到场轨迹（按天聚合）
    ///
    /// 输出开始时间到结束时间段内的进出场数据。按天聚合的情况下，每天多次进出场算一次，以最初进场时间为进场时间，最后离场时间为离场时间。
    @inlinable
    public func describeClusterPersonTrace(mallId: String, personId: String, startTime: Date, endTime: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeClusterPersonTraceResponse > {
        self.describeClusterPersonTrace(DescribeClusterPersonTraceRequest(mallId: mallId, personId: personId, startTime: startTime, endTime: endTime), logger: logger, on: eventLoop)
    }

    /// 查询客户单次到场轨迹（按天聚合）
    ///
    /// 输出开始时间到结束时间段内的进出场数据。按天聚合的情况下，每天多次进出场算一次，以最初进场时间为进场时间，最后离场时间为离场时间。
    @inlinable
    public func describeClusterPersonTrace(mallId: String, personId: String, startTime: Date, endTime: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterPersonTraceResponse {
        try await self.describeClusterPersonTrace(DescribeClusterPersonTraceRequest(mallId: mallId, personId: personId, startTime: startTime, endTime: endTime), logger: logger, on: eventLoop)
    }
}
