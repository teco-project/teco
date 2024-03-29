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
    /// CreatePrepareFlow请求参数结构体
    public struct CreatePrepareFlowRequest: TCRequest {
        /// 执行本接口操作的员工信息。使用此接口时，必须填写userId。
        /// 支持填入集团子公司经办人 userId 代发合同。
        ///
        /// 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        public let `operator`: UserInfo

        /// 资源id，与ResourceType相对应，取值范围：
        ///
        /// - 文件Id（通过UploadFiles获取文件资源Id）
        /// - 模板Id
        public let resourceId: String

        /// 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        public let flowName: String

        /// 合同流程的签署顺序类型：
        ///
        /// - **false**：(默认)有序签署, 本合同多个参与人需要依次签署
        /// - **true**：无序签署, 本合同多个参与人没有先后签署限制
        public let unordered: Bool?

        /// 合同流程的签署截止时间，格式为Unix标准时间戳（秒），如果未设置签署截止时间，则默认为合同流程创建后的365天时截止。
        public let deadline: Int64?

        /// 用户自定义合同类型Id
        ///
        /// 该id为电子签企业内的合同类型id， 可以在控制台-合同-自定义合同类型处获取
        /// 注: `该参数如果和FlowType同时传，以该参数优先生效`
        public let userFlowTypeId: String?

        /// 合同流程的类别分类（可自定义名称，如销售合同/入职合同等），最大长度为200个字符，仅限中文、字母、数字和下划线组成。
        public let flowType: String?

        /// 合同流程的参与方列表，最多可支持50个参与方，可在列表中指定企业B端签署方和个人C端签署方的联系和认证方式等信息，具体定义可以参考开发者中心的ApproverInfo结构体。
        ///
        /// 如果合同流程是有序签署，Approvers列表中参与人的顺序就是默认的签署顺序，请确保列表中参与人的顺序符合实际签署顺序。
        public let approvers: [FlowCreateApprover]?

        /// 开启或者关闭智能添加填写区：
        ///
        /// - **OPEN**：开启（默认值）
        /// - **CLOSE**：关闭
        public let intelligentStatus: String?

        /// 资源类型，取值有：
        ///
        /// - **1**：模板
        /// - **2**：文件（默认值）
        public let resourceType: Int64?

        /// 该字段已废弃，请使用InitiatorComponents
        public let components: Component?

        /// 发起合同个性化参数
        /// 用于满足创建及页面操作过程中的个性化要求
        /// 具体定制化内容详见数据接口说明
        public let flowOption: CreateFlowOption?

        /// 发起方企业的签署人进行签署操作前，是否需要企业内部走审批流程，取值如下：
        ///
        /// - **false**：（默认）不需要审批，直接签署。
        /// - **true**：需要走审批流程。当到对应参与人签署时，会阻塞其签署操作，等待企业内部审批完成。
        /// 企业可以通过CreateFlowSignReview审批接口通知腾讯电子签平台企业内部审批结果
        ///
        /// - 如果企业通知腾讯电子签平台审核通过，签署方可继续签署动作。
        /// - 如果企业通知腾讯电子签平台审核未通过，平台将继续阻塞签署方的签署动作，直到企业通知平台审核通过。
        /// 注：`此功能可用于与企业内部的审批流程进行关联，支持手动、静默签署合同`
        public let needSignReview: Bool?

        /// 发起方企业的签署人进行发起操作是否需要企业内部审批。使用此功能需要发起方企业有参与签署。
        ///
        /// 若设置为true，发起审核结果需通过接口 CreateFlowSignReview 通知电子签，审核通过后，发起方企业签署人方可进行发起操作，否则会阻塞其发起操作。
        public let needCreateReview: Bool?

        /// 调用方自定义的个性化字段(可自定义此名称)，并以base64方式编码，支持的最大数据大小为 20480长度。
        ///
        /// 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。回调的相关说明可参考开发者中心的[回调通知](https://qian.tencent.com/developers/company/callback_types_v2)模块。
        public let userData: String?

        /// 合同Id：用于通过一个已发起的合同快速生成一个发起流程web链接
        /// 注: `该参数必须是一个待发起审核的合同id，并且还未审核通过`
        public let flowId: String?

        /// 代理企业和员工的信息。
        /// 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        public let agent: Agent?

        /// 模板或者合同中的填写控件列表，列表中可支持下列多种填写控件，控件的详细定义参考开发者中心的Component结构体
        public let initiatorComponents: [Component]?

        public init(operator: UserInfo, resourceId: String, flowName: String, unordered: Bool? = nil, deadline: Int64? = nil, userFlowTypeId: String? = nil, flowType: String? = nil, approvers: [FlowCreateApprover]? = nil, intelligentStatus: String? = nil, resourceType: Int64? = nil, components: Component? = nil, flowOption: CreateFlowOption? = nil, needSignReview: Bool? = nil, needCreateReview: Bool? = nil, userData: String? = nil, flowId: String? = nil, agent: Agent? = nil, initiatorComponents: [Component]? = nil) {
            self.operator = `operator`
            self.resourceId = resourceId
            self.flowName = flowName
            self.unordered = unordered
            self.deadline = deadline
            self.userFlowTypeId = userFlowTypeId
            self.flowType = flowType
            self.approvers = approvers
            self.intelligentStatus = intelligentStatus
            self.resourceType = resourceType
            self.components = components
            self.flowOption = flowOption
            self.needSignReview = needSignReview
            self.needCreateReview = needCreateReview
            self.userData = userData
            self.flowId = flowId
            self.agent = agent
            self.initiatorComponents = initiatorComponents
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case resourceId = "ResourceId"
            case flowName = "FlowName"
            case unordered = "Unordered"
            case deadline = "Deadline"
            case userFlowTypeId = "UserFlowTypeId"
            case flowType = "FlowType"
            case approvers = "Approvers"
            case intelligentStatus = "IntelligentStatus"
            case resourceType = "ResourceType"
            case components = "Components"
            case flowOption = "FlowOption"
            case needSignReview = "NeedSignReview"
            case needCreateReview = "NeedCreateReview"
            case userData = "UserData"
            case flowId = "FlowId"
            case agent = "Agent"
            case initiatorComponents = "InitiatorComponents"
        }
    }

    /// CreatePrepareFlow返回参数结构体
    public struct CreatePrepareFlowResponse: TCResponse {
        /// 发起流程的web页面链接，有效期5分钟
        public let url: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case requestId = "RequestId"
        }
    }

    /// 创建发起流程web页面
    ///
    /// 创建发起流程web页面
    ///
    /// 适用场景：通过该接口（CreatePrepareFlow）传入合同文件/模板编号及签署人信息，可获得发起流程的可嵌入页面，在页面完成签署控件等信息的编辑与确认后，快速发起流程。
    ///
    /// 注：该接口包含模板/文件发起流程的全部功能，调用接口后不会立即发起，需在可嵌入页面点击按钮进行发起流程。
    @inlinable
    public func createPrepareFlow(_ input: CreatePrepareFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrepareFlowResponse> {
        self.client.execute(action: "CreatePrepareFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建发起流程web页面
    ///
    /// 创建发起流程web页面
    ///
    /// 适用场景：通过该接口（CreatePrepareFlow）传入合同文件/模板编号及签署人信息，可获得发起流程的可嵌入页面，在页面完成签署控件等信息的编辑与确认后，快速发起流程。
    ///
    /// 注：该接口包含模板/文件发起流程的全部功能，调用接口后不会立即发起，需在可嵌入页面点击按钮进行发起流程。
    @inlinable
    public func createPrepareFlow(_ input: CreatePrepareFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrepareFlowResponse {
        try await self.client.execute(action: "CreatePrepareFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建发起流程web页面
    ///
    /// 创建发起流程web页面
    ///
    /// 适用场景：通过该接口（CreatePrepareFlow）传入合同文件/模板编号及签署人信息，可获得发起流程的可嵌入页面，在页面完成签署控件等信息的编辑与确认后，快速发起流程。
    ///
    /// 注：该接口包含模板/文件发起流程的全部功能，调用接口后不会立即发起，需在可嵌入页面点击按钮进行发起流程。
    @inlinable
    public func createPrepareFlow(operator: UserInfo, resourceId: String, flowName: String, unordered: Bool? = nil, deadline: Int64? = nil, userFlowTypeId: String? = nil, flowType: String? = nil, approvers: [FlowCreateApprover]? = nil, intelligentStatus: String? = nil, resourceType: Int64? = nil, components: Component? = nil, flowOption: CreateFlowOption? = nil, needSignReview: Bool? = nil, needCreateReview: Bool? = nil, userData: String? = nil, flowId: String? = nil, agent: Agent? = nil, initiatorComponents: [Component]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrepareFlowResponse> {
        self.createPrepareFlow(.init(operator: `operator`, resourceId: resourceId, flowName: flowName, unordered: unordered, deadline: deadline, userFlowTypeId: userFlowTypeId, flowType: flowType, approvers: approvers, intelligentStatus: intelligentStatus, resourceType: resourceType, components: components, flowOption: flowOption, needSignReview: needSignReview, needCreateReview: needCreateReview, userData: userData, flowId: flowId, agent: agent, initiatorComponents: initiatorComponents), region: region, logger: logger, on: eventLoop)
    }

    /// 创建发起流程web页面
    ///
    /// 创建发起流程web页面
    ///
    /// 适用场景：通过该接口（CreatePrepareFlow）传入合同文件/模板编号及签署人信息，可获得发起流程的可嵌入页面，在页面完成签署控件等信息的编辑与确认后，快速发起流程。
    ///
    /// 注：该接口包含模板/文件发起流程的全部功能，调用接口后不会立即发起，需在可嵌入页面点击按钮进行发起流程。
    @inlinable
    public func createPrepareFlow(operator: UserInfo, resourceId: String, flowName: String, unordered: Bool? = nil, deadline: Int64? = nil, userFlowTypeId: String? = nil, flowType: String? = nil, approvers: [FlowCreateApprover]? = nil, intelligentStatus: String? = nil, resourceType: Int64? = nil, components: Component? = nil, flowOption: CreateFlowOption? = nil, needSignReview: Bool? = nil, needCreateReview: Bool? = nil, userData: String? = nil, flowId: String? = nil, agent: Agent? = nil, initiatorComponents: [Component]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrepareFlowResponse {
        try await self.createPrepareFlow(.init(operator: `operator`, resourceId: resourceId, flowName: flowName, unordered: unordered, deadline: deadline, userFlowTypeId: userFlowTypeId, flowType: flowType, approvers: approvers, intelligentStatus: intelligentStatus, resourceType: resourceType, components: components, flowOption: flowOption, needSignReview: needSignReview, needCreateReview: needCreateReview, userData: userData, flowId: flowId, agent: agent, initiatorComponents: initiatorComponents), region: region, logger: logger, on: eventLoop)
    }
}
