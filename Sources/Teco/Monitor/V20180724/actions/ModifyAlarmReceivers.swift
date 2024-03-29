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

extension Monitor {
    /// ModifyAlarmReceivers请求参数结构体
    public struct ModifyAlarmReceiversRequest: TCRequest {
        /// 需要修改接收人的策略组Id
        public let groupId: Int64

        /// 必填。固定为“monitor”
        public let module: String

        /// 新接收人信息, 没有填写则删除所有接收人
        public let receiverInfos: [ReceiverInfo]?

        public init(groupId: Int64, module: String, receiverInfos: [ReceiverInfo]? = nil) {
            self.groupId = groupId
            self.module = module
            self.receiverInfos = receiverInfos
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case module = "Module"
            case receiverInfos = "ReceiverInfos"
        }
    }

    /// ModifyAlarmReceivers返回参数结构体
    public struct ModifyAlarmReceiversResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改告警接收人
    @inlinable @discardableResult
    public func modifyAlarmReceivers(_ input: ModifyAlarmReceiversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAlarmReceiversResponse> {
        self.client.execute(action: "ModifyAlarmReceivers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改告警接收人
    @inlinable @discardableResult
    public func modifyAlarmReceivers(_ input: ModifyAlarmReceiversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmReceiversResponse {
        try await self.client.execute(action: "ModifyAlarmReceivers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改告警接收人
    @inlinable @discardableResult
    public func modifyAlarmReceivers(groupId: Int64, module: String, receiverInfos: [ReceiverInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAlarmReceiversResponse> {
        self.modifyAlarmReceivers(.init(groupId: groupId, module: module, receiverInfos: receiverInfos), region: region, logger: logger, on: eventLoop)
    }

    /// 修改告警接收人
    @inlinable @discardableResult
    public func modifyAlarmReceivers(groupId: Int64, module: String, receiverInfos: [ReceiverInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmReceiversResponse {
        try await self.modifyAlarmReceivers(.init(groupId: groupId, module: module, receiverInfos: receiverInfos), region: region, logger: logger, on: eventLoop)
    }
}
