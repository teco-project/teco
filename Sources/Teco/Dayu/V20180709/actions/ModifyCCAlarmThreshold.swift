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

extension Dayu {
    /// ModifyCCAlarmThreshold请求参数结构体
    public struct ModifyCCAlarmThresholdRequest: TCRequestModel {
        /// 大禹子产品代号（shield表示棋牌；bgpip表示高防IP；bgp表示高防包；bgp-multip表示多ip高防包；net表示高防IP专业版）
        public let business: String

        /// 资源ID,字符串类型
        public let rsId: String

        /// 告警阈值，大于0（目前排定的值），后台设置默认值为1000
        public let alarmThreshold: UInt64

        /// 资源关联的IP列表，高防包未绑定时，传空数组，高防IP专业版传多个IP的数据
        public let ipList: [String]

        public init(business: String, rsId: String, alarmThreshold: UInt64, ipList: [String]) {
            self.business = business
            self.rsId = rsId
            self.alarmThreshold = alarmThreshold
            self.ipList = ipList
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case rsId = "RsId"
            case alarmThreshold = "AlarmThreshold"
            case ipList = "IpList"
        }
    }

    /// ModifyCCAlarmThreshold返回参数结构体
    public struct ModifyCCAlarmThresholdResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 设置CC告警通知阈值
    ///
    /// 为高防包、高防IP、高防IP专业版、棋牌盾产品设置CC攻击的告警通知阈值
    @inlinable
    public func modifyCCAlarmThreshold(_ input: ModifyCCAlarmThresholdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCAlarmThresholdResponse> {
        self.client.execute(action: "ModifyCCAlarmThreshold", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置CC告警通知阈值
    ///
    /// 为高防包、高防IP、高防IP专业版、棋牌盾产品设置CC攻击的告警通知阈值
    @inlinable
    public func modifyCCAlarmThreshold(_ input: ModifyCCAlarmThresholdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCAlarmThresholdResponse {
        try await self.client.execute(action: "ModifyCCAlarmThreshold", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置CC告警通知阈值
    ///
    /// 为高防包、高防IP、高防IP专业版、棋牌盾产品设置CC攻击的告警通知阈值
    @inlinable
    public func modifyCCAlarmThreshold(business: String, rsId: String, alarmThreshold: UInt64, ipList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCAlarmThresholdResponse> {
        self.modifyCCAlarmThreshold(.init(business: business, rsId: rsId, alarmThreshold: alarmThreshold, ipList: ipList), region: region, logger: logger, on: eventLoop)
    }

    /// 设置CC告警通知阈值
    ///
    /// 为高防包、高防IP、高防IP专业版、棋牌盾产品设置CC攻击的告警通知阈值
    @inlinable
    public func modifyCCAlarmThreshold(business: String, rsId: String, alarmThreshold: UInt64, ipList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCAlarmThresholdResponse {
        try await self.modifyCCAlarmThreshold(.init(business: business, rsId: rsId, alarmThreshold: alarmThreshold, ipList: ipList), region: region, logger: logger, on: eventLoop)
    }
}
