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

extension Redis {
    /// ModfiyInstancePassword请求参数结构体
    public struct ModfiyInstancePasswordRequest: TCRequestModel {
        /// 实例 ID。
        public let instanceId: String

        /// 实例旧密码。
        public let oldPassword: String

        /// 实例新密码。密码复杂度要求如下：
        /// - 长度8 - 30位, 推荐使用12位以上的密码。
        /// - 不能以"/"开头。
        /// - 至少包含小写字母a - z、大写字母A - Z、数字0 - 9、特殊字符 ()~!@#$%^&*-+=_|{}[]:;<>,.?/中的两项。
        public let password: String

        public init(instanceId: String, oldPassword: String, password: String) {
            self.instanceId = instanceId
            self.oldPassword = oldPassword
            self.password = password
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case oldPassword = "OldPassword"
            case password = "Password"
        }
    }

    /// ModfiyInstancePassword返回参数结构体
    public struct ModfiyInstancePasswordResponse: TCResponseModel {
        /// 任务 ID。
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改Redis密码
    ///
    /// 本接口（ModfiyInstancePassword）用于修改实例访问密码。
    @inlinable
    public func modfiyInstancePassword(_ input: ModfiyInstancePasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModfiyInstancePasswordResponse> {
        self.client.execute(action: "ModfiyInstancePassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改Redis密码
    ///
    /// 本接口（ModfiyInstancePassword）用于修改实例访问密码。
    @inlinable
    public func modfiyInstancePassword(_ input: ModfiyInstancePasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModfiyInstancePasswordResponse {
        try await self.client.execute(action: "ModfiyInstancePassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改Redis密码
    ///
    /// 本接口（ModfiyInstancePassword）用于修改实例访问密码。
    @inlinable
    public func modfiyInstancePassword(instanceId: String, oldPassword: String, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModfiyInstancePasswordResponse> {
        self.modfiyInstancePassword(.init(instanceId: instanceId, oldPassword: oldPassword, password: password), region: region, logger: logger, on: eventLoop)
    }

    /// 修改Redis密码
    ///
    /// 本接口（ModfiyInstancePassword）用于修改实例访问密码。
    @inlinable
    public func modfiyInstancePassword(instanceId: String, oldPassword: String, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModfiyInstancePasswordResponse {
        try await self.modfiyInstancePassword(.init(instanceId: instanceId, oldPassword: oldPassword, password: password), region: region, logger: logger, on: eventLoop)
    }
}
