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

extension Tcss {
    /// DescribeImageRiskTendency请求参数结构体
    public struct DescribeImageRiskTendencyRequest: TCRequestModel {
        /// 开始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var startTime: Date

        /// 结束时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var endTime: Date

        public init(startTime: Date, endTime: Date) {
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeImageRiskTendency返回参数结构体
    public struct DescribeImageRiskTendencyResponse: TCResponseModel {
        /// 本地镜像新增风险趋势信息列表
        public let imageRiskTendencySet: [ImageRiskTendencyInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageRiskTendencySet = "ImageRiskTendencySet"
            case requestId = "RequestId"
        }
    }

    /// 查询容器安全本地镜像风险趋势
    @inlinable
    public func describeImageRiskTendency(_ input: DescribeImageRiskTendencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageRiskTendencyResponse > {
        self.client.execute(action: "DescribeImageRiskTendency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器安全本地镜像风险趋势
    @inlinable
    public func describeImageRiskTendency(_ input: DescribeImageRiskTendencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageRiskTendencyResponse {
        try await self.client.execute(action: "DescribeImageRiskTendency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器安全本地镜像风险趋势
    @inlinable
    public func describeImageRiskTendency(startTime: Date, endTime: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageRiskTendencyResponse > {
        self.describeImageRiskTendency(DescribeImageRiskTendencyRequest(startTime: startTime, endTime: endTime), logger: logger, on: eventLoop)
    }

    /// 查询容器安全本地镜像风险趋势
    @inlinable
    public func describeImageRiskTendency(startTime: Date, endTime: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageRiskTendencyResponse {
        try await self.describeImageRiskTendency(DescribeImageRiskTendencyRequest(startTime: startTime, endTime: endTime), logger: logger, on: eventLoop)
    }
}
