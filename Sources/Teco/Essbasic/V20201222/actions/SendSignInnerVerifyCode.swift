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

extension Essbasic {
    /// SendSignInnerVerifyCode请求参数结构体
    public struct SendSignInnerVerifyCodeRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 手机号
        public let mobile: String

        /// 验证码类型，取值(SIGN)
        public let verifyType: String

        /// 用户 id
        public let userId: String?

        /// 模板 id
        public let verifyTemplateId: String?

        /// 签名
        public let verifySign: String?

        /// 流程(目录) id
        public let flowId: String?

        /// 三要素检测结果
        public let checkThreeElementResult: Int64?

        public init(caller: Caller, mobile: String, verifyType: String, userId: String? = nil, verifyTemplateId: String? = nil, verifySign: String? = nil, flowId: String? = nil, checkThreeElementResult: Int64? = nil) {
            self.caller = caller
            self.mobile = mobile
            self.verifyType = verifyType
            self.userId = userId
            self.verifyTemplateId = verifyTemplateId
            self.verifySign = verifySign
            self.flowId = flowId
            self.checkThreeElementResult = checkThreeElementResult
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case mobile = "Mobile"
            case verifyType = "VerifyType"
            case userId = "UserId"
            case verifyTemplateId = "VerifyTemplateId"
            case verifySign = "VerifySign"
            case flowId = "FlowId"
            case checkThreeElementResult = "CheckThreeElementResult"
        }
    }

    /// SendSignInnerVerifyCode返回参数结构体
    public struct SendSignInnerVerifyCodeResponse: TCResponseModel {
        /// true: 验证码正确，false: 验证码错误
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 发送签署验证码
    ///
    /// 此接口用于发送签署验证码
    @inlinable
    public func sendSignInnerVerifyCode(_ input: SendSignInnerVerifyCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendSignInnerVerifyCodeResponse> {
        self.client.execute(action: "SendSignInnerVerifyCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发送签署验证码
    ///
    /// 此接口用于发送签署验证码
    @inlinable
    public func sendSignInnerVerifyCode(_ input: SendSignInnerVerifyCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendSignInnerVerifyCodeResponse {
        try await self.client.execute(action: "SendSignInnerVerifyCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发送签署验证码
    ///
    /// 此接口用于发送签署验证码
    @inlinable
    public func sendSignInnerVerifyCode(caller: Caller, mobile: String, verifyType: String, userId: String? = nil, verifyTemplateId: String? = nil, verifySign: String? = nil, flowId: String? = nil, checkThreeElementResult: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendSignInnerVerifyCodeResponse> {
        self.sendSignInnerVerifyCode(.init(caller: caller, mobile: mobile, verifyType: verifyType, userId: userId, verifyTemplateId: verifyTemplateId, verifySign: verifySign, flowId: flowId, checkThreeElementResult: checkThreeElementResult), region: region, logger: logger, on: eventLoop)
    }

    /// 发送签署验证码
    ///
    /// 此接口用于发送签署验证码
    @inlinable
    public func sendSignInnerVerifyCode(caller: Caller, mobile: String, verifyType: String, userId: String? = nil, verifyTemplateId: String? = nil, verifySign: String? = nil, flowId: String? = nil, checkThreeElementResult: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendSignInnerVerifyCodeResponse {
        try await self.sendSignInnerVerifyCode(.init(caller: caller, mobile: mobile, verifyType: verifyType, userId: userId, verifyTemplateId: verifyTemplateId, verifySign: verifySign, flowId: flowId, checkThreeElementResult: checkThreeElementResult), region: region, logger: logger, on: eventLoop)
    }
}
