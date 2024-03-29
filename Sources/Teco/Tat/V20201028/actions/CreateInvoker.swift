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
    /// CreateInvoker请求参数结构体
    public struct CreateInvokerRequest: TCRequest {
        /// 执行器名称。
        public let name: String

        /// 执行器类型，当前仅支持周期类型执行器，取值：`SCHEDULE` 。
        public let type: String

        /// 远程命令ID。
        public let commandId: String

        /// 触发器关联的实例ID。列表上限 100。
        public let instanceIds: [String]

        /// 命令执行用户。
        public let username: String?

        /// 命令自定义参数。
        public let parameters: String?

        /// 周期执行器设置，当创建周期执行器时，必须指定此参数。
        public let scheduleSettings: ScheduleSettings?

        public init(name: String, type: String, commandId: String, instanceIds: [String], username: String? = nil, parameters: String? = nil, scheduleSettings: ScheduleSettings? = nil) {
            self.name = name
            self.type = type
            self.commandId = commandId
            self.instanceIds = instanceIds
            self.username = username
            self.parameters = parameters
            self.scheduleSettings = scheduleSettings
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case type = "Type"
            case commandId = "CommandId"
            case instanceIds = "InstanceIds"
            case username = "Username"
            case parameters = "Parameters"
            case scheduleSettings = "ScheduleSettings"
        }
    }

    /// CreateInvoker返回参数结构体
    public struct CreateInvokerResponse: TCResponse {
        /// 执行器ID。
        public let invokerId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case invokerId = "InvokerId"
            case requestId = "RequestId"
        }
    }

    /// 创建执行器
    ///
    /// 此接口用于创建执行器。
    @inlinable
    public func createInvoker(_ input: CreateInvokerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInvokerResponse> {
        self.client.execute(action: "CreateInvoker", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建执行器
    ///
    /// 此接口用于创建执行器。
    @inlinable
    public func createInvoker(_ input: CreateInvokerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInvokerResponse {
        try await self.client.execute(action: "CreateInvoker", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建执行器
    ///
    /// 此接口用于创建执行器。
    @inlinable
    public func createInvoker(name: String, type: String, commandId: String, instanceIds: [String], username: String? = nil, parameters: String? = nil, scheduleSettings: ScheduleSettings? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInvokerResponse> {
        self.createInvoker(.init(name: name, type: type, commandId: commandId, instanceIds: instanceIds, username: username, parameters: parameters, scheduleSettings: scheduleSettings), region: region, logger: logger, on: eventLoop)
    }

    /// 创建执行器
    ///
    /// 此接口用于创建执行器。
    @inlinable
    public func createInvoker(name: String, type: String, commandId: String, instanceIds: [String], username: String? = nil, parameters: String? = nil, scheduleSettings: ScheduleSettings? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInvokerResponse {
        try await self.createInvoker(.init(name: name, type: type, commandId: commandId, instanceIds: instanceIds, username: username, parameters: parameters, scheduleSettings: scheduleSettings), region: region, logger: logger, on: eventLoop)
    }
}
