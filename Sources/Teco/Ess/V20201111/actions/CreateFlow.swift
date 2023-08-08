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

extension Ess {
    /// CreateFlow请求参数结构体
    public struct CreateFlowRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填。支持填入集团子公司经办人 userId代发合同。
        public let `operator`: UserInfo

        /// 签署流程名称,最大长度200个字符
        public let flowName: String

        /// 签署流程参与者信息，最大限制50方
        /// 注意 approver中的顺序需要和模板中的顺序保持一致， 否则会导致模板中配置的信息无效。
        public let approvers: [FlowCreateApprover]

        /// 签署流程的类型(如销售合同/入职合同等)，最大长度200个字符
        public let flowType: String?

        /// 客户端Token，保持接口幂等性,最大长度64个字符
        public let clientToken: String?

        /// 签署流程的签署截止时间。
        /// 值为unix时间戳,精确到秒,不传默认为当前时间一年后
        public let deadLine: Int64?

        /// 合同到期提醒时间戳，单位秒。设定该值后，可以提前进行到期通知，方便客户处理合同到期事务，如合同续签等。该值支持的范围是从发起时间起到往后的10年内。仅合同发起方企业的发起人可以编辑修改。
        public let remindedOn: Int64?

        /// 用户自定义字段，回调的时候会进行透传，长度需要小于20480
        public let userData: String?

        /// 签署流程描述,最大长度1000个字符
        public let flowDescription: String?

        /// 发送类型：
        /// true：无序签
        /// false：有序签
        /// 注：默认为false（有序签），请和模板中的配置保持一致
        public let unordered: Bool?

        /// 合同显示的页卡模板，说明：只支持{合同名称}, {发起方企业}, {发起方姓名}, {签署方N企业}, {签署方N姓名}，且N不能超过签署人的数量，N从1开始
        public let customShowMap: String?

        /// 发起方企业的签署人进行签署操作是否需要企业内部审批。使用此功能需要发起方企业有参与签署。
        /// 若设置为true，审核结果需通过接口 CreateFlowSignReview 通知电子签，审核通过后，发起方企业签署人方可进行签署操作，否则会阻塞其签署操作。
        ///
        /// 注：企业可以通过此功能与企业内部的审批流程进行关联，支持手动、静默签署合同。
        public let needSignReview: Bool?

        /// 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        public let agent: Agent?

        /// 被抄送人的信息列表。
        /// 注: 此功能为白名单功能，若有需要，请联系电子签客服开白使用。
        public let ccInfos: [CcInfo]?

        /// 个人自动签场景。发起自动签署时，需设置对应自动签署场景，目前仅支持场景：处方单-E_PRESCRIPTION_AUTO_SIGN
        public let autoSignScene: String?

        /// 暂未开放
        public let relatedFlowId: String?

        /// 暂未开放
        public let callbackUrl: String?

