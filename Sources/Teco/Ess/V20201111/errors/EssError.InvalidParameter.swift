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
            case invalidOpenId = "InvalidParameter.InvalidOpenId"
            case invalidOperatorId = "InvalidParameter.InvalidOperatorId"
            case invalidOrganizationId = "InvalidParameter.InvalidOrganizationId"
            case invalidOrganizationName = "InvalidParameter.InvalidOrganizationName"
            case invalidRoleId = "InvalidParameter.InvalidRoleId"
            case invalidRoleName = "InvalidParameter.InvalidRoleName"
            case invalidVerifyChannel = "InvalidParameter.InvalidVerifyChannel"
            case invalidVerifyCode = "InvalidParameter.InvalidVerifyCode"
            case missingRequiredComponentValue = "InvalidParameter.MissingRequiredComponentValue"
            case mobile = "InvalidParameter.Mobile"
            case name = "InvalidParameter.Name"
            case notifyType = "InvalidParameter.NotifyType"
            case organizationName = "InvalidParameter.OrganizationName"
            case paramError = "InvalidParameter.ParamError"
            case personAutoSignTag = "InvalidParameter.PersonAutoSignTag"
            case preReadTime = "InvalidParameter.PreReadTime"
            case qrEffectDay = "InvalidParameter.QrEffectDay"
            case qrFlowEffectDay = "InvalidParameter.QrFlowEffectDay"
            case resourceType = "InvalidParameter.ResourceType"
            case sealId = "InvalidParameter.SealId"
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

        public static var approverType: InvalidParameter {
            InvalidParameter(.approverType)
        }

        public static var businessId: InvalidParameter {
            InvalidParameter(.businessId)
        }

        public static var businessType: InvalidParameter {
            InvalidParameter(.businessType)
        }

        public static var cancelReason: InvalidParameter {
            InvalidParameter(.cancelReason)
        }

        public static var cardNumber: InvalidParameter {
            InvalidParameter(.cardNumber)
        }

        public static var cardType: InvalidParameter {
            InvalidParameter(.cardType)
        }

        public static var ccNum: InvalidParameter {
            InvalidParameter(.ccNum)
        }

        public static var clientToken: InvalidParameter {
            InvalidParameter(.clientToken)
        }

        public static var componentFileIndex: InvalidParameter {
            InvalidParameter(.componentFileIndex)
        }

        public static var componentPage: InvalidParameter {
            InvalidParameter(.componentPage)
        }

        public static var componentPosition: InvalidParameter {
            InvalidParameter(.componentPosition)
        }

        public static var componentTypeNoMatchValue: InvalidParameter {
            InvalidParameter(.componentTypeNoMatchValue)
        }

        public static var componentValue: InvalidParameter {
            InvalidParameter(.componentValue)
        }

        public static var contentType: InvalidParameter {
            InvalidParameter(.contentType)
        }

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

        /// 参数为空。
        public static var emptyParams: InvalidParameter {
            InvalidParameter(.emptyParams)
        }

        public static var endPoint: InvalidParameter {
            InvalidParameter(.endPoint)
        }

        public static var flowCallbackUrl: InvalidParameter {
            InvalidParameter(.flowCallbackUrl)
        }

        public static var flowDeadLine: InvalidParameter {
            InvalidParameter(.flowDeadLine)
        }

        public static var flowDescription: InvalidParameter {
            InvalidParameter(.flowDescription)
        }

        public static var flowName: InvalidParameter {
            InvalidParameter(.flowName)
        }

        public static var flowType: InvalidParameter {
            InvalidParameter(.flowType)
        }

        public static var flowUserData: InvalidParameter {
            InvalidParameter(.flowUserData)
        }

        public static var fromSource: InvalidParameter {
            InvalidParameter(.fromSource)
        }

        public static var idCardValidityOverLimit: InvalidParameter {
            InvalidParameter(.idCardValidityOverLimit)
        }

        /// Channel不正确。
        public static var invalidChannel: InvalidParameter {
            InvalidParameter(.invalidChannel)
        }

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

        /// OpenId不正确。
        public static var invalidOpenId: InvalidParameter {
            InvalidParameter(.invalidOpenId)
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

        /// 验证码不正确。
        public static var invalidVerifyCode: InvalidParameter {
            InvalidParameter(.invalidVerifyCode)
        }

        /// 请检查必填控件是否都已填充非空值。
        public static var missingRequiredComponentValue: InvalidParameter {
            InvalidParameter(.missingRequiredComponentValue)
        }

        /// 请确认手机号是正确的。
        public static var mobile: InvalidParameter {
            InvalidParameter(.mobile)
        }

        /// 确认名字是否正确。
        public static var name: InvalidParameter {
            InvalidParameter(.name)
        }

        public static var notifyType: InvalidParameter {
            InvalidParameter(.notifyType)
        }

        public static var organizationName: InvalidParameter {
            InvalidParameter(.organizationName)
        }

        /// 参数错误。
        public static var paramError: InvalidParameter {
            InvalidParameter(.paramError)
        }

        public static var personAutoSignTag: InvalidParameter {
            InvalidParameter(.personAutoSignTag)
        }

        public static var preReadTime: InvalidParameter {
            InvalidParameter(.preReadTime)
        }

        public static var qrEffectDay: InvalidParameter {
            InvalidParameter(.qrEffectDay)
        }

        public static var qrFlowEffectDay: InvalidParameter {
            InvalidParameter(.qrFlowEffectDay)
        }

        public static var resourceType: InvalidParameter {
            InvalidParameter(.resourceType)
        }

        public static var sealId: InvalidParameter {
            InvalidParameter(.sealId)
        }

        public static var signComponents: InvalidParameter {
            InvalidParameter(.signComponents)
        }

        /// 参数Status不正确。
        public static var status: InvalidParameter {
            InvalidParameter(.status)
        }

        public static var templateId: InvalidParameter {
            InvalidParameter(.templateId)
        }

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
            case .invalidOpenId:
                code = .invalidParameter_InvalidOpenId
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
            case .invalidVerifyCode:
                code = .invalidParameter_InvalidVerifyCode
            case .missingRequiredComponentValue:
                code = .invalidParameter_MissingRequiredComponentValue
            case .mobile:
                code = .invalidParameter_Mobile
            case .name:
                code = .invalidParameter_Name
            case .notifyType:
                code = .invalidParameter_NotifyType
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
            case .sealId:
                code = .invalidParameter_SealId
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
