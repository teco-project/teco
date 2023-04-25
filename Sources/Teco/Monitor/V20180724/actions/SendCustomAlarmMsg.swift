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

extension Monitor {
    /// SendCustomAlarmMsg请求参数结构体
    public struct SendCustomAlarmMsgRequest: TCRequestModel {
        /// 接口模块名，当前取值monitor
        public let module: String

        /// 消息策略ID，在自定义消息页面配置
        public let policyId: String

        /// 用户想要发送的自定义消息内容
        public let msg: String

        public init(module: String, policyId: String, msg: String) {
            self.module = module
            self.policyId = policyId
            self.msg = msg
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case policyId = "PolicyId"
            case msg = "Msg"
        }
    }

    /// SendCustomAlarmMsg返回参数结构体
    public struct SendCustomAlarmMsgResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 发送自定义消息告警
    @inlinable @discardableResult
    public func sendCustomAlarmMsg(_ input: SendCustomAlarmMsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendCustomAlarmMsgResponse> {
        self.client.execute(action: "SendCustomAlarmMsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发送自定义消息告警
    @inlinable @discardableResult
    public func sendCustomAlarmMsg(_ input: SendCustomAlarmMsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendCustomAlarmMsgResponse {
        try await self.client.execute(action: "SendCustomAlarmMsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发送自定义消息告警
    @inlinable @discardableResult
    public func sendCustomAlarmMsg(module: String, policyId: String, msg: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendCustomAlarmMsgResponse> {
        self.sendCustomAlarmMsg(.init(module: module, policyId: policyId, msg: msg), region: region, logger: logger, on: eventLoop)
    }

    /// 发送自定义消息告警
    @inlinable @discardableResult
    public func sendCustomAlarmMsg(module: String, policyId: String, msg: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendCustomAlarmMsgResponse {
        try await self.sendCustomAlarmMsg(.init(module: module, policyId: policyId, msg: msg), region: region, logger: logger, on: eventLoop)
    }
}
