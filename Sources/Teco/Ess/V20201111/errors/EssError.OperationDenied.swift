//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    public struct OperationDenied: TCEssErrorType {
        enum Code: String {
            case approverNoMatchTemplate = "OperationDenied.ApproverNoMatchTemplate"
            case approverRepeat = "OperationDenied.ApproverRepeat"
            case authCodeInvalid = "OperationDenied.AuthCodeInvalid"
            case batchCancelForbid = "OperationDenied.BatchCancelForbid"
            case branchSendFlowToParentNotAllow = "OperationDenied.BranchSendFlowToParentNotAllow"
            case ccForbid = "OperationDenied.CcForbid"
            case ccUserRepeat = "OperationDenied.CcUserRepeat"
            case documentNoAvailable = "OperationDenied.DocumentNoAvailable"
            case errNoResourceAccess = "OperationDenied.ErrNoResourceAccess"
            case errNoSupportIndividualHasOrganizationName = "OperationDenied.ErrNoSupportIndividualHasOrganizationName"
            case fileDeleted = "OperationDenied.FileDeleted"
            case fileNoMatchResource = "OperationDenied.FileNoMatchResource"
            case flowCancelForbid = "OperationDenied.FlowCancelForbid"
            case flowHasStarted = "OperationDenied.FlowHasStarted"
            case flowHasTerminated = "OperationDenied.FlowHasTerminated"
            case flowNoNeedReview = "OperationDenied.FlowNoNeedReview"
            case flowStatusForbid = "OperationDenied.FlowStatusForbid"
            case forbid = "OperationDenied.Forbid"
            case invalidApproverAge = "OperationDenied.InvalidApproverAge"
            case manyResourceId = "OperationDenied.ManyResourceId"
            case noFlowPermission = "OperationDenied.NoFlowPermission"
            case noIdentityVerify = "OperationDenied.NoIdentityVerify"
            case noLogin = "OperationDenied.NoLogin"
            case noOpenServerSign = "OperationDenied.NoOpenServerSign"
            case noPermissionUseResource = "OperationDenied.NoPermissionUseResource"
            case noPermissionUseServerSignSeal = "OperationDenied.NoPermissionUseServerSignSeal"
            case noQuota = "OperationDenied.NoQuota"
            case noSupportComponentType = "OperationDenied.NoSupportComponentType"
            case noSupportJumpPage = "OperationDenied.NoSupportJumpPage"
            case noVerify = "OperationDenied.NoVerify"
            case notBelongSuperAdminOrLegalPerson = "OperationDenied.NotBelongSuperAdminOrLegalPerson"
            case operatorHasNoPermission = "OperationDenied.OperatorHasNoPermission"
            case orgUniformSocialCreditCodeErr = "OperationDenied.OrgUniformSocialCreditCodeErr"
            case organizationNotActivated = "OperationDenied.OrganizationNotActivated"
            case outQueryLimit = "OperationDenied.OutQueryLimit"
            case overSeaForbid = "OperationDenied.OverSeaForbid"
            case personHasNoSignature = "OperationDenied.PersonHasNoSignature"
            case personNoOpenServerSign = "OperationDenied.PersonNoOpenServerSign"
            case personServerSignForbid = "OperationDenied.PersonServerSignForbid"
            case qrHasExpire = "OperationDenied.QrHasExpire"
            case qrInvalid = "OperationDenied.QrInvalid"
            case requiredComponentNotFill = "OperationDenied.RequiredComponentNotFill"
            case serverSignNoAllowComponent = "OperationDenied.ServerSignNoAllowComponent"
            case serverSignNoSupportSignature = "OperationDenied.ServerSignNoSupportSignature"
            case userNotInOrganization = "OperationDenied.UserNotInOrganization"
            case whiteListForbid = "OperationDenied.WhiteListForbid"
            case other = "OperationDenied"
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

        public static var approverNoMatchTemplate: OperationDenied {
            OperationDenied(.approverNoMatchTemplate)
        }

        public static var approverRepeat: OperationDenied {
            OperationDenied(.approverRepeat)
        }

        public static var authCodeInvalid: OperationDenied {
            OperationDenied(.authCodeInvalid)
        }

        public static var batchCancelForbid: OperationDenied {
            OperationDenied(.batchCancelForbid)
        }

        public static var branchSendFlowToParentNotAllow: OperationDenied {
            OperationDenied(.branchSendFlowToParentNotAllow)
        }

        public static var ccForbid: OperationDenied {
            OperationDenied(.ccForbid)
        }

        public static var ccUserRepeat: OperationDenied {
            OperationDenied(.ccUserRepeat)
        }

        public static var documentNoAvailable: OperationDenied {
            OperationDenied(.documentNoAvailable)
        }

        public static var errNoResourceAccess: OperationDenied {
            OperationDenied(.errNoResourceAccess)
        }

        public static var errNoSupportIndividualHasOrganizationName: OperationDenied {
            OperationDenied(.errNoSupportIndividualHasOrganizationName)
        }

        public static var fileDeleted: OperationDenied {
            OperationDenied(.fileDeleted)
        }

        public static var fileNoMatchResource: OperationDenied {
            OperationDenied(.fileNoMatchResource)
        }

        public static var flowCancelForbid: OperationDenied {
            OperationDenied(.flowCancelForbid)
        }

        public static var flowHasStarted: OperationDenied {
            OperationDenied(.flowHasStarted)
        }

        public static var flowHasTerminated: OperationDenied {
            OperationDenied(.flowHasTerminated)
        }

        public static var flowNoNeedReview: OperationDenied {
            OperationDenied(.flowNoNeedReview)
        }

        public static var flowStatusForbid: OperationDenied {
            OperationDenied(.flowStatusForbid)
        }

        /// 禁止此项操作。
        public static var forbid: OperationDenied {
            OperationDenied(.forbid)
        }

        public static var invalidApproverAge: OperationDenied {
            OperationDenied(.invalidApproverAge)
        }

        public static var manyResourceId: OperationDenied {
            OperationDenied(.manyResourceId)
        }

        public static var noFlowPermission: OperationDenied {
            OperationDenied(.noFlowPermission)
        }

        /// 未通过个人实名认证。
        public static var noIdentityVerify: OperationDenied {
            OperationDenied(.noIdentityVerify)
        }

        /// 用户未登录,请先登录后再操作。
        public static var noLogin: OperationDenied {
            OperationDenied(.noLogin)
        }

        public static var noOpenServerSign: OperationDenied {
            OperationDenied(.noOpenServerSign)
        }

        public static var noPermissionUseResource: OperationDenied {
            OperationDenied(.noPermissionUseResource)
        }

        public static var noPermissionUseServerSignSeal: OperationDenied {
            OperationDenied(.noPermissionUseServerSignSeal)
        }

        /// 流程配额不足。
        public static var noQuota: OperationDenied {
            OperationDenied(.noQuota)
        }

        public static var noSupportComponentType: OperationDenied {
            OperationDenied(.noSupportComponentType)
        }

        public static var noSupportJumpPage: OperationDenied {
            OperationDenied(.noSupportJumpPage)
        }

        /// 未在腾讯云实名。
        public static var noVerify: OperationDenied {
            OperationDenied(.noVerify)
        }

        /// 使用超管/法人进行接口调用。
        public static var notBelongSuperAdminOrLegalPerson: OperationDenied {
            OperationDenied(.notBelongSuperAdminOrLegalPerson)
        }

        /// 联系管理员获取权限。
        public static var operatorHasNoPermission: OperationDenied {
            OperationDenied(.operatorHasNoPermission)
        }

        public static var orgUniformSocialCreditCodeErr: OperationDenied {
            OperationDenied(.orgUniformSocialCreditCodeErr)
        }

        /// 企业未激活。
        public static var organizationNotActivated: OperationDenied {
            OperationDenied(.organizationNotActivated)
        }

        public static var outQueryLimit: OperationDenied {
            OperationDenied(.outQueryLimit)
        }

        public static var overSeaForbid: OperationDenied {
            OperationDenied(.overSeaForbid)
        }

        public static var personHasNoSignature: OperationDenied {
            OperationDenied(.personHasNoSignature)
        }

        public static var personNoOpenServerSign: OperationDenied {
            OperationDenied(.personNoOpenServerSign)
        }

        public static var personServerSignForbid: OperationDenied {
            OperationDenied(.personServerSignForbid)
        }

        public static var qrHasExpire: OperationDenied {
            OperationDenied(.qrHasExpire)
        }

        public static var qrInvalid: OperationDenied {
            OperationDenied(.qrInvalid)
        }

        public static var requiredComponentNotFill: OperationDenied {
            OperationDenied(.requiredComponentNotFill)
        }

        public static var serverSignNoAllowComponent: OperationDenied {
            OperationDenied(.serverSignNoAllowComponent)
        }

        public static var serverSignNoSupportSignature: OperationDenied {
            OperationDenied(.serverSignNoSupportSignature)
        }

        public static var userNotInOrganization: OperationDenied {
            OperationDenied(.userNotInOrganization)
        }

        public static var whiteListForbid: OperationDenied {
            OperationDenied(.whiteListForbid)
        }

        /// 操作被拒绝。
        public static var other: OperationDenied {
            OperationDenied(.other)
        }

        public func asEssError() -> TCEssError {
            let code: TCEssError.Code
            switch self.error {
            case .approverNoMatchTemplate:
                code = .operationDenied_ApproverNoMatchTemplate
            case .approverRepeat:
                code = .operationDenied_ApproverRepeat
            case .authCodeInvalid:
                code = .operationDenied_AuthCodeInvalid
            case .batchCancelForbid:
                code = .operationDenied_BatchCancelForbid
            case .branchSendFlowToParentNotAllow:
                code = .operationDenied_BranchSendFlowToParentNotAllow
            case .ccForbid:
                code = .operationDenied_CcForbid
            case .ccUserRepeat:
                code = .operationDenied_CcUserRepeat
            case .documentNoAvailable:
                code = .operationDenied_DocumentNoAvailable
            case .errNoResourceAccess:
                code = .operationDenied_ErrNoResourceAccess
            case .errNoSupportIndividualHasOrganizationName:
                code = .operationDenied_ErrNoSupportIndividualHasOrganizationName
            case .fileDeleted:
                code = .operationDenied_FileDeleted
            case .fileNoMatchResource:
                code = .operationDenied_FileNoMatchResource
            case .flowCancelForbid:
                code = .operationDenied_FlowCancelForbid
            case .flowHasStarted:
                code = .operationDenied_FlowHasStarted
            case .flowHasTerminated:
                code = .operationDenied_FlowHasTerminated
            case .flowNoNeedReview:
                code = .operationDenied_FlowNoNeedReview
            case .flowStatusForbid:
                code = .operationDenied_FlowStatusForbid
            case .forbid:
                code = .operationDenied_Forbid
            case .invalidApproverAge:
                code = .operationDenied_InvalidApproverAge
            case .manyResourceId:
                code = .operationDenied_ManyResourceId
            case .noFlowPermission:
                code = .operationDenied_NoFlowPermission
            case .noIdentityVerify:
                code = .operationDenied_NoIdentityVerify
            case .noLogin:
                code = .operationDenied_NoLogin
            case .noOpenServerSign:
                code = .operationDenied_NoOpenServerSign
            case .noPermissionUseResource:
                code = .operationDenied_NoPermissionUseResource
            case .noPermissionUseServerSignSeal:
                code = .operationDenied_NoPermissionUseServerSignSeal
            case .noQuota:
                code = .operationDenied_NoQuota
            case .noSupportComponentType:
                code = .operationDenied_NoSupportComponentType
            case .noSupportJumpPage:
                code = .operationDenied_NoSupportJumpPage
            case .noVerify:
                code = .operationDenied_NoVerify
            case .notBelongSuperAdminOrLegalPerson:
                code = .operationDenied_NotBelongSuperAdminOrLegalPerson
            case .operatorHasNoPermission:
                code = .operationDenied_OperatorHasNoPermission
            case .orgUniformSocialCreditCodeErr:
                code = .operationDenied_OrgUniformSocialCreditCodeErr
            case .organizationNotActivated:
                code = .operationDenied_OrganizationNotActivated
            case .outQueryLimit:
                code = .operationDenied_OutQueryLimit
            case .overSeaForbid:
                code = .operationDenied_OverSeaForbid
            case .personHasNoSignature:
                code = .operationDenied_PersonHasNoSignature
            case .personNoOpenServerSign:
                code = .operationDenied_PersonNoOpenServerSign
            case .personServerSignForbid:
                code = .operationDenied_PersonServerSignForbid
            case .qrHasExpire:
                code = .operationDenied_QrHasExpire
            case .qrInvalid:
                code = .operationDenied_QrInvalid
            case .requiredComponentNotFill:
                code = .operationDenied_RequiredComponentNotFill
            case .serverSignNoAllowComponent:
                code = .operationDenied_ServerSignNoAllowComponent
            case .serverSignNoSupportSignature:
                code = .operationDenied_ServerSignNoSupportSignature
            case .userNotInOrganization:
                code = .operationDenied_UserNotInOrganization
            case .whiteListForbid:
                code = .operationDenied_WhiteListForbid
            case .other:
                code = .operationDenied
            }
            return TCEssError(code, context: self.context)
        }
    }
}
