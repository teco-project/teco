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

import TecoCore

extension Waf {
    /// DescribeFlowTrend请求参数结构体
    public struct DescribeFlowTrendRequest: TCRequestModel {
        /// 需要获取流量趋势的域名, all表示所有域名
        public let domain: String

        /// 起始时间戳，精度秒
        public let startTs: Int64

        /// 结束时间戳，精度秒
        public let endTs: Int64

        public init(domain: String, startTs: Int64, endTs: Int64) {
            self.domain = domain
            self.startTs = startTs
            self.endTs = endTs
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case startTs = "StartTs"
            case endTs = "EndTs"
        }
    }

    /// DescribeFlowTrend返回参数结构体
    public struct DescribeFlowTrendResponse: TCResponseModel {
        /// 流量趋势数据
        public let data: [BotStatPointItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取waf流量访问趋势
    @inlinable
    public func describeFlowTrend(_ input: DescribeFlowTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowTrendResponse> {
        self.client.execute(action: "DescribeFlowTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取waf流量访问趋势
    @inlinable
    public func describeFlowTrend(_ input: DescribeFlowTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowTrendResponse {
        try await self.client.execute(action: "DescribeFlowTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取waf流量访问趋势
    @inlinable
    public func describeFlowTrend(domain: String, startTs: Int64, endTs: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowTrendResponse> {
        self.describeFlowTrend(.init(domain: domain, startTs: startTs, endTs: endTs), region: region, logger: logger, on: eventLoop)
    }

    /// 获取waf流量访问趋势
    @inlinable
    public func describeFlowTrend(domain: String, startTs: Int64, endTs: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowTrendResponse {
        try await self.describeFlowTrend(.init(domain: domain, startTs: startTs, endTs: endTs), region: region, logger: logger, on: eventLoop)
    }
}
