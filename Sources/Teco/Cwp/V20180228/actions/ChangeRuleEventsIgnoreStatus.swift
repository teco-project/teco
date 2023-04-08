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

extension Cwp {
    /// ChangeRuleEventsIgnoreStatus请求参数结构体
    public struct ChangeRuleEventsIgnoreStatusRequest: TCRequestModel {
        /// 忽略状态 0:取消忽略 ； 1:忽略
        public let ignoreStatus: UInt64

        /// 检测项id数组
        public let ruleIdList: [UInt64]?

        /// 事件id数组
        public let eventIdList: [UInt64]?

        public init(ignoreStatus: UInt64, ruleIdList: [UInt64]? = nil, eventIdList: [UInt64]? = nil) {
            self.ignoreStatus = ignoreStatus
            self.ruleIdList = ruleIdList
            self.eventIdList = eventIdList
        }

        enum CodingKeys: String, CodingKey {
            case ignoreStatus = "IgnoreStatus"
            case ruleIdList = "RuleIdList"
            case eventIdList = "EventIdList"
        }
    }

    /// ChangeRuleEventsIgnoreStatus返回参数结构体
    public struct ChangeRuleEventsIgnoreStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改事件忽略状态
    ///
    /// 根据检测项id或事件id批量忽略事件或取消忽略
    @inlinable @discardableResult
    public func changeRuleEventsIgnoreStatus(_ input: ChangeRuleEventsIgnoreStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeRuleEventsIgnoreStatusResponse> {
        self.client.execute(action: "ChangeRuleEventsIgnoreStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改事件忽略状态
    ///
    /// 根据检测项id或事件id批量忽略事件或取消忽略
    @inlinable @discardableResult
    public func changeRuleEventsIgnoreStatus(_ input: ChangeRuleEventsIgnoreStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeRuleEventsIgnoreStatusResponse {
        try await self.client.execute(action: "ChangeRuleEventsIgnoreStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改事件忽略状态
    ///
    /// 根据检测项id或事件id批量忽略事件或取消忽略
    @inlinable @discardableResult
    public func changeRuleEventsIgnoreStatus(ignoreStatus: UInt64, ruleIdList: [UInt64]? = nil, eventIdList: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeRuleEventsIgnoreStatusResponse> {
        self.changeRuleEventsIgnoreStatus(.init(ignoreStatus: ignoreStatus, ruleIdList: ruleIdList, eventIdList: eventIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 修改事件忽略状态
    ///
    /// 根据检测项id或事件id批量忽略事件或取消忽略
    @inlinable @discardableResult
    public func changeRuleEventsIgnoreStatus(ignoreStatus: UInt64, ruleIdList: [UInt64]? = nil, eventIdList: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeRuleEventsIgnoreStatusResponse {
        try await self.changeRuleEventsIgnoreStatus(.init(ignoreStatus: ignoreStatus, ruleIdList: ruleIdList, eventIdList: eventIdList), region: region, logger: logger, on: eventLoop)
    }
}