        public init(operator: UserInfo, flowName: String, approvers: [FlowCreateApprover], flowType: String? = nil, clientToken: String? = nil, deadLine: Int64? = nil, remindedOn: Int64? = nil, userData: String? = nil, flowDescription: String? = nil, unordered: Bool? = nil, customShowMap: String? = nil, needSignReview: Bool? = nil, agent: Agent? = nil, ccInfos: [CcInfo]? = nil, autoSignScene: String? = nil, relatedFlowId: String? = nil, callbackUrl: String? = nil) {
            self.operator = `operator`
            self.flowName = flowName
            self.approvers = approvers
            self.flowType = flowType
            self.clientToken = clientToken
            self.deadLine = deadLine
            self.remindedOn = remindedOn
            self.userData = userData
            self.flowDescription = flowDescription
            self.unordered = unordered
            self.customShowMap = customShowMap
            self.needSignReview = needSignReview
            self.agent = agent
            self.ccInfos = ccInfos
            self.autoSignScene = autoSignScene
            self.relatedFlowId = relatedFlowId
            self.callbackUrl = callbackUrl
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowName = "FlowName"
            case approvers = "Approvers"
            case flowType = "FlowType"
            case clientToken = "ClientToken"
            case deadLine = "DeadLine"
            case remindedOn = "RemindedOn"
            case userData = "UserData"
            case flowDescription = "FlowDescription"
            case unordered = "Unordered"
            case customShowMap = "CustomShowMap"
            case needSignReview = "NeedSignReview"
            case agent = "Agent"
            case ccInfos = "CcInfos"
            case autoSignScene = "AutoSignScene"
            case relatedFlowId = "RelatedFlowId"
            case callbackUrl = "CallbackUrl"
        }
    }

    /// CreateFlow返回参数结构体
    public struct CreateFlowResponse: TCResponseModel {
        /// 签署流程编号
        public let flowId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 模板发起合同-创建签署流程
    ///
    /// 通过模板创建签署流程<br/>
    /// 适用场景：在标准制式的合同场景中，可通过提前预制好模板文件，每次调用模板文件的id，补充合同内容信息及签署信息生成电子合同。<br/>
    /// 注：该接口是通过模板生成合同流程的前置接口，先创建一个不包含签署文件的流程。<br/>
    /// 配合“创建电子文档”接口和“发起流程”接口使用。<br/>
    @inlinable
    public func createFlow(_ input: CreateFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowResponse> {
        self.client.execute(action: "CreateFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 模板发起合同-创建签署流程
    ///
    /// 通过模板创建签署流程<br/>
    /// 适用场景：在标准制式的合同场景中，可通过提前预制好模板文件，每次调用模板文件的id，补充合同内容信息及签署信息生成电子合同。<br/>
    /// 注：该接口是通过模板生成合同流程的前置接口，先创建一个不包含签署文件的流程。<br/>
    /// 配合“创建电子文档”接口和“发起流程”接口使用。<br/>
    @inlinable
    public func createFlow(_ input: CreateFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowResponse {
        try await self.client.execute(action: "CreateFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 模板发起合同-创建签署流程
    ///
    /// 通过模板创建签署流程<br/>
    /// 适用场景：在标准制式的合同场景中，可通过提前预制好模板文件，每次调用模板文件的id，补充合同内容信息及签署信息生成电子合同。<br/>
    /// 注：该接口是通过模板生成合同流程的前置接口，先创建一个不包含签署文件的流程。<br/>
    /// 配合“创建电子文档”接口和“发起流程”接口使用。<br/>
    @inlinable
    public func createFlow(operator: UserInfo, flowName: String, approvers: [FlowCreateApprover], flowType: String? = nil, clientToken: String? = nil, deadLine: Int64? = nil, remindedOn: Int64? = nil, userData: String? = nil, flowDescription: String? = nil, unordered: Bool? = nil, customShowMap: String? = nil, needSignReview: Bool? = nil, agent: Agent? = nil, ccInfos: [CcInfo]? = nil, autoSignScene: String? = nil, relatedFlowId: String? = nil, callbackUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowResponse> {
        self.createFlow(.init(operator: `operator`, flowName: flowName, approvers: approvers, flowType: flowType, clientToken: clientToken, deadLine: deadLine, remindedOn: remindedOn, userData: userData, flowDescription: flowDescription, unordered: unordered, customShowMap: customShowMap, needSignReview: needSignReview, agent: agent, ccInfos: ccInfos, autoSignScene: autoSignScene, relatedFlowId: relatedFlowId, callbackUrl: callbackUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 模板发起合同-创建签署流程
    ///
    /// 通过模板创建签署流程<br/>
    /// 适用场景：在标准制式的合同场景中，可通过提前预制好模板文件，每次调用模板文件的id，补充合同内容信息及签署信息生成电子合同。<br/>
    /// 注：该接口是通过模板生成合同流程的前置接口，先创建一个不包含签署文件的流程。<br/>
    /// 配合“创建电子文档”接口和“发起流程”接口使用。<br/>
    @inlinable
    public func createFlow(operator: UserInfo, flowName: String, approvers: [FlowCreateApprover], flowType: String? = nil, clientToken: String? = nil, deadLine: Int64? = nil, remindedOn: Int64? = nil, userData: String? = nil, flowDescription: String? = nil, unordered: Bool? = nil, customShowMap: String? = nil, needSignReview: Bool? = nil, agent: Agent? = nil, ccInfos: [CcInfo]? = nil, autoSignScene: String? = nil, relatedFlowId: String? = nil, callbackUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowResponse {
        try await self.createFlow(.init(operator: `operator`, flowName: flowName, approvers: approvers, flowType: flowType, clientToken: clientToken, deadLine: deadLine, remindedOn: remindedOn, userData: userData, flowDescription: flowDescription, unordered: unordered, customShowMap: customShowMap, needSignReview: needSignReview, agent: agent, ccInfos: ccInfos, autoSignScene: autoSignScene, relatedFlowId: relatedFlowId, callbackUrl: callbackUrl), region: region, logger: logger, on: eventLoop)
    }
}
