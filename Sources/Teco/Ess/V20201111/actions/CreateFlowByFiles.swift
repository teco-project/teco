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
    public struct CreateFlowByFilesRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填。支持填入集团子公司经办人 userId 代发合同
        public let `operator`: UserInfo

        /// 签署流程名称,最大长度200个字符
        public let flowName: String

        /// 签署参与者信息，最大限制50方
        public let approvers: [ApproverInfo]

        /// 签署pdf文件的资源编号列表，通过UploadFiles接口获取，暂时仅支持单文件发起
        public let fileIds: [String]

        /// 签署流程的类型(如销售合同/入职合同等)，最大长度200个字符
        public let flowType: String?

        /// 经办人内容控件配置
        public let components: [Component]?

        /// 被抄送人的信息列表。
        /// 注:此功能为白名单功能，若有需要，请联系电子签客服开白使用
        public let ccInfos: [CcInfo]?

        /// 是否需要预览，true：预览模式，false：非预览（默认）；
        /// 预览链接有效期300秒；
        ///
        /// 注：如果使用“预览模式”，出参会返回合同预览链接 PreviewUrl，不会正式发起合同，且出参不会返回签署流程编号 FlowId；如果使用“非预览”，则会正常返回签署流程编号 FlowId，不会生成合同预览链接 PreviewUrl。
        public let needPreview: Bool?

        /// 预览链接类型 默认:0-文件流, 1- H5链接 注意:此参数在NeedPreview 为true 时有效,
        public let previewType: Int64?

        /// 签署流程的签署截止时间。
        /// 值为unix时间戳,精确到秒,不传默认为当前时间一年后
        public let deadline: Int64?

        /// 发送类型：
        /// true：无序签
        /// false：有序签
        /// 注：默认为false（有序签）
        public let unordered: Bool?

        /// 合同显示的页卡模板，说明：只支持{合同名称}, {发起方企业}, {发起方姓名}, {签署方N企业}, {签署方N姓名}，且N不能超过签署人的数量，N从1开始
        public let customShowMap: String?

        /// 发起方企业的签署人进行签署操作是否需要企业内部审批。使用此功能需要发起方企业有参与签署。
        /// 若设置为true，审核结果需通过接口 CreateFlowSignReview 通知电子签，审核通过后，发起方企业签署人方可进行签署操作，否则会阻塞其签署操作。
        ///
        /// 注：企业可以通过此功能与企业内部的审批流程进行关联，支持手动、静默签署合同。
        public let needSignReview: Bool?

        /// 用户自定义字段，回调的时候会进行透传，长度需要小于20480
        public let userData: String?

        /// 签署人校验方式
        /// VerifyCheck: 人脸识别（默认）
        /// MobileCheck：手机号验证
        /// 参数说明：可选人脸识别或手机号验证两种方式，若选择后者，未实名个人签署方在签署合同时，无需经过实名认证和意愿确认两次人脸识别，该能力仅适用于个人签署方。
        public let approverVerifyType: String?

        /// 签署流程描述,最大长度1000个字符
        public let flowDescription: String?

        /// 标识是否允许发起后添加控件。0为不允许1为允许。如果为1，创建的时候不能有签署控件，只能创建后添加。注意发起后添加控件功能不支持添加骑缝章和签批控件
        public let signBeanTag: Int64?

        /// 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        public let agent: Agent?

        /// 给关注人发送短信通知的类型，0-合同发起时通知 1-签署完成后通知
        public let ccNotifyType: Int64?

        public init(operator: UserInfo, flowName: String, approvers: [ApproverInfo], fileIds: [String], flowType: String? = nil, components: [Component]? = nil, ccInfos: [CcInfo]? = nil, needPreview: Bool? = nil, previewType: Int64? = nil, deadline: Int64? = nil, unordered: Bool? = nil, customShowMap: String? = nil, needSignReview: Bool? = nil, userData: String? = nil, approverVerifyType: String? = nil, flowDescription: String? = nil, signBeanTag: Int64? = nil, agent: Agent? = nil, ccNotifyType: Int64? = nil) {
            self.operator = `operator`
            self.flowName = flowName
            self.approvers = approvers
            self.fileIds = fileIds
            self.flowType = flowType
            self.components = components
            self.ccInfos = ccInfos
            self.needPreview = needPreview
            self.previewType = previewType
            self.deadline = deadline
            self.unordered = unordered
            self.customShowMap = customShowMap
            self.needSignReview = needSignReview
            self.userData = userData
            self.approverVerifyType = approverVerifyType
            self.flowDescription = flowDescription
            self.signBeanTag = signBeanTag
            self.agent = agent
            self.ccNotifyType = ccNotifyType
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowName = "FlowName"
            case approvers = "Approvers"
            case fileIds = "FileIds"
            case flowType = "FlowType"
            case components = "Components"
            case ccInfos = "CcInfos"
            case needPreview = "NeedPreview"
            case previewType = "PreviewType"
            case deadline = "Deadline"
            case unordered = "Unordered"
            case customShowMap = "CustomShowMap"
            case needSignReview = "NeedSignReview"
            case userData = "UserData"
            case approverVerifyType = "ApproverVerifyType"
            case flowDescription = "FlowDescription"
            case signBeanTag = "SignBeanTag"
            case agent = "Agent"
            case ccNotifyType = "CcNotifyType"
        }
    }

    /// CreateFlowByFiles返回参数结构体
    public struct CreateFlowByFilesResponse: TCResponseModel {
        /// 签署流程编号。
        ///
        /// 注：如入参 是否需要预览 NeedPreview 设置为 true，不会正式发起合同，此处不会有值返回；如入参 是否需要预览 NeedPreview 设置为 false，此处会正常返回签署流程编号 FlowId。
        public let flowId: String

        /// 合同预览链接。
        ///
        /// 注：如入参 是否需要预览 NeedPreview 设置为 true，会开启“预览模式”，此处会返回预览链接；如入参 是否需要预览 NeedPreview 设置为 false，此处不会有值返回。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let previewUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case previewUrl = "PreviewUrl"
            case requestId = "RequestId"
        }
    }

    /// 用PDF文件创建签署流程
    ///
    /// 此接口（CreateFlowByFiles）用来通过上传后的pdf资源编号来创建待签署的合同流程。
    /// 适用场景1：适用非制式的合同文件签署。一般开发者自己有完整的签署文件，可以通过该接口传入完整的PDF文件及流程信息生成待签署的合同流程。
    /// 适用场景2：可通过该接口传入制式合同文件，同时在指定位置添加签署控件。可以起到接口创建临时模板的效果。如果是标准的制式文件，建议使用模板功能生成模板ID进行合同流程的生成。
    /// 注意事项：该接口需要依赖“多文件上传”接口生成pdf资源编号（FileIds）进行使用。
    @inlinable
    public func createFlowByFiles(_ input: CreateFlowByFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowByFilesResponse> {
        self.client.execute(action: "CreateFlowByFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用PDF文件创建签署流程
    ///
    /// 此接口（CreateFlowByFiles）用来通过上传后的pdf资源编号来创建待签署的合同流程。
    /// 适用场景1：适用非制式的合同文件签署。一般开发者自己有完整的签署文件，可以通过该接口传入完整的PDF文件及流程信息生成待签署的合同流程。
    /// 适用场景2：可通过该接口传入制式合同文件，同时在指定位置添加签署控件。可以起到接口创建临时模板的效果。如果是标准的制式文件，建议使用模板功能生成模板ID进行合同流程的生成。
    /// 注意事项：该接口需要依赖“多文件上传”接口生成pdf资源编号（FileIds）进行使用。
    @inlinable
    public func createFlowByFiles(_ input: CreateFlowByFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowByFilesResponse {
        try await self.client.execute(action: "CreateFlowByFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用PDF文件创建签署流程
    ///
    /// 此接口（CreateFlowByFiles）用来通过上传后的pdf资源编号来创建待签署的合同流程。
    /// 适用场景1：适用非制式的合同文件签署。一般开发者自己有完整的签署文件，可以通过该接口传入完整的PDF文件及流程信息生成待签署的合同流程。
    /// 适用场景2：可通过该接口传入制式合同文件，同时在指定位置添加签署控件。可以起到接口创建临时模板的效果。如果是标准的制式文件，建议使用模板功能生成模板ID进行合同流程的生成。
    /// 注意事项：该接口需要依赖“多文件上传”接口生成pdf资源编号（FileIds）进行使用。
    @inlinable
    public func createFlowByFiles(operator: UserInfo, flowName: String, approvers: [ApproverInfo], fileIds: [String], flowType: String? = nil, components: [Component]? = nil, ccInfos: [CcInfo]? = nil, needPreview: Bool? = nil, previewType: Int64? = nil, deadline: Int64? = nil, unordered: Bool? = nil, customShowMap: String? = nil, needSignReview: Bool? = nil, userData: String? = nil, approverVerifyType: String? = nil, flowDescription: String? = nil, signBeanTag: Int64? = nil, agent: Agent? = nil, ccNotifyType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowByFilesResponse> {
        self.createFlowByFiles(.init(operator: `operator`, flowName: flowName, approvers: approvers, fileIds: fileIds, flowType: flowType, components: components, ccInfos: ccInfos, needPreview: needPreview, previewType: previewType, deadline: deadline, unordered: unordered, customShowMap: customShowMap, needSignReview: needSignReview, userData: userData, approverVerifyType: approverVerifyType, flowDescription: flowDescription, signBeanTag: signBeanTag, agent: agent, ccNotifyType: ccNotifyType), region: region, logger: logger, on: eventLoop)
    }

    /// 用PDF文件创建签署流程
    ///
    /// 此接口（CreateFlowByFiles）用来通过上传后的pdf资源编号来创建待签署的合同流程。
    /// 适用场景1：适用非制式的合同文件签署。一般开发者自己有完整的签署文件，可以通过该接口传入完整的PDF文件及流程信息生成待签署的合同流程。
    /// 适用场景2：可通过该接口传入制式合同文件，同时在指定位置添加签署控件。可以起到接口创建临时模板的效果。如果是标准的制式文件，建议使用模板功能生成模板ID进行合同流程的生成。
    /// 注意事项：该接口需要依赖“多文件上传”接口生成pdf资源编号（FileIds）进行使用。
    @inlinable
    public func createFlowByFiles(operator: UserInfo, flowName: String, approvers: [ApproverInfo], fileIds: [String], flowType: String? = nil, components: [Component]? = nil, ccInfos: [CcInfo]? = nil, needPreview: Bool? = nil, previewType: Int64? = nil, deadline: Int64? = nil, unordered: Bool? = nil, customShowMap: String? = nil, needSignReview: Bool? = nil, userData: String? = nil, approverVerifyType: String? = nil, flowDescription: String? = nil, signBeanTag: Int64? = nil, agent: Agent? = nil, ccNotifyType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowByFilesResponse {
        try await self.createFlowByFiles(.init(operator: `operator`, flowName: flowName, approvers: approvers, fileIds: fileIds, flowType: flowType, components: components, ccInfos: ccInfos, needPreview: needPreview, previewType: previewType, deadline: deadline, unordered: unordered, customShowMap: customShowMap, needSignReview: needSignReview, userData: userData, approverVerifyType: approverVerifyType, flowDescription: flowDescription, signBeanTag: signBeanTag, agent: agent, ccNotifyType: ccNotifyType), region: region, logger: logger, on: eventLoop)
    }
}
