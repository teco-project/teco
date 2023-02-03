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

extension Dayu {
    /// DescribeBizHttpStatus请求参数结构体
    public struct DescribeBizHttpStatusRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP）
        public let business: String

        /// 资源Id
        public let id: String

        /// 统计周期，可取值300，1800，3600， 21600，86400，单位秒
        public let period: Int64

        /// 统计开始时间
        public let startTime: String

        /// 统计结束时间
        public let endTime: String

        /// 统计方式，仅支持sum
        public let statistics: String

        /// 协议及端口列表，协议可取值TCP, UDP, HTTP, HTTPS，仅统计纬度为连接数时有效
        public let protoInfo: [ProtocolPort]?

        /// 特定域名查询
        public let domain: String?

        public init(business: String, id: String, period: Int64, startTime: String, endTime: String, statistics: String, protoInfo: [ProtocolPort]? = nil, domain: String? = nil) {
            self.business = business
            self.id = id
            self.period = period
            self.startTime = startTime
            self.endTime = endTime
            self.statistics = statistics
            self.protoInfo = protoInfo
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case statistics = "Statistics"
            case protoInfo = "ProtoInfo"
            case domain = "Domain"
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

    /// 获取业务流量状态码统计
    @inlinable
    public func describeBizHttpStatus(_ input: DescribeBizHttpStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBizHttpStatusResponse> {
        self.client.execute(action: "DescribeBizHttpStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取业务流量状态码统计
    @inlinable
    public func describeBizHttpStatus(_ input: DescribeBizHttpStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBizHttpStatusResponse {
        try await self.client.execute(action: "DescribeBizHttpStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取业务流量状态码统计
    @inlinable
    public func describeBizHttpStatus(business: String, id: String, period: Int64, startTime: String, endTime: String, statistics: String, protoInfo: [ProtocolPort]? = nil, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBizHttpStatusResponse> {
        let input = DescribeBizHttpStatusRequest(business: business, id: id, period: period, startTime: startTime, endTime: endTime, statistics: statistics, protoInfo: protoInfo, domain: domain)
        return self.client.execute(action: "DescribeBizHttpStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取业务流量状态码统计
    @inlinable
    public func describeBizHttpStatus(business: String, id: String, period: Int64, startTime: String, endTime: String, statistics: String, protoInfo: [ProtocolPort]? = nil, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBizHttpStatusResponse {
        let input = DescribeBizHttpStatusRequest(business: business, id: id, period: period, startTime: startTime, endTime: endTime, statistics: statistics, protoInfo: protoInfo, domain: domain)
        return try await self.client.execute(action: "DescribeBizHttpStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
