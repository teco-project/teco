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

extension Tat {
    /// ModifyInvoker请求参数结构体
    public struct ModifyInvokerRequest: TCRequest {
        /// 待修改的执行器ID。
        public let invokerId: String

        /// 待修改的执行器名称。
        public let name: String?

        /// 执行器类型，当前仅支持周期类型执行器，取值：`SCHEDULE` 。
        public let type: String?

        /// 待修改的命令ID。
        public let commandId: String?

        /// 待修改的用户名。
        public let username: String?

        /// 待修改的自定义参数。
        public let parameters: String?

        /// 待修改的实例ID列表。列表长度上限100。
        public let instanceIds: [String]?

        /// 待修改的周期执行器设置。
        public let scheduleSettings: ScheduleSettings?

        public init(invokerId: String, name: String? = nil, type: String? = nil, commandId: String? = nil, username: String? = nil, parameters: String? = nil, instanceIds: [String]? = nil, scheduleSettings: ScheduleSettings? = nil) {
            self.invokerId = invokerId
            self.name = name
            self.type = type
            self.commandId = commandId
            self.username = username
            self.parameters = parameters
            self.instanceIds = instanceIds
            self.scheduleSettings = scheduleSettings
        }

        enum CodingKeys: String, CodingKey {
            case invokerId = "InvokerId"
            case name = "Name"
            case type = "Type"
            case commandId = "CommandId"
            case username = "Username"
            case parameters = "Parameters"
            case instanceIds = "InstanceIds"
            case scheduleSettings = "ScheduleSettings"
        }
    }

    /// ModifyInvoker返回参数结构体
    public struct ModifyInvokerResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改执行器
    ///
    /// 此接口用于修改执行器。
    @inlinable @discardableResult
    public func modifyInvoker(_ input: ModifyInvokerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInvokerResponse> {
        self.client.execute(action: "ModifyInvoker", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改执行器
    ///
    /// 此接口用于修改执行器。
    @inlinable @discardableResult
    public func modifyInvoker(_ input: ModifyInvokerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInvokerResponse {
        try await self.client.execute(action: "ModifyInvoker", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改执行器
    ///
    /// 此接口用于修改执行器。
    @inlinable @discardableResult
    public func modifyInvoker(invokerId: String, name: String? = nil, type: String? = nil, commandId: String? = nil, username: String? = nil, parameters: String? = nil, instanceIds: [String]? = nil, scheduleSettings: ScheduleSettings? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInvokerResponse> {
        self.modifyInvoker(.init(invokerId: invokerId, name: name, type: type, commandId: commandId, username: username, parameters: parameters, instanceIds: instanceIds, scheduleSettings: scheduleSettings), region: region, logger: logger, on: eventLoop)
    }

    /// 修改执行器
    ///
    /// 此接口用于修改执行器。
    @inlinable @discardableResult
    public func modifyInvoker(invokerId: String, name: String? = nil, type: String? = nil, commandId: String? = nil, username: String? = nil, parameters: String? = nil, instanceIds: [String]? = nil, scheduleSettings: ScheduleSettings? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInvokerResponse {
        try await self.modifyInvoker(.init(invokerId: invokerId, name: name, type: type, commandId: commandId, username: username, parameters: parameters, instanceIds: instanceIds, scheduleSettings: scheduleSettings), region: region, logger: logger, on: eventLoop)
    }
}
