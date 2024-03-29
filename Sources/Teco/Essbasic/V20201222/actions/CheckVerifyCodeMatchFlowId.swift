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

extension Essbasic {
    /// CheckVerifyCodeMatchFlowId请求参数结构体
    public struct CheckVerifyCodeMatchFlowIdRequest: TCRequest {
        /// 调用方信息
        public let caller: Caller

        /// 手机号
        public let mobile: String

        /// 验证码
        public let verifyCode: String

        /// 流程(目录) id
        public let flowId: String

        public init(caller: Caller, mobile: String, verifyCode: String, flowId: String) {
            self.caller = caller
            self.mobile = mobile
            self.verifyCode = verifyCode
            self.flowId = flowId
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case mobile = "Mobile"
            case verifyCode = "VerifyCode"
            case flowId = "FlowId"
        }
    }

    /// CheckVerifyCodeMatchFlowId返回参数结构体
    public struct CheckVerifyCodeMatchFlowIdResponse: TCResponse {
        /// true: 验证码正确，false: 验证码错误
        public let success: Bool

        /// 0: 验证码正确 1:验证码错误或过期 2:验证码错误 3:验证码和流程不匹配 4:验证码输入错误超过次数 5:内部错误
        /// 6:参数错误
        public let result: Int64

        /// 结果描述
        public let description: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case result = "Result"
            case description = "Description"
            case requestId = "RequestId"
        }
    }

    /// 确认验证码
    ///
    /// 此接口用于确认验证码是否正确
    @inlinable
    public func checkVerifyCodeMatchFlowId(_ input: CheckVerifyCodeMatchFlowIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckVerifyCodeMatchFlowIdResponse> {
        self.client.execute(action: "CheckVerifyCodeMatchFlowId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 确认验证码
    ///
    /// 此接口用于确认验证码是否正确
    @inlinable
    public func checkVerifyCodeMatchFlowId(_ input: CheckVerifyCodeMatchFlowIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckVerifyCodeMatchFlowIdResponse {
        try await self.client.execute(action: "CheckVerifyCodeMatchFlowId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 确认验证码
    ///
    /// 此接口用于确认验证码是否正确
    @inlinable
    public func checkVerifyCodeMatchFlowId(caller: Caller, mobile: String, verifyCode: String, flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckVerifyCodeMatchFlowIdResponse> {
        self.checkVerifyCodeMatchFlowId(.init(caller: caller, mobile: mobile, verifyCode: verifyCode, flowId: flowId), region: region, logger: logger, on: eventLoop)
    }

    /// 确认验证码
    ///
    /// 此接口用于确认验证码是否正确
    @inlinable
    public func checkVerifyCodeMatchFlowId(caller: Caller, mobile: String, verifyCode: String, flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckVerifyCodeMatchFlowIdResponse {
        try await self.checkVerifyCodeMatchFlowId(.init(caller: caller, mobile: mobile, verifyCode: verifyCode, flowId: flowId), region: region, logger: logger, on: eventLoop)
    }
}
