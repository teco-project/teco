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

extension Ckafka {
    /// DescribeTopicFlowRanking请求参数结构体
    public struct DescribeTopicFlowRankingRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 排行类别(PRO-Topic生产流量/CON-Topic消费流量)
        public let rankingType: String

        /// 排行起始日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var beginDate: Date?

        /// 排行结束日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endDate: Date?

        /// Broker IP 地址
        public let brokerIp: String?

        public init(instanceId: String, rankingType: String, beginDate: Date? = nil, endDate: Date? = nil, brokerIp: String? = nil) {
            self.instanceId = instanceId
            self.rankingType = rankingType
            self._beginDate = .init(wrappedValue: beginDate)
            self._endDate = .init(wrappedValue: endDate)
            self.brokerIp = brokerIp
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case rankingType = "RankingType"
            case beginDate = "BeginDate"
            case endDate = "EndDate"
            case brokerIp = "BrokerIp"
        }
    }

    /// DescribeTopicFlowRanking返回参数结构体
    public struct DescribeTopicFlowRankingResponse: TCResponseModel {
        /// 流量排行
        public let result: TopicFlowRankingResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// Topic 流量排行
    ///
    /// 获取Topic流量排行，消费者流量排行
    @inlinable
    public func describeTopicFlowRanking(_ input: DescribeTopicFlowRankingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicFlowRankingResponse> {
        self.client.execute(action: "DescribeTopicFlowRanking", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Topic 流量排行
    ///
    /// 获取Topic流量排行，消费者流量排行
    @inlinable
    public func describeTopicFlowRanking(_ input: DescribeTopicFlowRankingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicFlowRankingResponse {
        try await self.client.execute(action: "DescribeTopicFlowRanking", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// Topic 流量排行
    ///
    /// 获取Topic流量排行，消费者流量排行
    @inlinable
    public func describeTopicFlowRanking(instanceId: String, rankingType: String, beginDate: Date? = nil, endDate: Date? = nil, brokerIp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicFlowRankingResponse> {
        self.describeTopicFlowRanking(.init(instanceId: instanceId, rankingType: rankingType, beginDate: beginDate, endDate: endDate, brokerIp: brokerIp), region: region, logger: logger, on: eventLoop)
    }

    /// Topic 流量排行
    ///
    /// 获取Topic流量排行，消费者流量排行
    @inlinable
    public func describeTopicFlowRanking(instanceId: String, rankingType: String, beginDate: Date? = nil, endDate: Date? = nil, brokerIp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicFlowRankingResponse {
        try await self.describeTopicFlowRanking(.init(instanceId: instanceId, rankingType: rankingType, beginDate: beginDate, endDate: endDate, brokerIp: brokerIp), region: region, logger: logger, on: eventLoop)
    }
}
