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

extension Tcss {
    /// DescribeVulTendency请求参数结构体
    public struct DescribeVulTendencyRequest: TCRequestModel {
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

        /// 枚举类型：
        /// LATEST：最新版本
        /// CONTAINER: 运行容器
        public let sphereOfInfluence: String

        public init(startTime: Date, endTime: Date, sphereOfInfluence: String) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.sphereOfInfluence = sphereOfInfluence
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case sphereOfInfluence = "SphereOfInfluence"
        }
    }

    /// DescribeVulTendency返回参数结构体
    public struct DescribeVulTendencyResponse: TCResponseModel {
        /// 漏洞趋势列表
        public let vulTendencySet: [VulTendencyInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vulTendencySet = "VulTendencySet"
            case requestId = "RequestId"
        }
    }

    /// 查询漏洞风险趋势
    ///
    /// 查询本地镜像、仓库镜像中严重&高危的漏洞趋势
    @inlinable
    public func describeVulTendency(_ input: DescribeVulTendencyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulTendencyResponse> {
        self.client.execute(action: "DescribeVulTendency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞风险趋势
    ///
    /// 查询本地镜像、仓库镜像中严重&高危的漏洞趋势
    @inlinable
    public func describeVulTendency(_ input: DescribeVulTendencyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulTendencyResponse {
        try await self.client.execute(action: "DescribeVulTendency", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞风险趋势
    ///
    /// 查询本地镜像、仓库镜像中严重&高危的漏洞趋势
    @inlinable
    public func describeVulTendency(startTime: Date, endTime: Date, sphereOfInfluence: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulTendencyResponse> {
        self.describeVulTendency(DescribeVulTendencyRequest(startTime: startTime, endTime: endTime, sphereOfInfluence: sphereOfInfluence), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞风险趋势
    ///
    /// 查询本地镜像、仓库镜像中严重&高危的漏洞趋势
    @inlinable
    public func describeVulTendency(startTime: Date, endTime: Date, sphereOfInfluence: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulTendencyResponse {
        try await self.describeVulTendency(DescribeVulTendencyRequest(startTime: startTime, endTime: endTime, sphereOfInfluence: sphereOfInfluence), region: region, logger: logger, on: eventLoop)
    }
}
