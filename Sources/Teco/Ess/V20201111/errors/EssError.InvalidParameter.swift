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

extension TCEssError {
    public struct InvalidParameter: TCEssErrorType {
        enum Code: String {
            case approverType = "InvalidParameter.ApproverType"
            case businessId = "InvalidParameter.BusinessId"
            case businessType = "InvalidParameter.BusinessType"
            case cancelReason = "InvalidParameter.CancelReason"
            case cardNumber = "InvalidParameter.CardNumber"
            case cardType = "InvalidParameter.CardType"
            case ccNum = "InvalidParameter.CcNum"
            case clientToken = "InvalidParameter.ClientToken"
            case componentFileIndex = "InvalidParameter.ComponentFileIndex"
            case componentPage = "InvalidParameter.ComponentPage"
            case componentPosition = "InvalidParameter.ComponentPosition"
            case componentTypeNoMatchValue = "InvalidParameter.ComponentTypeNoMatchValue"
            case componentValue = "InvalidParameter.ComponentValue"
            case contentType = "InvalidParameter.ContentType"
            case customShowMap = "InvalidParameter.CustomShowMap"
            case dataExists = "InvalidParameter.DataExists"
            case dataNotFound = "InvalidParameter.DataNotFound"
            case departUserId = "InvalidParameter.DepartUserId"
            case emptyParams = "InvalidParameter.EmptyParams"
            case endPoint = "InvalidParameter.EndPoint"
            case flowCallbackUrl = "InvalidParameter.FlowCallbackUrl"
            case flowDeadLine = "InvalidParameter.FlowDeadLine"
            case flowDescription = "InvalidParameter.FlowDescription"
            case flowName = "InvalidParameter.FlowName"
            case flowType = "InvalidParameter.FlowType"
            case flowUserData = "InvalidParameter.FlowUserData"
            case fromSource = "InvalidParameter.FromSource"
            case idCardValidityOverLimit = "InvalidParameter.IdCardValidityOverLimit"
            case invalidChannel = "InvalidParameter.InvalidChannel"
            case invalidId = "InvalidParameter.InvalidId"
            case invalidLimit = "InvalidParameter.InvalidLimit"
            case invalidMobile = "InvalidParameter.InvalidMobile"
            case invalidName = "InvalidParameter.InvalidName"
            case invalidOffset = "InvalidParameter.InvalidOffset"
            case invalidOperatorId = "InvalidParameter.InvalidOperatorId"
            case invalidOrganizationId = "InvalidParameter.InvalidOrganizationId"
            case invalidOrganizationName = "InvalidParameter.InvalidOrganizationName"
            case invalidRoleId = "InvalidParameter.InvalidRoleId"
            case invalidRoleName = "InvalidParameter.InvalidRoleName"
            case invalidVerifyChannel = "InvalidParameter.InvalidVerifyChannel"
            case limit = "InvalidParameter.Limit"
            case missingRequiredComponentValue = "InvalidParameter.MissingRequiredComponentValue"
            case mobile = "InvalidParameter.Mobile"
            case name = "InvalidParameter.Name"
            case nonsupportMobile = "InvalidParameter.NonsupportMobile"
            case notifyType = "InvalidParameter.NotifyType"
            case offset = "InvalidParameter.Offset"
            case organizationName = "InvalidParameter.OrganizationName"
            case paramError = "InvalidParameter.ParamError"
            case personAutoSignTag = "InvalidParameter.PersonAutoSignTag"
            case preReadTime = "InvalidParameter.PreReadTime"
            case qrEffectDay = "InvalidParameter.QrEffectDay"
            case qrFlowEffectDay = "InvalidParameter.QrFlowEffectDay"
            case resourceType = "InvalidParameter.ResourceType"
            case roleId = "InvalidParameter.RoleId"
            case sealId = "InvalidParameter.SealId"
            case sensitive = "InvalidParameter.Sensitive"
            case signComponents = "InvalidParameter.SignComponents"
            case status = "InvalidParameter.Status"
            case templateId = "InvalidParameter.TemplateId"
            case verifyChannel = "InvalidParameter.VerifyChannel"
            case other = "InvalidParameter"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 不合法的签署人类型，请检查后重试。
        public static var approverType: InvalidParameter {
            InvalidParameter(.approverType)
        }

        /// 不合法的业务id，请检查是否传递，检查是否超过接口上限数量，并在修改后重试。
        public static var businessId: InvalidParameter {
            InvalidParameter(.businessId)
        }

        /// 不合法的业务类型，请检查后重试。
        public static var businessType: InvalidParameter {
            InvalidParameter(.businessType)
        }

