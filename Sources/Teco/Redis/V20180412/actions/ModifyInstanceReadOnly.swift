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

extension Redis {
    /// ModifyInstanceReadOnly请求参数结构体
    public struct ModifyInstanceReadOnlyRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        /// 实例输入模式，0：读写 1：只读
        public let inputMode: String

        public init(instanceId: String, inputMode: String) {
            self.instanceId = instanceId
            self.inputMode = inputMode
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case inputMode = "InputMode"
        }
    }

    /// ModifyInstanceReadOnly返回参数结构体
    public struct ModifyInstanceReadOnlyResponse: TCResponse {
        /// 任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 设置实例输入模式
    @inlinable
    public func modifyInstanceReadOnly(_ input: ModifyInstanceReadOnlyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceReadOnlyResponse> {
        self.client.execute(action: "ModifyInstanceReadOnly", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置实例输入模式
    @inlinable
    public func modifyInstanceReadOnly(_ input: ModifyInstanceReadOnlyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceReadOnlyResponse {
        try await self.client.execute(action: "ModifyInstanceReadOnly", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置实例输入模式
    @inlinable
    public func modifyInstanceReadOnly(instanceId: String, inputMode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceReadOnlyResponse> {
        self.modifyInstanceReadOnly(.init(instanceId: instanceId, inputMode: inputMode), region: region, logger: logger, on: eventLoop)
    }

    /// 设置实例输入模式
    @inlinable
    public func modifyInstanceReadOnly(instanceId: String, inputMode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceReadOnlyResponse {
        try await self.modifyInstanceReadOnly(.init(instanceId: instanceId, inputMode: inputMode), region: region, logger: logger, on: eventLoop)
    }
}
