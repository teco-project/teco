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

extension Ds {
    /// CheckVcode请求参数结构体
    public struct CheckVcodeRequest: TCRequest {
        /// 模块名VerifyCode
        public let module: String

        /// 操作名CheckVcode
        public let operation: String

        /// 帐号ID
        public let accountResId: String

        /// 合同ID
        public let contractResId: String

        /// 验证码
        public let verifyCode: String

        public init(module: String, operation: String, accountResId: String, contractResId: String, verifyCode: String) {
            self.module = module
            self.operation = operation
            self.accountResId = accountResId
            self.contractResId = contractResId
            self.verifyCode = verifyCode
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case accountResId = "AccountResId"
            case contractResId = "ContractResId"
            case verifyCode = "VerifyCode"
        }
    }

    /// CheckVcode返回参数结构体
    public struct CheckVcodeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 检测验证码
    ///
    /// 检测验证码接口。此接口用于企业电子合同平台通过给用户发送短信验证码，以短信授权方式签署合同。此接口配合发送验证码接口使用。
    ///
    /// 用户在企业电子合同平台输入收到的验证码后，由企业电子合同平台调用该接口向腾讯云提交确认受托签署合同验证码命令。验证码验证正确时，本次合同签署的授权成功。
    @inlinable @discardableResult
    public func checkVcode(_ input: CheckVcodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckVcodeResponse> {
        self.client.execute(action: "CheckVcode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检测验证码
    ///
    /// 检测验证码接口。此接口用于企业电子合同平台通过给用户发送短信验证码，以短信授权方式签署合同。此接口配合发送验证码接口使用。
    ///
    /// 用户在企业电子合同平台输入收到的验证码后，由企业电子合同平台调用该接口向腾讯云提交确认受托签署合同验证码命令。验证码验证正确时，本次合同签署的授权成功。
    @inlinable @discardableResult
    public func checkVcode(_ input: CheckVcodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckVcodeResponse {
        try await self.client.execute(action: "CheckVcode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检测验证码
    ///
    /// 检测验证码接口。此接口用于企业电子合同平台通过给用户发送短信验证码，以短信授权方式签署合同。此接口配合发送验证码接口使用。
    ///
    /// 用户在企业电子合同平台输入收到的验证码后，由企业电子合同平台调用该接口向腾讯云提交确认受托签署合同验证码命令。验证码验证正确时，本次合同签署的授权成功。
    @inlinable @discardableResult
    public func checkVcode(module: String, operation: String, accountResId: String, contractResId: String, verifyCode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckVcodeResponse> {
        self.checkVcode(.init(module: module, operation: operation, accountResId: accountResId, contractResId: contractResId, verifyCode: verifyCode), region: region, logger: logger, on: eventLoop)
    }

    /// 检测验证码
    ///
    /// 检测验证码接口。此接口用于企业电子合同平台通过给用户发送短信验证码，以短信授权方式签署合同。此接口配合发送验证码接口使用。
    ///
    /// 用户在企业电子合同平台输入收到的验证码后，由企业电子合同平台调用该接口向腾讯云提交确认受托签署合同验证码命令。验证码验证正确时，本次合同签署的授权成功。
    @inlinable @discardableResult
    public func checkVcode(module: String, operation: String, accountResId: String, contractResId: String, verifyCode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckVcodeResponse {
        try await self.checkVcode(.init(module: module, operation: operation, accountResId: accountResId, contractResId: contractResId, verifyCode: verifyCode), region: region, logger: logger, on: eventLoop)
    }
}