        /// 不合法的撤销取消理由，将检查长度，内容，并在修改后重试。
        public static var cancelReason: InvalidParameter {
            InvalidParameter(.cancelReason)
        }

        /// 不合法的证件信息，请检查证件号证件类型是否正确。
        public static var cardNumber: InvalidParameter {
            InvalidParameter(.cardNumber)
        }

        /// 不合法的证件信息，请检查证件号证件类型是否正确。
        public static var cardType: InvalidParameter {
            InvalidParameter(.cardType)
        }

        /// 不合法的抄送方设置，请联系客服了解抄送设置规则，修改后重试。
        public static var ccNum: InvalidParameter {
            InvalidParameter(.ccNum)
        }

        /// ClientToken不合法请检查。
        public static var clientToken: InvalidParameter {
            InvalidParameter(.clientToken)
        }

        /// 不合法的控件所在文件序号，请检查文件资源与控件的对应关系，并在修改后重试。
        public static var componentFileIndex: InvalidParameter {
            InvalidParameter(.componentFileIndex)
        }

        /// 不合法的控件页码，请与文件资源检查，并在修改后重试。
        public static var componentPage: InvalidParameter {
            InvalidParameter(.componentPage)
        }

        /// 不合法的控件大小或坐标，请检查控件坐标，大小是否合理，并在修改后重试。
        public static var componentPosition: InvalidParameter {
            InvalidParameter(.componentPosition)
        }

        /// 控件的类型与输入值不匹配，请检查参数修改后重试。
        public static var componentTypeNoMatchValue: InvalidParameter {
            InvalidParameter(.componentTypeNoMatchValue)
        }

        /// 不合法的控件内容，请检查控件是否必填，检查控件内容是否正确设置，并在修改后重试。
        public static var componentValue: InvalidParameter {
            InvalidParameter(.componentValue)
        }

        /// 不合法的模板查询类型，请检查后重试。
        public static var contentType: InvalidParameter {
            InvalidParameter(.contentType)
        }

        /// 无效的自定义页卡模板，请检查后重试。
        public static var customShowMap: InvalidParameter {
            InvalidParameter(.customShowMap)
        }

        /// 数据已存在。
        public static var dataExists: InvalidParameter {
            InvalidParameter(.dataExists)
        }

        /// 数据不存在。
        public static var dataNotFound: InvalidParameter {
            InvalidParameter(.dataNotFound)
        }

        public static var departUserId: InvalidParameter {
            InvalidParameter(.departUserId)
        }

        /// 参数为空，请检查参数修改后重试。
        public static var emptyParams: InvalidParameter {
            InvalidParameter(.emptyParams)
        }

        /// 不合法的EndPoint，请检查修改后重试。
        public static var endPoint: InvalidParameter {
            InvalidParameter(.endPoint)
        }

        /// 不合法的签署流程回调链接，请修改后重试。
        public static var flowCallbackUrl: InvalidParameter {
            InvalidParameter(.flowCallbackUrl)
        }

        /// 不合法的签署流程截止日期，请修改后重试。
        public static var flowDeadLine: InvalidParameter {
            InvalidParameter(.flowDeadLine)
        }

        /// 不合法的签署流程描述，请修改后重试。
        public static var flowDescription: InvalidParameter {
            InvalidParameter(.flowDescription)
        }

        /// 不合法的签署流程名称，请修改后重试。
        public static var flowName: InvalidParameter {
            InvalidParameter(.flowName)
        }

        /// 不合法的签署流程类型，请修改后重试。
        public static var flowType: InvalidParameter {
            InvalidParameter(.flowType)
        }

        /// 不合法的签署流程用户自定义数据，请修改后重试。
        public static var flowUserData: InvalidParameter {
            InvalidParameter(.flowUserData)
        }

        /// 不合法的FromSource，请联系开发，检查后重试。
        public static var fromSource: InvalidParameter {
            InvalidParameter(.fromSource)
        }

        /// 用户个人证件已过期。
        public static var idCardValidityOverLimit: InvalidParameter {
            InvalidParameter(.idCardValidityOverLimit)
        }

        /// Channel不正确。
        public static var invalidChannel: InvalidParameter {
            InvalidParameter(.invalidChannel)
        }

        /// id类型参数不合法，请检查后重试。
        public static var invalidId: InvalidParameter {
            InvalidParameter(.invalidId)
        }

        /// 参数Limit不正确。
        public static var invalidLimit: InvalidParameter {
            InvalidParameter(.invalidLimit)
        }

