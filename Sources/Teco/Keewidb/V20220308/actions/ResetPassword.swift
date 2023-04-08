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

extension Keewidb {
    /// ResetPassword请求参数结构体
    public struct ResetPasswordRequest: TCRequestModel {
        /// 实例 ID。
        public let instanceId: String

        /// 设置新密码。<ul><li>当参数<b>NoAuth</b>设置为<b>true</b>，切换为免密实例时，可不设置该参数。</li><li>密码复杂度要求：<ul><li>长度8 - 30位, 推荐使用12位以上的密码。</li><li>不能以"/"开头。</li>
        /// <li>至少包含以下两项：<ul><li>小写字母a - z</li><li>大写字母A - Z</li><li>数字0 - 9</li><li>()~!@#$%^&*-+=_|{}[]:;<>,.?/</li></ul></li></ul></li></ul>
        public let password: String?

        /// 标识实例是否切换免密认证。<ul><li>false：由免密码认证方式切换为密码认证实例。默认为false。</li><li>true：由密码认证方式切换为免密码认证的方式。</li></ul>
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
    public struct ResetPasswordResponse: TCResponseModel {
        /// 任务 ID。
        /// <b>说明：</b>修改密码时的任务ID，如果切换免密访问或者非免密码实例，则无需关注此返回值。
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 重置密码
    ///
    /// 本接口（ResetPassword）用于重置数据库访问密码。
    @inlinable
    public func resetPassword(_ input: ResetPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetPasswordResponse> {
        self.client.execute(action: "ResetPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置密码
    ///
    /// 本接口（ResetPassword）用于重置数据库访问密码。
    @inlinable
    public func resetPassword(_ input: ResetPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetPasswordResponse {
        try await self.client.execute(action: "ResetPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置密码
    ///
    /// 本接口（ResetPassword）用于重置数据库访问密码。
    @inlinable
    public func resetPassword(instanceId: String, password: String? = nil, noAuth: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetPasswordResponse> {
        self.resetPassword(.init(instanceId: instanceId, password: password, noAuth: noAuth), region: region, logger: logger, on: eventLoop)
    }

    /// 重置密码
    ///
    /// 本接口（ResetPassword）用于重置数据库访问密码。
    @inlinable
    public func resetPassword(instanceId: String, password: String? = nil, noAuth: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetPasswordResponse {
        try await self.resetPassword(.init(instanceId: instanceId, password: password, noAuth: noAuth), region: region, logger: logger, on: eventLoop)
    }
}
