//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ses {
    /// 发送邮件
    ///
    /// 您可以通过此API发送HTML或者TEXT邮件，适用于触发类邮件（验证码、交易类）。默认仅支持使用模板发送邮件。
    @inlinable
    public func sendEmail(_ input: SendEmailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SendEmailResponse > {
        self.client.execute(action: "SendEmail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 发送邮件
    ///
    /// 您可以通过此API发送HTML或者TEXT邮件，适用于触发类邮件（验证码、交易类）。默认仅支持使用模板发送邮件。
    @inlinable
    public func sendEmail(_ input: SendEmailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendEmailResponse {
        try await self.client.execute(action: "SendEmail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// SendEmail请求参数结构体
    public struct SendEmailRequest: TCRequestModel {
        /// 发信邮件地址。请填写发件人邮箱地址，例如：noreply@mail.qcloud.com
        /// 如需填写发件人说明，请按照如下方式： 
        /// 别名 <邮箱地址>
        public let fromEmailAddress: String
        
        /// 收信人邮箱地址，最多支持群发50人。注意：邮件内容会显示所有收件人地址，非群发邮件请多次调用API发送。
        public let destination: [String]
        
        /// 邮件主题
        public let subject: String
        
        /// 邮件的“回复”电子邮件地址。可以填写您能收到邮件的邮箱地址，可以是个人邮箱。如果不填，收件人的回复邮件将会发送失败。
        public let replyToAddresses: String?
        
        /// 使用模板发送时，填写的模板相关参数。因 Simple 已经废除使用，Template 为必填项
        public let template: Template
        
        /// 已废弃
        public let simple: Simple
        
        /// 需要发送附件时，填写附件相关参数。腾讯云接口请求最大支持 8M 的请求包，附件内容经过 Base64 预期扩大1.5倍，应该控制所有附件的总大小最大在 4M 以内，整体请求超出 8M 时接口会返回错误
        public let attachments: [Attachment]?
        
        /// 退订选项 1: 加入退订链接 0: 不加入退订链接
        public let unsubscribe: String?
        
        /// 邮件触发类型 0:非触发类，默认类型，营销类邮件、非即时类邮件等选择此类型  1:触发类，验证码等即时发送类邮件，若邮件超过一定大小，系统会自动选择非触发类型通道
        public let triggerType: UInt64?
        
        public init (fromEmailAddress: String, destination: [String], subject: String, replyToAddresses: String?, template: Template, simple: Simple, attachments: [Attachment]?, unsubscribe: String?, triggerType: UInt64?) {
            self.fromEmailAddress = fromEmailAddress
            self.destination = destination
            self.subject = subject
            self.replyToAddresses = replyToAddresses
            self.template = template
            self.simple = simple
            self.attachments = attachments
            self.unsubscribe = unsubscribe
            self.triggerType = triggerType
        }
        
        enum CodingKeys: String, CodingKey {
            case fromEmailAddress = "FromEmailAddress"
            case destination = "Destination"
            case subject = "Subject"
            case replyToAddresses = "ReplyToAddresses"
            case template = "Template"
            case simple = "Simple"
            case attachments = "Attachments"
            case unsubscribe = "Unsubscribe"
            case triggerType = "TriggerType"
        }
    }
    
    /// SendEmail返回参数结构体
    public struct SendEmailResponse: TCResponseModel {
        /// 接受消息生成的唯一消息标识符。
        public let messageId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case messageId = "MessageId"
            case requestId = "RequestId"
        }
    }
}