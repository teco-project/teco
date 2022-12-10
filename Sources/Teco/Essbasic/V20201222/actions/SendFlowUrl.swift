//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Essbasic {
    /// 发送流程并生成签署URL
    ///
    /// 发送流程并获取签署URL
    @inlinable
    public func sendFlowUrl(_ input: SendFlowUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SendFlowUrlResponse > {
        self.client.execute(action: "SendFlowUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 发送流程并生成签署URL
    ///
    /// 发送流程并获取签署URL
    @inlinable
    public func sendFlowUrl(_ input: SendFlowUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendFlowUrlResponse {
        try await self.client.execute(action: "SendFlowUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// SendFlowUrl请求参数结构体
    public struct SendFlowUrlRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller
        
        /// 需要推送合同的流程ID
        public let flowId: String
        
        /// 签署人ID
        public let userId: String
        
        /// 签署控件信息 (支持添加多个控件)
        public let signComponents: [Component]
        
        /// 签署人手机号 (如果选择短信验证码签署，则此字段必填)
        public let mobile: String?
        
        /// 签署人对应的子机构ID，个人签署者此字段不填
        public let subOrganizationId: String?
        
        /// 签名后校验方式：
        /// 1. WEIXINAPP - 微信小程序；
        /// 2. FACEID - 慧眼 (默认) ；
        /// 3. VERIFYCODE - 验证码；
        /// 4. NONE - 无。此选项为白名单参数，暂不支持公开调用。如需开通权限，请通过客户经理或邮件至e-contract@tencent.com与我们联系；
        /// 5. THIRD - 第三方 (暂不支持)
        /// 6. OFFLINE - 线下人工审核
        public let verifyChannel: [String]?
        
        /// 签署链接失效截止时间，默认为7天
        public let deadline: Int64?
        
        /// 是否为最后一个签署人。若为最后一人，本次签署完成以后自动归档
        public let isLastApprover: Bool?
        
        /// 签署完成后，前端跳转的url
        public let jumpUrl: String?
        
        /// 短信模板
        /// 默认使用腾讯电子签官方短信模板，如有自定义需求，请通过客户经理或邮件至e-contract@tencent.com与我们联系。
        public let smsTemplate: SmsTemplate
        
        /// 签署前置条件：是否要全文阅读，默认否
        public let isFullText: Bool?
        
        /// 签署前置条件：强制用户阅读待签署文件时长，默认不限制
        public let preReadTime: Int64?
        
        /// 当前参与者是否支持线下核身,默认为不支持
        public let canOffLine: Bool?
        
        /// 签署任务的回调地址
        public let callbackUrl: String?
        
        public init (caller: Caller, flowId: String, userId: String, signComponents: [Component], mobile: String?, subOrganizationId: String?, verifyChannel: [String]?, deadline: Int64?, isLastApprover: Bool?, jumpUrl: String?, smsTemplate: SmsTemplate, isFullText: Bool?, preReadTime: Int64?, canOffLine: Bool?, callbackUrl: String?) {
            self.caller = caller
            self.flowId = flowId
            self.userId = userId
            self.signComponents = signComponents
            self.mobile = mobile
            self.subOrganizationId = subOrganizationId
            self.verifyChannel = verifyChannel
            self.deadline = deadline
            self.isLastApprover = isLastApprover
            self.jumpUrl = jumpUrl
            self.smsTemplate = smsTemplate
            self.isFullText = isFullText
            self.preReadTime = preReadTime
            self.canOffLine = canOffLine
            self.callbackUrl = callbackUrl
        }
        
        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case flowId = "FlowId"
            case userId = "UserId"
            case signComponents = "SignComponents"
            case mobile = "Mobile"
            case subOrganizationId = "SubOrganizationId"
            case verifyChannel = "VerifyChannel"
            case deadline = "Deadline"
            case isLastApprover = "IsLastApprover"
            case jumpUrl = "JumpUrl"
            case smsTemplate = "SmsTemplate"
            case isFullText = "IsFullText"
            case preReadTime = "PreReadTime"
            case canOffLine = "CanOffLine"
            case callbackUrl = "CallbackUrl"
        }
    }
    
    /// SendFlowUrl返回参数结构体
    public struct SendFlowUrlResponse: TCResponseModel {
        /// 签署任务ID，标识每一次的流程发送
        public let signId: String
        
        /// 签署链接
        public let signUrl: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case signId = "SignId"
            case signUrl = "SignUrl"
            case requestId = "RequestId"
        }
    }
}
