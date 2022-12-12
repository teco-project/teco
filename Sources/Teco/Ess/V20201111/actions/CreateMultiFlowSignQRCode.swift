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

extension Ess {
    /// CreateMultiFlowSignQRCode请求参数结构体
    public struct CreateMultiFlowSignQRCodeRequest: TCRequestModel {
        /// 用户信息
        public let `operator`: UserInfo
        
        /// 模板ID
        public let templateId: String
        
        /// 签署流程名称，最大长度不超过200字符
        public let flowName: String
        
        /// 最大可发起签署流程份数，默认5份 
        /// 发起流程数量超过此上限后二维码自动失效
        public let maxFlowNum: Int64?
        
        /// 签署流程有效天数 默认7天 最高设置不超过30天
        public let flowEffectiveDay: Int64?
        
        /// 二维码有效天数 默认7天 最高设置不超过90天
        public let qrEffectiveDay: Int64?
        
        /// 限制二维码用户条件
        public let restrictions: [ApproverRestriction]?
        
        /// 回调地址,最大长度1000字符串
        /// 回调时机：
        /// 用户通过签署二维码发起签署流程时，企业额度不足导致失败
        public let callbackUrl: String?
        
        /// 应用信息
        public let agent: Agent?
        
        /// 限制二维码用户条件（已弃用）
        public let approverRestrictions: ApproverRestriction?
        
        public init (`operator`: UserInfo, templateId: String, flowName: String, maxFlowNum: Int64? = nil, flowEffectiveDay: Int64? = nil, qrEffectiveDay: Int64? = nil, restrictions: [ApproverRestriction]? = nil, callbackUrl: String? = nil, agent: Agent? = nil, approverRestrictions: ApproverRestriction? = nil) {
            self.`operator` = `operator`
            self.templateId = templateId
            self.flowName = flowName
            self.maxFlowNum = maxFlowNum
            self.flowEffectiveDay = flowEffectiveDay
            self.qrEffectiveDay = qrEffectiveDay
            self.restrictions = restrictions
            self.callbackUrl = callbackUrl
            self.agent = agent
            self.approverRestrictions = approverRestrictions
        }
        
        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case templateId = "TemplateId"
            case flowName = "FlowName"
            case maxFlowNum = "MaxFlowNum"
            case flowEffectiveDay = "FlowEffectiveDay"
            case qrEffectiveDay = "QrEffectiveDay"
            case restrictions = "Restrictions"
            case callbackUrl = "CallbackUrl"
            case agent = "Agent"
            case approverRestrictions = "ApproverRestrictions"
        }
    }
    
    /// CreateMultiFlowSignQRCode返回参数结构体
    public struct CreateMultiFlowSignQRCodeResponse: TCResponseModel {
        /// 签署二维码对象
        public let qrCode: SignQrCode
        
        /// 签署链接对象
        public let signUrls: SignUrl
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case qrCode = "QrCode"
            case signUrls = "SignUrls"
            case requestId = "RequestId"
        }
    }
    
    /// 创建一码多扫流程签署二维码
    ///
    /// 此接口（CreateMultiFlowSignQRCode）用于创建一码多扫流程签署二维码。
    /// 适用场景：无需填写签署人信息，可通过模板id生成签署二维码，签署人可通过扫描二维码补充签署信息进行实名签署。常用于提前不知道签署人的身份信息场景，例如：劳务工招工、大批量员工入职等场景。
    /// 适用的模板仅限于B2C（1、无序签署，2、顺序签署时B静默签署，3、顺序签署时B非首位签署）、单C的模板，且模板中发起方没有填写控件。
    @inlinable
    public func createMultiFlowSignQRCode(_ input: CreateMultiFlowSignQRCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateMultiFlowSignQRCodeResponse > {
        self.client.execute(action: "CreateMultiFlowSignQRCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建一码多扫流程签署二维码
    ///
    /// 此接口（CreateMultiFlowSignQRCode）用于创建一码多扫流程签署二维码。
    /// 适用场景：无需填写签署人信息，可通过模板id生成签署二维码，签署人可通过扫描二维码补充签署信息进行实名签署。常用于提前不知道签署人的身份信息场景，例如：劳务工招工、大批量员工入职等场景。
    /// 适用的模板仅限于B2C（1、无序签署，2、顺序签署时B静默签署，3、顺序签署时B非首位签署）、单C的模板，且模板中发起方没有填写控件。
    @inlinable
    public func createMultiFlowSignQRCode(_ input: CreateMultiFlowSignQRCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMultiFlowSignQRCodeResponse {
        try await self.client.execute(action: "CreateMultiFlowSignQRCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
