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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Antiddos {
    /// DescribeBizHttpStatus请求参数结构体
    public struct DescribeBizHttpStatusRequest: TCRequestModel {
        /// 统计方式，仅支持sum
        public let statistics: String

        /// 大禹子产品代号（bgpip表示高防IP）
        public let business: String

        /// 统计周期，可取值60，300，1800，3600， 21600，86400，单位秒
        public let period: Int64

        /// 统计开始时间。 如2020-02-01 12:04:12
        public let startTime: String

        /// 统计结束时间。如2020-02-03 18:03:23
        public let endTime: String

        /// 资源Id
        public let id: String

        /// 特定域名查询
        public let domain: String?

        /// 协议及端口列表，协议可取值TCP, UDP, HTTP, HTTPS，仅统计纬度为连接数时有效
        public let protoInfo: [ProtocolPort]?

        public init(statistics: String, business: String, period: Int64, startTime: String, endTime: String, id: String, domain: String? = nil, protoInfo: [ProtocolPort]? = nil) {
            self.statistics = statistics
            self.business = business
            self.period = period
            self.startTime = startTime
            self.endTime = endTime
            self.id = id
            self.domain = domain
            self.protoInfo = protoInfo
        }

        enum CodingKeys: String, CodingKey {
            case statistics = "Statistics"
            case business = "Business"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case id = "Id"
            case domain = "Domain"
            case protoInfo = "ProtoInfo"
        }
    }

    /// DescribeBizHttpStatus返回参数结构体
    public struct DescribeBizHttpStatusResponse: TCResponseModel {
        /// 业务流量http状态码统计数据
        public let httpStatusMap: HttpStatusMap

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case httpStatusMap = "HttpStatusMap"
            case requestId = "RequestId"
        }
    }

    /// 获取业务流量状态码统计列表
    @inlinable
    public func describeBizHttpStatus(_ input: DescribeBizHttpStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBizHttpStatusResponse> {
        self.client.execute(action: "DescribeBizHttpStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取业务流量状态码统计列表
    @inlinable
    public func describeBizHttpStatus(_ input: DescribeBizHttpStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBizHttpStatusResponse {
        try await self.client.execute(action: "DescribeBizHttpStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取业务流量状态码统计列表
    @inlinable
    public func describeBizHttpStatus(statistics: String, business: String, period: Int64, startTime: String, endTime: String, id: String, domain: String? = nil, protoInfo: [ProtocolPort]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBizHttpStatusResponse> {
        self.describeBizHttpStatus(.init(statistics: statistics, business: business, period: period, startTime: startTime, endTime: endTime, id: id, domain: domain, protoInfo: protoInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 获取业务流量状态码统计列表
    @inlinable
    public func describeBizHttpStatus(statistics: String, business: String, period: Int64, startTime: String, endTime: String, id: String, domain: String? = nil, protoInfo: [ProtocolPort]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBizHttpStatusResponse {
        try await self.describeBizHttpStatus(.init(statistics: statistics, business: business, period: period, startTime: startTime, endTime: endTime, id: id, domain: domain, protoInfo: protoInfo), region: region, logger: logger, on: eventLoop)
    }
}