        /// 手机号码不正确。
        public static var invalidMobile: InvalidParameter {
            InvalidParameter(.invalidMobile)
        }

        /// 姓名不正确。
        public static var invalidName: InvalidParameter {
            InvalidParameter(.invalidName)
        }

        /// 参数Offset不正确。
        public static var invalidOffset: InvalidParameter {
            InvalidParameter(.invalidOffset)
        }

        /// 操作人ID不正确。
        public static var invalidOperatorId: InvalidParameter {
            InvalidParameter(.invalidOperatorId)
        }

        /// 机构ID不正确。
        public static var invalidOrganizationId: InvalidParameter {
            InvalidParameter(.invalidOrganizationId)
        }

        /// 组织机构名称不正确。
        public static var invalidOrganizationName: InvalidParameter {
            InvalidParameter(.invalidOrganizationName)
        }

        /// 角色ID不正确。
        public static var invalidRoleId: InvalidParameter {
            InvalidParameter(.invalidRoleId)
        }

        /// 角色名称不正确。
        public static var invalidRoleName: InvalidParameter {
            InvalidParameter(.invalidRoleName)
        }

        /// 实名认证渠道不正确。
        public static var invalidVerifyChannel: InvalidParameter {
            InvalidParameter(.invalidVerifyChannel)
        }

        public static var limit: InvalidParameter {
            InvalidParameter(.limit)
        }

        /// 缺少必填控件的值。
        ///
        /// 请检查必填控件是否都已填充非空值。
        public static var missingRequiredComponentValue: InvalidParameter {
            InvalidParameter(.missingRequiredComponentValue)
        }

        /// 不合法的手机号，请检查后重试。
        ///
        /// 请确认手机号是正确的。
        public static var mobile: InvalidParameter {
            InvalidParameter(.mobile)
        }

        /// 不合法的用户名称，请修改后重试。
        ///
        /// 确认名字是否正确。
        public static var name: InvalidParameter {
            InvalidParameter(.name)
        }

        /// 修改手机号为合法的格式。
        public static var nonsupportMobile: InvalidParameter {
            InvalidParameter(.nonsupportMobile)
        }

        /// 不支持的通知类型，请检查并联系客服处理。
        public static var notifyType: InvalidParameter {
            InvalidParameter(.notifyType)
        }

        public static var offset: InvalidParameter {
            InvalidParameter(.offset)
        }

        /// 不合法的企业名称，请修改后重试。
        public static var organizationName: InvalidParameter {
            InvalidParameter(.organizationName)
        }

        /// 参数错误。
        public static var paramError: InvalidParameter {
            InvalidParameter(.paramError)
        }

        /// 个人静默签Tag未设置，请检查后重试。
        public static var personAutoSignTag: InvalidParameter {
            InvalidParameter(.personAutoSignTag)
        }

        /// 不合法的阅读时长限制，请联系客服了解阅读时长设置规则，修改后重试。
        public static var preReadTime: InvalidParameter {
            InvalidParameter(.preReadTime)
        }

        /// 签署二维码的有效期不合法，请联系客服了解规则，并修稿后重试。
        public static var qrEffectDay: InvalidParameter {
            InvalidParameter(.qrEffectDay)
        }

        /// 二维码合同的有效期不合法，请联系客服了解规则，并修稿后重试。
        public static var qrFlowEffectDay: InvalidParameter {
            InvalidParameter(.qrFlowEffectDay)
        }

        /// 不合法的资源类型，请联系客服了解，并在修改后重试。
        public static var resourceType: InvalidParameter {
            InvalidParameter(.resourceType)
        }

        public static var roleId: InvalidParameter {
            InvalidParameter(.roleId)
        }

        /// 不合法的印章id，请检查印章id是够正确，并在修改后重试。
        public static var sealId: InvalidParameter {
            InvalidParameter(.sealId)
        }

        /// 参数包含有敏感词
        public static var sensitive: InvalidParameter {
            InvalidParameter(.sensitive)
        }

        /// 签署控件参数不合法，请检查后重试。
        public static var signComponents: InvalidParameter {
            InvalidParameter(.signComponents)
        }

        /// 参数Status不正确。
        public static var status: InvalidParameter {
            InvalidParameter(.status)
        }

        /// 不合法的签署二维码模板id，请检查修改后重试。
        public static var templateId: InvalidParameter {
            InvalidParameter(.templateId)
        }

