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

extension Ckafka {
    /// ModifyPassword请求参数结构体
    public struct ModifyPasswordRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// 用户名称
        public let name: String

        /// 用户当前密码
        public let password: String

        /// 用户新密码
        public let passwordNew: String

        public init(instanceId: String, name: String, password: String, passwordNew: String) {
            self.instanceId = instanceId
            self.name = name
            self.password = password
            self.passwordNew = passwordNew
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case name = "Name"
            case password = "Password"
            case passwordNew = "PasswordNew"
        }
    }

    /// ModifyPassword返回参数结构体
    public struct ModifyPasswordResponse: TCResponseModel {
        /// 返回结果
        public let result: JgwOperateResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 修改密码
    @inlinable
    public func modifyPassword(_ input: ModifyPasswordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyPasswordResponse > {
        self.client.execute(action: "ModifyPassword", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改密码
    @inlinable
    public func modifyPassword(_ input: ModifyPasswordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPasswordResponse {
        try await self.client.execute(action: "ModifyPassword", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改密码
    @inlinable
    public func modifyPassword(instanceId: String, name: String, password: String, passwordNew: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyPasswordResponse > {
        self.modifyPassword(ModifyPasswordRequest(instanceId: instanceId, name: name, password: password, passwordNew: passwordNew), logger: logger, on: eventLoop)
    }

    /// 修改密码
    @inlinable
    public func modifyPassword(instanceId: String, name: String, password: String, passwordNew: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPasswordResponse {
        try await self.modifyPassword(ModifyPasswordRequest(instanceId: instanceId, name: name, password: password, passwordNew: passwordNew), logger: logger, on: eventLoop)
    }
}
