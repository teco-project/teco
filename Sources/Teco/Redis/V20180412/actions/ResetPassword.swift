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
    /// ResetPassword请求参数结构体
    public struct ResetPasswordRequest: TCRequest {
        /// Redis实例ID
        public let instanceId: String

        /// 重置的密码（切换为免密实例时，可不传；其他情况必传）
        public let password: String?

        /// 是否切换免密实例，false-切换为非免密码实例，true-切换为免密码实例；默认false
        public let noAuth: Bool?

        public init(instanceId: String, password: String? = nil, noAuth: Bool? = nil) {
            self.instanceId = instanceId
            self.password = password
            self.noAuth = noAuth
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case password = "Password"
            case noAuth = "NoAuth"
        }
    }

    /// ResetPassword返回参数结构体
    public struct ResetPasswordResponse: TCResponse {
        /// 任务ID（修改密码时的任务ID，如果时切换免密码或者非免密码实例，则无需关注此返回值）
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 重置密码
    @inlinable
    public func resetPassword(_ input: ResetPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetPasswordResponse> {
        self.client.execute(action: "ResetPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置密码
    @inlinable
    public func resetPassword(_ input: ResetPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetPasswordResponse {
        try await self.client.execute(action: "ResetPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置密码
    @inlinable
    public func resetPassword(instanceId: String, password: String? = nil, noAuth: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetPasswordResponse> {
        self.resetPassword(.init(instanceId: instanceId, password: password, noAuth: noAuth), region: region, logger: logger, on: eventLoop)
    }

    /// 重置密码
    @inlinable
    public func resetPassword(instanceId: String, password: String? = nil, noAuth: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetPasswordResponse {
        try await self.resetPassword(.init(instanceId: instanceId, password: password, noAuth: noAuth), region: region, logger: logger, on: eventLoop)
    }
}
