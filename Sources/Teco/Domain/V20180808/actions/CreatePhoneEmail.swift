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

extension Domain {
    /// CreatePhoneEmail请求参数结构体
    public struct CreatePhoneEmailRequest: TCRequestModel {
        /// 手机号或者邮箱
        public let code: String

        /// 1：手机   2：邮箱
        public let type: UInt64

        /// 验证码
        public let verifyCode: String

        public init(code: String, type: UInt64, verifyCode: String) {
            self.code = code
            self.type = type
            self.verifyCode = verifyCode
        }

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case type = "Type"
            case verifyCode = "VerifyCode"
        }
    }

    /// CreatePhoneEmail返回参数结构体
    public struct CreatePhoneEmailResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 验证手机邮箱
    ///
    /// 此接口用于创建有效的手机、邮箱
    @inlinable @discardableResult
    public func createPhoneEmail(_ input: CreatePhoneEmailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePhoneEmailResponse> {
        self.client.execute(action: "CreatePhoneEmail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证手机邮箱
    ///
    /// 此接口用于创建有效的手机、邮箱
    @inlinable @discardableResult
    public func createPhoneEmail(_ input: CreatePhoneEmailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePhoneEmailResponse {
        try await self.client.execute(action: "CreatePhoneEmail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证手机邮箱
    ///
    /// 此接口用于创建有效的手机、邮箱
    @inlinable @discardableResult
    public func createPhoneEmail(code: String, type: UInt64, verifyCode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePhoneEmailResponse> {
        self.createPhoneEmail(.init(code: code, type: type, verifyCode: verifyCode), region: region, logger: logger, on: eventLoop)
    }

    /// 验证手机邮箱
    ///
    /// 此接口用于创建有效的手机、邮箱
    @inlinable @discardableResult
    public func createPhoneEmail(code: String, type: UInt64, verifyCode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePhoneEmailResponse {
        try await self.createPhoneEmail(.init(code: code, type: type, verifyCode: verifyCode), region: region, logger: logger, on: eventLoop)
    }
}
