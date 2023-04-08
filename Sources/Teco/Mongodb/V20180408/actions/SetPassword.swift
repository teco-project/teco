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

extension Mongodb {
    /// SetPassword请求参数结构体
    public struct SetPasswordRequest: TCRequestModel {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceId: String

        /// 实例账户名称
        public let userName: String

        /// 实例新密码，至少包含字母、数字和字符（!@#%^*()）中的两种，长度为8-16个字符
        public let password: String

        public init(instanceId: String, userName: String, password: String) {
            self.instanceId = instanceId
            self.userName = userName
            self.password = password
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userName = "UserName"
            case password = "Password"
        }
    }

    /// SetPassword返回参数结构体
    public struct SetPasswordResponse: TCResponseModel {
        /// 返回的异步任务ID
        public let flowId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 修改云数据库实例的账户密码
    ///
    /// 本接口(SetPassword)用于设置云数据库账户的密码。
    @inlinable
    public func setPassword(_ input: SetPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetPasswordResponse> {
        self.client.execute(action: "SetPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例的账户密码
    ///
    /// 本接口(SetPassword)用于设置云数据库账户的密码。
    @inlinable
    public func setPassword(_ input: SetPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetPasswordResponse {
        try await self.client.execute(action: "SetPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云数据库实例的账户密码
    ///
    /// 本接口(SetPassword)用于设置云数据库账户的密码。
    @inlinable
    public func setPassword(instanceId: String, userName: String, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetPasswordResponse> {
        self.setPassword(.init(instanceId: instanceId, userName: userName, password: password), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例的账户密码
    ///
    /// 本接口(SetPassword)用于设置云数据库账户的密码。
    @inlinable
    public func setPassword(instanceId: String, userName: String, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetPasswordResponse {
        try await self.setPassword(.init(instanceId: instanceId, userName: userName, password: password), region: region, logger: logger, on: eventLoop)
    }
}
