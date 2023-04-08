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

import Logging
import NIOCore
import TecoCore

extension Cfw {
    /// DescribeBlockByIpTimesList请求参数结构体
    public struct DescribeBlockByIpTimesListRequest: TCRequestModel {
        /// 开始时间
        public let startTime: String

        /// 结束时间
        public let endTime: String

        /// ip查询条件
        public let ip: String

        /// 地域
        public let zone: String?

        /// 方向
        public let direction: String?

        /// 来源
        public let source: String?

        /// vpc间防火墙开关边id
        public let edgeId: String?

        /// 日志来源 move：vpc间防火墙
        public let logSource: String?

        public init(startTime: String, endTime: String, ip: String, zone: String? = nil, direction: String? = nil, source: String? = nil, edgeId: String? = nil, logSource: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.ip = ip
            self.zone = zone
            self.direction = direction
            self.source = source
            self.edgeId = edgeId
            self.logSource = logSource
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case ip = "Ip"
            case zone = "Zone"
            case direction = "Direction"
            case source = "Source"
            case edgeId = "EdgeId"
            case logSource = "LogSource"
        }
    }

    /// DescribeBlockByIpTimesList返回参数结构体
    public struct DescribeBlockByIpTimesListResponse: TCResponseModel {
        /// 返回数据
        public let data: [IpStatic]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 告警中心阻断IP折线图
    ///
    /// DescribeBlockByIpTimesList 告警中心阻断IP折线图
    @inlinable
    public func describeBlockByIpTimesList(_ input: DescribeBlockByIpTimesListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlockByIpTimesListResponse> {
        self.client.execute(action: "DescribeBlockByIpTimesList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 告警中心阻断IP折线图
    ///
    /// DescribeBlockByIpTimesList 告警中心阻断IP折线图
    @inlinable
    public func describeBlockByIpTimesList(_ input: DescribeBlockByIpTimesListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlockByIpTimesListResponse {
        try await self.client.execute(action: "DescribeBlockByIpTimesList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 告警中心阻断IP折线图
    ///
    /// DescribeBlockByIpTimesList 告警中心阻断IP折线图
    @inlinable
    public func describeBlockByIpTimesList(startTime: String, endTime: String, ip: String, zone: String? = nil, direction: String? = nil, source: String? = nil, edgeId: String? = nil, logSource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlockByIpTimesListResponse> {
        self.describeBlockByIpTimesList(.init(startTime: startTime, endTime: endTime, ip: ip, zone: zone, direction: direction, source: source, edgeId: edgeId, logSource: logSource), region: region, logger: logger, on: eventLoop)
    }

    /// 告警中心阻断IP折线图
    ///
    /// DescribeBlockByIpTimesList 告警中心阻断IP折线图
    @inlinable
    public func describeBlockByIpTimesList(startTime: String, endTime: String, ip: String, zone: String? = nil, direction: String? = nil, source: String? = nil, edgeId: String? = nil, logSource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlockByIpTimesListResponse {
        try await self.describeBlockByIpTimesList(.init(startTime: startTime, endTime: endTime, ip: ip, zone: zone, direction: direction, source: source, edgeId: edgeId, logSource: logSource), region: region, logger: logger, on: eventLoop)
    }
}
