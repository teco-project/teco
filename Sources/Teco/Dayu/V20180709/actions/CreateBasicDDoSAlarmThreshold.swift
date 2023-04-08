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

extension Dayu {
    /// CreateBasicDDoSAlarmThreshold请求参数结构体
    public struct CreateBasicDDoSAlarmThresholdRequest: TCRequestModel {
        /// 大禹子产品代号（basic表示DDoS基础防护）
        public let business: String

        /// =get表示读取告警阈值；=set表示设置告警阈值；
        public let method: String

        /// 可选，告警阈值类型，1-入流量，2-清洗流量；当Method为set时必须填写；
        public let alarmType: UInt64?

        /// 可选，告警阈值，当Method为set时必须填写；当设置阈值为0时表示清除告警阈值配置；
        public let alarmThreshold: UInt64?

        public init(business: String, method: String, alarmType: UInt64? = nil, alarmThreshold: UInt64? = nil) {
            self.business = business
            self.method = method
            self.alarmType = alarmType
            self.alarmThreshold = alarmThreshold
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case method = "Method"
            case alarmType = "AlarmType"
            case alarmThreshold = "AlarmThreshold"
        }
    }

    /// CreateBasicDDoSAlarmThreshold返回参数结构体
    public struct CreateBasicDDoSAlarmThresholdResponse: TCResponseModel {
        /// 当存在告警阈值配置时，返回告警阈值大于0，当不存在告警配置时，返回告警阈值为0；
        public let alarmThreshold: UInt64

        /// 告警阈值类型，1-入流量，2-清洗流量；当AlarmThreshold大于0时有效；
        public let alarmType: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alarmThreshold = "AlarmThreshold"
            case alarmType = "AlarmType"
            case requestId = "RequestId"
        }
    }

    /// 设置基础防护的DDoS告警阈值
    ///
    /// 设置基础防护的DDoS告警阈值，只支持基础防护产品
    @inlinable
    public func createBasicDDoSAlarmThreshold(_ input: CreateBasicDDoSAlarmThresholdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBasicDDoSAlarmThresholdResponse> {
        self.client.execute(action: "CreateBasicDDoSAlarmThreshold", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置基础防护的DDoS告警阈值
    ///
    /// 设置基础防护的DDoS告警阈值，只支持基础防护产品
    @inlinable
    public func createBasicDDoSAlarmThreshold(_ input: CreateBasicDDoSAlarmThresholdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBasicDDoSAlarmThresholdResponse {
        try await self.client.execute(action: "CreateBasicDDoSAlarmThreshold", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置基础防护的DDoS告警阈值
    ///
    /// 设置基础防护的DDoS告警阈值，只支持基础防护产品
    @inlinable
    public func createBasicDDoSAlarmThreshold(business: String, method: String, alarmType: UInt64? = nil, alarmThreshold: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBasicDDoSAlarmThresholdResponse> {
        self.createBasicDDoSAlarmThreshold(.init(business: business, method: method, alarmType: alarmType, alarmThreshold: alarmThreshold), region: region, logger: logger, on: eventLoop)
    }

    /// 设置基础防护的DDoS告警阈值
    ///
    /// 设置基础防护的DDoS告警阈值，只支持基础防护产品
    @inlinable
    public func createBasicDDoSAlarmThreshold(business: String, method: String, alarmType: UInt64? = nil, alarmThreshold: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBasicDDoSAlarmThresholdResponse {
        try await self.createBasicDDoSAlarmThreshold(.init(business: business, method: method, alarmType: alarmType, alarmThreshold: alarmThreshold), region: region, logger: logger, on: eventLoop)
    }
}
