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

extension Dayu {
    /// DescribeDDoSAlarmThreshold请求参数结构体
    public struct DescribeDDoSAlarmThresholdRequest: TCRequestModel {
        /// 大禹子产品代号（shield表示棋牌；bgpip表示高防IP；bgp表示高防包；bgp-multip表示多ip高防包；net表示高防IP专业版）
        public let business: String

        /// 资源ID,字符串类型
        public let rsId: String

        public init(business: String, rsId: String) {
            self.business = business
            self.rsId = rsId
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case rsId = "RsId"
        }
    }

    /// DescribeDDoSAlarmThreshold返回参数结构体
    public struct DescribeDDoSAlarmThresholdResponse: TCResponseModel {
        /// DDoS告警阈值
        public let dDoSAlarmThreshold: DDoSAlarmThreshold

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dDoSAlarmThreshold = "DDoSAlarmThreshold"
            case requestId = "RequestId"
        }
    }

    /// 获取DDoS告警通知阈值
    ///
    /// 获取高防包、高防IP、高防IP专业版、棋牌盾产品设置DDoS攻击的告警通知阈值
    @inlinable
    public func describeDDoSAlarmThreshold(_ input: DescribeDDoSAlarmThresholdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDoSAlarmThresholdResponse > {
        self.client.execute(action: "DescribeDDoSAlarmThreshold", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS告警通知阈值
    ///
    /// 获取高防包、高防IP、高防IP专业版、棋牌盾产品设置DDoS攻击的告警通知阈值
    @inlinable
    public func describeDDoSAlarmThreshold(_ input: DescribeDDoSAlarmThresholdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAlarmThresholdResponse {
        try await self.client.execute(action: "DescribeDDoSAlarmThreshold", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS告警通知阈值
    ///
    /// 获取高防包、高防IP、高防IP专业版、棋牌盾产品设置DDoS攻击的告警通知阈值
    @inlinable
    public func describeDDoSAlarmThreshold(business: String, rsId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDoSAlarmThresholdResponse > {
        self.describeDDoSAlarmThreshold(DescribeDDoSAlarmThresholdRequest(business: business, rsId: rsId), logger: logger, on: eventLoop)
    }

    /// 获取DDoS告警通知阈值
    ///
    /// 获取高防包、高防IP、高防IP专业版、棋牌盾产品设置DDoS攻击的告警通知阈值
    @inlinable
    public func describeDDoSAlarmThreshold(business: String, rsId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSAlarmThresholdResponse {
        try await self.describeDDoSAlarmThreshold(DescribeDDoSAlarmThresholdRequest(business: business, rsId: rsId), logger: logger, on: eventLoop)
    }
}
