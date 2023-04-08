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

extension Cam {
    /// SetMfaFlag请求参数结构体
    public struct SetMfaFlagRequest: TCRequestModel {
        /// 设置用户的uin
        public let opUin: UInt64?

        /// 登录保护设置
        public let loginFlag: LoginActionMfaFlag?

        /// 操作保护设置
        public let actionFlag: LoginActionMfaFlag?

        public init(opUin: UInt64? = nil, loginFlag: LoginActionMfaFlag? = nil, actionFlag: LoginActionMfaFlag? = nil) {
            self.opUin = opUin
            self.loginFlag = loginFlag
            self.actionFlag = actionFlag
        }

        enum CodingKeys: String, CodingKey {
            case opUin = "OpUin"
            case loginFlag = "LoginFlag"
            case actionFlag = "ActionFlag"
        }
    }

    /// SetMfaFlag返回参数结构体
    public struct SetMfaFlagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置子用户的登录保护和敏感操作校验方式
    @inlinable @discardableResult
    public func setMfaFlag(_ input: SetMfaFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetMfaFlagResponse> {
        self.client.execute(action: "SetMfaFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置子用户的登录保护和敏感操作校验方式
    @inlinable @discardableResult
    public func setMfaFlag(_ input: SetMfaFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetMfaFlagResponse {
        try await self.client.execute(action: "SetMfaFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置子用户的登录保护和敏感操作校验方式
    @inlinable @discardableResult
    public func setMfaFlag(opUin: UInt64? = nil, loginFlag: LoginActionMfaFlag? = nil, actionFlag: LoginActionMfaFlag? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetMfaFlagResponse> {
        self.setMfaFlag(.init(opUin: opUin, loginFlag: loginFlag, actionFlag: actionFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 设置子用户的登录保护和敏感操作校验方式
    @inlinable @discardableResult
    public func setMfaFlag(opUin: UInt64? = nil, loginFlag: LoginActionMfaFlag? = nil, actionFlag: LoginActionMfaFlag? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetMfaFlagResponse {
        try await self.setMfaFlag(.init(opUin: opUin, loginFlag: loginFlag, actionFlag: actionFlag), region: region, logger: logger, on: eventLoop)
    }
}
