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
    /// SignFlow请求参数结构体
    public struct SignFlowRequest: TCRequest {
        /// 调用方信息
        public let caller: Caller

        /// 流程编号
        public let flowId: String

        /// 意愿确认票据。
        /// 1. VerifyChannel 为 WEIXINAPP，使用响应的VerifyResult；
        /// 2. VerifyChannel 为 FACEID时，使用OrderNo；
        /// 3. VerifyChannel 为 VERIFYCODE，使用短信验证码
        /// 4. VerifyChannel 为 NONE，传空值
        /// （注：普通情况下，VerifyResult不能为None，如您不希望腾讯电子签对用户签署意愿做校验，请提前与客户经理或邮件至e-contract@tencent.com与我们联系）
        public let verifyResult: String

        /// 意愿确认渠道：
        /// 1. WEIXINAPP - 微信小程序
        /// 2. FACEID - 慧眼 (默认)
        /// 3. VERIFYCODE - 验证码
        /// 4. THIRD - 第三方 (暂不支持)
        /// 5. NONE - 无需电子签系统验证
        /// （注：普通情况下，VerifyChannel不能为None，如您不希望腾讯电子签对用户签署意愿做校验，请提前与客户经理或邮件至e-contract@tencent.com与我们联系）
        public let verifyChannel: String

        /// 客户端来源IP
        public let sourceIp: String

        /// 签署内容
        public let signSeals: [SignSeal]

        /// 签署备注
        public let approveMessage: String?

        /// 签署参与者编号
        public let signId: String?

        public init(caller: Caller, flowId: String, verifyResult: String, verifyChannel: String, sourceIp: String, signSeals: [SignSeal], approveMessage: String? = nil, signId: String? = nil) {
            self.caller = caller
            self.flowId = flowId
            self.verifyResult = verifyResult
            self.verifyChannel = verifyChannel
            self.sourceIp = sourceIp
            self.signSeals = signSeals
            self.approveMessage = approveMessage
            self.signId = signId
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case flowId = "FlowId"
            case verifyResult = "VerifyResult"
            case verifyChannel = "VerifyChannel"
            case sourceIp = "SourceIp"
            case signSeals = "SignSeals"
            case approveMessage = "ApproveMessage"
            case signId = "SignId"
        }
    }

    /// SignFlow返回参数结构体
    public struct SignFlowResponse: TCResponse {
        /// 签署任务状态。签署成功 - SUCCESS、提交审核 - REVIEW
        public let status: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 签署流程
    ///
    /// 此接口（SignFlow）可用于对流程文件进行签署。
    @inlinable
    public func signFlow(_ input: SignFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SignFlowResponse> {
        self.client.execute(action: "SignFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 签署流程
    ///
    /// 此接口（SignFlow）可用于对流程文件进行签署。
    @inlinable
    public func signFlow(_ input: SignFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SignFlowResponse {
        try await self.client.execute(action: "SignFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 签署流程
    ///
    /// 此接口（SignFlow）可用于对流程文件进行签署。
    @inlinable
    public func signFlow(caller: Caller, flowId: String, verifyResult: String, verifyChannel: String, sourceIp: String, signSeals: [SignSeal], approveMessage: String? = nil, signId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SignFlowResponse> {
        self.signFlow(.init(caller: caller, flowId: flowId, verifyResult: verifyResult, verifyChannel: verifyChannel, sourceIp: sourceIp, signSeals: signSeals, approveMessage: approveMessage, signId: signId), region: region, logger: logger, on: eventLoop)
    }

    /// 签署流程
    ///
    /// 此接口（SignFlow）可用于对流程文件进行签署。
    @inlinable
    public func signFlow(caller: Caller, flowId: String, verifyResult: String, verifyChannel: String, sourceIp: String, signSeals: [SignSeal], approveMessage: String? = nil, signId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SignFlowResponse {
        try await self.signFlow(.init(caller: caller, flowId: flowId, verifyResult: verifyResult, verifyChannel: verifyChannel, sourceIp: sourceIp, signSeals: signSeals, approveMessage: approveMessage, signId: signId), region: region, logger: logger, on: eventLoop)
    }
}
