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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Domain {
    /// SendPhoneEmailCode请求参数结构体
    public struct SendPhoneEmailCodeRequest: TCRequestModel {
        /// 手机或者邮箱号。
        public let code: String

        /// 1：手机  2：邮箱。
        public let type: UInt64

        public init(code: String, type: UInt64) {
            self.code = code
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case type = "Type"
        }
    }

    /// SendPhoneEmailCode返回参数结构体
    public struct SendPhoneEmailCodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 发送手机邮箱验证码
    ///
    /// 此接口用于发送手机邮箱验证码。
    @inlinable @discardableResult
    public func sendPhoneEmailCode(_ input: SendPhoneEmailCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendPhoneEmailCodeResponse> {
        self.client.execute(action: "SendPhoneEmailCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发送手机邮箱验证码
    ///
    /// 此接口用于发送手机邮箱验证码。
    @inlinable @discardableResult
    public func sendPhoneEmailCode(_ input: SendPhoneEmailCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendPhoneEmailCodeResponse {
        try await self.client.execute(action: "SendPhoneEmailCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发送手机邮箱验证码
    ///
    /// 此接口用于发送手机邮箱验证码。
    @inlinable @discardableResult
    public func sendPhoneEmailCode(code: String, type: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendPhoneEmailCodeResponse> {
        self.sendPhoneEmailCode(.init(code: code, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 发送手机邮箱验证码
    ///
    /// 此接口用于发送手机邮箱验证码。
    @inlinable @discardableResult
    public func sendPhoneEmailCode(code: String, type: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendPhoneEmailCodeResponse {
        try await self.sendPhoneEmailCode(.init(code: code, type: type), region: region, logger: logger, on: eventLoop)
    }
}