        /// 不合法的认证渠道，请联系客户了解电子签支持的认证渠道，并在修改后重试。
        public static var verifyChannel: InvalidParameter {
            InvalidParameter(.verifyChannel)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asEssError() -> TCEssError {
            let code: TCEssError.Code
            switch self.error {
            case .approverType:
                code = .invalidParameter_ApproverType
            case .businessId:
                code = .invalidParameter_BusinessId
            case .businessType:
                code = .invalidParameter_BusinessType
            case .cancelReason:
                code = .invalidParameter_CancelReason
            case .cardNumber:
                code = .invalidParameter_CardNumber
            case .cardType:
                code = .invalidParameter_CardType
            case .ccNum:
                code = .invalidParameter_CcNum
            case .clientToken:
                code = .invalidParameter_ClientToken
            case .componentFileIndex:
                code = .invalidParameter_ComponentFileIndex
            case .componentPage:
                code = .invalidParameter_ComponentPage
            case .componentPosition:
                code = .invalidParameter_ComponentPosition
            case .componentTypeNoMatchValue:
                code = .invalidParameter_ComponentTypeNoMatchValue
            case .componentValue:
                code = .invalidParameter_ComponentValue
            case .contentType:
                code = .invalidParameter_ContentType
            case .customShowMap:
                code = .invalidParameter_CustomShowMap
            case .dataExists:
                code = .invalidParameter_DataExists
            case .dataNotFound:
                code = .invalidParameter_DataNotFound
            case .departUserId:
                code = .invalidParameter_DepartUserId
            case .emptyParams:
                code = .invalidParameter_EmptyParams
            case .endPoint:
                code = .invalidParameter_EndPoint
            case .flowCallbackUrl:
                code = .invalidParameter_FlowCallbackUrl
            case .flowDeadLine:
                code = .invalidParameter_FlowDeadLine
            case .flowDescription:
                code = .invalidParameter_FlowDescription
            case .flowName:
                code = .invalidParameter_FlowName
            case .flowType:
                code = .invalidParameter_FlowType
            case .flowUserData:
                code = .invalidParameter_FlowUserData
            case .fromSource:
                code = .invalidParameter_FromSource
            case .idCardValidityOverLimit:
                code = .invalidParameter_IdCardValidityOverLimit
            case .invalidChannel:
                code = .invalidParameter_InvalidChannel
            case .invalidId:
                code = .invalidParameter_InvalidId
            case .invalidLimit:
                code = .invalidParameter_InvalidLimit
            case .invalidMobile:
                code = .invalidParameter_InvalidMobile
            case .invalidName:
                code = .invalidParameter_InvalidName
            case .invalidOffset:
                code = .invalidParameter_InvalidOffset
            case .invalidOperatorId:
                code = .invalidParameter_InvalidOperatorId
            case .invalidOrganizationId:
                code = .invalidParameter_InvalidOrganizationId
            case .invalidOrganizationName:
                code = .invalidParameter_InvalidOrganizationName
            case .invalidRoleId:
                code = .invalidParameter_InvalidRoleId
            case .invalidRoleName:
                code = .invalidParameter_InvalidRoleName
            case .invalidVerifyChannel:
                code = .invalidParameter_InvalidVerifyChannel
            case .limit:
                code = .invalidParameter_Limit
            case .missingRequiredComponentValue:
                code = .invalidParameter_MissingRequiredComponentValue
            case .mobile:
                code = .invalidParameter_Mobile
            case .name:
                code = .invalidParameter_Name
            case .nonsupportMobile:
                code = .invalidParameter_NonsupportMobile
            case .notifyType:
                code = .invalidParameter_NotifyType
            case .offset:
                code = .invalidParameter_Offset
            case .organizationName:
                code = .invalidParameter_OrganizationName
            case .paramError:
                code = .invalidParameter_ParamError
            case .personAutoSignTag:
                code = .invalidParameter_PersonAutoSignTag
            case .preReadTime:
                code = .invalidParameter_PreReadTime
            case .qrEffectDay:
                code = .invalidParameter_QrEffectDay
            case .qrFlowEffectDay:
                code = .invalidParameter_QrFlowEffectDay
            case .resourceType:
                code = .invalidParameter_ResourceType
            case .roleId:
                code = .invalidParameter_RoleId
            case .sealId:
                code = .invalidParameter_SealId
            case .sensitive:
                code = .invalidParameter_Sensitive
            case .signComponents:
                code = .invalidParameter_SignComponents
            case .status:
                code = .invalidParameter_Status
            case .templateId:
                code = .invalidParameter_TemplateId
            case .verifyChannel:
                code = .invalidParameter_VerifyChannel
            case .other:
                code = .invalidParameter
            }
            return TCEssError(code, context: self.context)
        }
    }
}
