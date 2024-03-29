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
    /// CreateFlowByFiles请求参数结构体
    public struct CreateFlowByFilesRequest: TCRequest {
        /// 执行本接口操作的员工信息。使用此接口时，必须填写userId。
        /// 支持填入集团子公司经办人 userId 代发合同。
        ///
        /// 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        public let `operator`: UserInfo

        /// 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        ///
        /// 该名称还将用于合同签署完成后的下载文件名。
        public let flowName: String

        /// 合同流程的参与方列表，最多可支持50个参与方，可在列表中指定企业B端签署方和个人C端签署方的联系和认证方式等信息，具体定义可以参考开发者中心的ApproverInfo结构体。
        ///
        /// 如果合同流程是有序签署，Approvers列表中参与人的顺序就是默认的签署顺序，请确保列表中参与人的顺序符合实际签署顺序。
        public let approvers: [ApproverInfo]

        /// 本合同流程需包含的PDF文件资源编号列表，通过[UploadFiles](https://qian.tencent.com/developers/companyApis/templatesAndFiles/UploadFiles)接口获取PDF文件资源编号。
        ///
        /// 注:  `目前，此接口仅支持单个文件发起。`
        public let fileIds: [String]

        /// 合同流程描述信息(可自定义此描述)，最大长度1000个字符。
        public let flowDescription: String?

        /// 合同流程的类别分类（可自定义名称，如销售合同/入职合同等），最大长度为200个字符，仅限中文、字母、数字和下划线组成。
        public let flowType: String?

        /// 模板或者合同中的填写控件列表，列表中可支持下列多种填写控件，控件的详细定义参考开发者中心的Component结构体
        ///
        /// - 单行文本控件
        /// - 多行文本控件
        /// - 勾选框控件
        /// - 数字控件
        /// - 图片控件
        /// - 动态表格等填写控件
        public let components: [Component]?

        /// 合同流程的抄送人列表，最多可支持50个抄送人，抄送人可查看合同内容及签署进度，但无需参与合同签署。
        ///
        /// 注:`此功能为白名单功能，使用前请联系对接的客户经理沟通。`
        public let ccInfos: [CcInfo]?

        /// 可以设置以下时间节点来给抄送人发送短信通知来查看合同内容：
        ///
        /// - **0**：合同发起时通知（默认值）
        /// - **1**：签署完成后通知
        public let ccNotifyType: Int64?

        /// 是否为预览模式，取值如下：
        ///
        /// - **false**：非预览模式（默认），会产生合同流程并返回合同流程编号FlowId。
        /// - **true**：预览模式，不产生合同流程，不返回合同流程编号FlowId，而是返回预览链接PreviewUrl，有效期为300秒，用于查看真实发起后合同的样子。
        public let needPreview: Bool?

        /// 预览模式下产生的预览链接类型
        ///
        /// - **0** :(默认) 文件流 ,点开后后下载预览的合同PDF文件
        /// - **1** :H5链接 ,点开后在浏览器中展示合同的样子
        /// 注: `此参数在NeedPreview 为true时有效`
        public let previewType: Int64?

        /// 合同流程的签署截止时间，格式为Unix标准时间戳（秒），如果未设置签署截止时间，则默认为合同流程创建后的365天时截止。
        /// 如果在签署截止时间前未完成签署，则合同状态会变为已过期，导致合同作废。
        public let deadline: Int64?

        /// 合同到期提醒时间，为Unix标准时间戳（秒）格式，支持的范围是从发起时间开始到后10年内。
        ///
        /// 到达提醒时间后，腾讯电子签会短信通知发起方企业合同提醒，可用于处理合同到期事务，如合同续签等事宜。
        public let remindedOn: Int64?

        /// 合同流程的签署顺序类型：
        ///
        /// - **false**：(默认)有序签署, 本合同多个参与人需要依次签署
        /// - **true**：无序签署, 本合同多个参与人没有先后签署限制
        public let unordered: Bool?

        /// 您可以自定义腾讯电子签小程序合同列表页展示的合同内容模板，模板中支持以下变量：
        ///
        /// - {合同名称}
        /// - {发起方企业}
        /// - {发起方姓名}
        /// - {签署方N企业}
        /// - {签署方N姓名}
        /// 其中，N表示签署方的编号，从1开始，不能超过签署人的数量。
        ///
        /// 例如，如果是腾讯公司张三发给李四名称为“租房合同”的合同，您可以将此字段设置为：`合同名称:{合同名称};发起方: {发起方企业}({发起方姓名});签署方:{签署方1姓名}`，则小程序中列表页展示此合同为以下样子
        ///
        /// 合同名称：租房合同
        /// 发起方：腾讯公司(张三)
        /// 签署方：李四
        public let customShowMap: String?

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

        /// 调用方自定义的个性化字段(可自定义此名称)，并以base64方式编码，支持的最大数据大小为 20480长度。
        ///
        /// 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。回调的相关说明可参考开发者中心的[回调通知](https://qian.tencent.com/developers/company/callback_types_v2)模块。
        public let userData: String?

        /// 指定个人签署方查看合同的校验方式
        ///
        /// - **VerifyCheck**  :（默认）人脸识别,人脸识别后才能合同内容
        /// - **MobileCheck**  :  手机号验证, 用户手机号和参与方手机号（ApproverMobile）相同即可查看合同内容（当手写签名方式为OCR_ESIGN时，该校验方式无效，因为这种签名方式依赖实名认证）
        public let approverVerifyType: String?

        /// 签署方签署控件（印章/签名等）的生成方式：
        ///
        /// - **0**：在合同流程发起时，由发起人指定签署方的签署控件的位置和数量。
        /// - **1**：签署方在签署时自行添加签署控件，可以拖动位置和控制数量。
        public let signBeanTag: Int64?

        /// 代理企业和员工的信息。
        /// 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        public let agent: Agent?

        /// 个人自动签名的使用场景包括以下, 个人自动签署(即ApproverType设置成个人自动签署时)业务此值必传：
        ///
        /// - **E_PRESCRIPTION_AUTO_SIGN**：处方单（医疗自动签）
        /// 注: `个人自动签名场景是白名单功能，使用前请与对接的客户经理联系沟通。`
        public let autoSignScene: String?

        public init(operator: UserInfo, flowName: String, approvers: [ApproverInfo], fileIds: [String], flowDescription: String? = nil, flowType: String? = nil, components: [Component]? = nil, ccInfos: [CcInfo]? = nil, ccNotifyType: Int64? = nil, needPreview: Bool? = nil, previewType: Int64? = nil, deadline: Int64? = nil, remindedOn: Int64? = nil, unordered: Bool? = nil, customShowMap: String? = nil, needSignReview: Bool? = nil, userData: String? = nil, approverVerifyType: String? = nil, signBeanTag: Int64? = nil, agent: Agent? = nil, autoSignScene: String? = nil) {
            self.operator = `operator`
            self.flowName = flowName
            self.approvers = approvers
            self.fileIds = fileIds
            self.flowDescription = flowDescription
            self.flowType = flowType
            self.components = components
            self.ccInfos = ccInfos
            self.ccNotifyType = ccNotifyType
            self.needPreview = needPreview
            self.previewType = previewType
            self.deadline = deadline
            self.remindedOn = remindedOn
            self.unordered = unordered
            self.customShowMap = customShowMap
            self.needSignReview = needSignReview
            self.userData = userData
            self.approverVerifyType = approverVerifyType
            self.signBeanTag = signBeanTag
            self.agent = agent
            self.autoSignScene = autoSignScene
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowName = "FlowName"
            case approvers = "Approvers"
            case fileIds = "FileIds"
            case flowDescription = "FlowDescription"
            case flowType = "FlowType"
            case components = "Components"
            case ccInfos = "CcInfos"
            case ccNotifyType = "CcNotifyType"
            case needPreview = "NeedPreview"
            case previewType = "PreviewType"
            case deadline = "Deadline"
            case remindedOn = "RemindedOn"
            case unordered = "Unordered"
            case customShowMap = "CustomShowMap"
            case needSignReview = "NeedSignReview"
            case userData = "UserData"
            case approverVerifyType = "ApproverVerifyType"
            case signBeanTag = "SignBeanTag"
            case agent = "Agent"
            case autoSignScene = "AutoSignScene"
        }
    }

    /// CreateFlowByFiles返回参数结构体
    public struct CreateFlowByFilesResponse: TCResponse {
        /// 合同流程ID，为32位字符串。
        /// 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。
        /// 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        ///
        /// 注: 如果是预览模式(即NeedPreview设置为true)时, 此处不会有值返回。
        public let flowId: String

        /// 合同预览链接URL。
        ///
        /// 注：如果是预览模式(即NeedPreview设置为true)时, 才会有此预览链接URL
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let previewUrl: String?

        /// 签署方信息，如角色ID、角色名称等
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let approvers: [ApproverItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case previewUrl = "PreviewUrl"
            case approvers = "Approvers"
            case requestId = "RequestId"
        }
    }

    /// 用PDF文件创建签署流程
    ///
    /// 此接口（CreateFlowByFiles）用来通过上传后的pdf资源编号来创建待签署的合同流程。
    ///
    /// 适用场景1：适用非制式的合同文件签署。一般开发者自己有完整的签署文件，可以通过该接口传入完整的PDF文件及流程信息生成待签署的合同流程。
    ///
    /// 适用场景2：可通过该接口传入制式合同文件，同时在指定位置添加签署控件。可以起到接口创建临时模板的效果。如果是标准的制式文件，建议使用模板功能生成模板ID进行合同流程的生成。
    ///
    /// 注意事项：该接口需要依赖“多文件上传”接口生成pdf资源编号（FileIds）进行使用。
    @inlinable
    public func createFlowByFiles(_ input: CreateFlowByFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowByFilesResponse> {
        self.client.execute(action: "CreateFlowByFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用PDF文件创建签署流程
    ///
    /// 此接口（CreateFlowByFiles）用来通过上传后的pdf资源编号来创建待签署的合同流程。
    ///
    /// 适用场景1：适用非制式的合同文件签署。一般开发者自己有完整的签署文件，可以通过该接口传入完整的PDF文件及流程信息生成待签署的合同流程。
    ///
    /// 适用场景2：可通过该接口传入制式合同文件，同时在指定位置添加签署控件。可以起到接口创建临时模板的效果。如果是标准的制式文件，建议使用模板功能生成模板ID进行合同流程的生成。
    ///
    /// 注意事项：该接口需要依赖“多文件上传”接口生成pdf资源编号（FileIds）进行使用。
    @inlinable
    public func createFlowByFiles(_ input: CreateFlowByFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowByFilesResponse {
        try await self.client.execute(action: "CreateFlowByFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用PDF文件创建签署流程
    ///
    /// 此接口（CreateFlowByFiles）用来通过上传后的pdf资源编号来创建待签署的合同流程。
    ///
    /// 适用场景1：适用非制式的合同文件签署。一般开发者自己有完整的签署文件，可以通过该接口传入完整的PDF文件及流程信息生成待签署的合同流程。
    ///
    /// 适用场景2：可通过该接口传入制式合同文件，同时在指定位置添加签署控件。可以起到接口创建临时模板的效果。如果是标准的制式文件，建议使用模板功能生成模板ID进行合同流程的生成。
    ///
    /// 注意事项：该接口需要依赖“多文件上传”接口生成pdf资源编号（FileIds）进行使用。
    @inlinable
    public func createFlowByFiles(operator: UserInfo, flowName: String, approvers: [ApproverInfo], fileIds: [String], flowDescription: String? = nil, flowType: String? = nil, components: [Component]? = nil, ccInfos: [CcInfo]? = nil, ccNotifyType: Int64? = nil, needPreview: Bool? = nil, previewType: Int64? = nil, deadline: Int64? = nil, remindedOn: Int64? = nil, unordered: Bool? = nil, customShowMap: String? = nil, needSignReview: Bool? = nil, userData: String? = nil, approverVerifyType: String? = nil, signBeanTag: Int64? = nil, agent: Agent? = nil, autoSignScene: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowByFilesResponse> {
        self.createFlowByFiles(.init(operator: `operator`, flowName: flowName, approvers: approvers, fileIds: fileIds, flowDescription: flowDescription, flowType: flowType, components: components, ccInfos: ccInfos, ccNotifyType: ccNotifyType, needPreview: needPreview, previewType: previewType, deadline: deadline, remindedOn: remindedOn, unordered: unordered, customShowMap: customShowMap, needSignReview: needSignReview, userData: userData, approverVerifyType: approverVerifyType, signBeanTag: signBeanTag, agent: agent, autoSignScene: autoSignScene), region: region, logger: logger, on: eventLoop)
    }

    /// 用PDF文件创建签署流程
    ///
    /// 此接口（CreateFlowByFiles）用来通过上传后的pdf资源编号来创建待签署的合同流程。
    ///
    /// 适用场景1：适用非制式的合同文件签署。一般开发者自己有完整的签署文件，可以通过该接口传入完整的PDF文件及流程信息生成待签署的合同流程。
    ///
    /// 适用场景2：可通过该接口传入制式合同文件，同时在指定位置添加签署控件。可以起到接口创建临时模板的效果。如果是标准的制式文件，建议使用模板功能生成模板ID进行合同流程的生成。
    ///
    /// 注意事项：该接口需要依赖“多文件上传”接口生成pdf资源编号（FileIds）进行使用。
    @inlinable
    public func createFlowByFiles(operator: UserInfo, flowName: String, approvers: [ApproverInfo], fileIds: [String], flowDescription: String? = nil, flowType: String? = nil, components: [Component]? = nil, ccInfos: [CcInfo]? = nil, ccNotifyType: Int64? = nil, needPreview: Bool? = nil, previewType: Int64? = nil, deadline: Int64? = nil, remindedOn: Int64? = nil, unordered: Bool? = nil, customShowMap: String? = nil, needSignReview: Bool? = nil, userData: String? = nil, approverVerifyType: String? = nil, signBeanTag: Int64? = nil, agent: Agent? = nil, autoSignScene: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowByFilesResponse {
        try await self.createFlowByFiles(.init(operator: `operator`, flowName: flowName, approvers: approvers, fileIds: fileIds, flowDescription: flowDescription, flowType: flowType, components: components, ccInfos: ccInfos, ccNotifyType: ccNotifyType, needPreview: needPreview, previewType: previewType, deadline: deadline, remindedOn: remindedOn, unordered: unordered, customShowMap: customShowMap, needSignReview: needSignReview, userData: userData, approverVerifyType: approverVerifyType, signBeanTag: signBeanTag, agent: agent, autoSignScene: autoSignScene), region: region, logger: logger, on: eventLoop)
    }
}
