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
            case noApiAuth = "OperationDenied.NoApiAuth"
            case noApproverMobileCheckPermission = "OperationDenied.NoApproverMobileCheckPermission"
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
            case proveNoQuota = "OperationDenied.ProveNoQuota"
            case qrHasExpire = "OperationDenied.QrHasExpire"
            case qrInvalid = "OperationDenied.QrInvalid"
            case requiredComponentNotFill = "OperationDenied.RequiredComponentNotFill"
            case serverSignNoAllowComponent = "OperationDenied.ServerSignNoAllowComponent"
            case serverSignNoSupportSignature = "OperationDenied.ServerSignNoSupportSignature"
            case subOrgNotJoin = "OperationDenied.SubOrgNotJoin"
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

        /// 签署人设置与模板中签署人配置信息不一致，请检查模板修改参数后重试。
        public static var approverNoMatchTemplate: OperationDenied {
            OperationDenied(.approverNoMatchTemplate)
        }

        /// 签署人重复，请联系客服了解发起签署流程签署人规则，修改后重试。
        public static var approverRepeat: OperationDenied {
            OperationDenied(.approverRepeat)
        }

        /// 授权码已失效，请检查是否传递正确，是否已经过期，并在修改后重试。
        public static var authCodeInvalid: OperationDenied {
            OperationDenied(.authCodeInvalid)
        }

        /// 不允许批量撤销签署流程，请检查批量撤销合同信息。
        public static var batchCancelForbid: OperationDenied {
            OperationDenied(.batchCancelForbid)
        }

        /// 子公司不能发起本方母体公司的合同。
        public static var branchSendFlowToParentNotAllow: OperationDenied {
            OperationDenied(.branchSendFlowToParentNotAllow)
        }

        /// 当前不支持抄送，请联系客服咨询处理。
        public static var ccForbid: OperationDenied {
            OperationDenied(.ccForbid)
        }

        /// 抄送方存在相同抄送人，请检查修改后重试。
        public static var ccUserRepeat: OperationDenied {
            OperationDenied(.ccUserRepeat)
        }

        /// 电子文档不可用，请稍后重试。
        public static var documentNoAvailable: OperationDenied {
            OperationDenied(.documentNoAvailable)
        }

        /// 此企业无该资源使用权限。
        public static var errNoResourceAccess: OperationDenied {
            OperationDenied(.errNoResourceAccess)
        }

        /// 个人签署方不支持设置企业名称，请确认签署人类型后重试。
        public static var errNoSupportIndividualHasOrganizationName: OperationDenied {
            OperationDenied(.errNoSupportIndividualHasOrganizationName)
        }

        /// 文件已被删除，请联系客服处理。
        public static var fileDeleted: OperationDenied {
            OperationDenied(.fileDeleted)
        }

        /// 文件与资源不匹配，请检查文件名与资源id数量以及对应关系，并在修改后重试。
        public static var fileNoMatchResource: OperationDenied {
            OperationDenied(.fileNoMatchResource)
        }

        /// 签署流程无法撤销，请检查签署流程状态，检查签署流程归属企业，检查当前操作人是否有权限，并在修改后重试。
        public static var flowCancelForbid: OperationDenied {
            OperationDenied(.flowCancelForbid)
        }

        /// 签署流程已经被发起，请检查。
        public static var flowHasStarted: OperationDenied {
            OperationDenied(.flowHasStarted)
        }

        /// 签署流程已经被终止，请检查。
        public static var flowHasTerminated: OperationDenied {
            OperationDenied(.flowHasTerminated)
        }

        /// 签署流程不需要进行审核,请修改后重试。
        public static var flowNoNeedReview: OperationDenied {
            OperationDenied(.flowNoNeedReview)
        }

        /// 签署流程状态不正确，请检查后重试。
        public static var flowStatusForbid: OperationDenied {
            OperationDenied(.flowStatusForbid)
        }

        /// 禁止此项操作。
        public static var forbid: OperationDenied {
            OperationDenied(.forbid)
        }

        /// 签署人年龄限制无法使用电子签服务。
        public static var invalidApproverAge: OperationDenied {
            OperationDenied(.invalidApproverAge)
        }

        /// 资源id超过使用上限限制，请联系客服了解规则，并在修改后重试。
        public static var manyResourceId: OperationDenied {
            OperationDenied(.manyResourceId)
        }

        /// 请参考实际的错误描述进行处理，请仔细阅读API文档，优先检查参数及重试，如重试多次仍未解决，请联系开发人员。
        public static var noApiAuth: OperationDenied {
            OperationDenied(.noApiAuth)
        }

        public static var noApproverMobileCheckPermission: OperationDenied {
            OperationDenied(.noApproverMobileCheckPermission)
        }

        /// 无权限操作签署流程，请联系客服了解权限，并在修改后重试。
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

        /// 未开通静默签功能，请联系签署方企业开通后重试。
        public static var noOpenServerSign: OperationDenied {
            OperationDenied(.noOpenServerSign)
        }

        /// 无权限使用文件资源，请检查资源有效性以及资源归属，并在修改后重试。
        public static var noPermissionUseResource: OperationDenied {
            OperationDenied(.noPermissionUseResource)
        }

        /// 无权限使用印章做静默签，请检查印章是否有效，是否有使用权限，并在修改后重试。
        public static var noPermissionUseServerSignSeal: OperationDenied {
            OperationDenied(.noPermissionUseServerSignSeal)
        }

        /// 企业额度不足，请检查企业额度后处理。
        public static var noQuota: OperationDenied {
            OperationDenied(.noQuota)
        }

        /// 不支持的控件类型，请联系客服了解支持的控件类型，并在修改后重试。
        public static var noSupportComponentType: OperationDenied {
            OperationDenied(.noSupportComponentType)
        }

        /// 不支持的跳转页，请联系客服了解跳转配置规则，修改后重试。
        public static var noSupportJumpPage: OperationDenied {
            OperationDenied(.noSupportJumpPage)
        }

        /// 未完成实名认证，请检查后重试。
        public static var noVerify: OperationDenied {
            OperationDenied(.noVerify)
        }

        /// 不属于企业超管或者法人。
        ///
        /// 使用超管/法人进行接口调用。
        public static var notBelongSuperAdminOrLegalPerson: OperationDenied {
            OperationDenied(.notBelongSuperAdminOrLegalPerson)
        }

        /// 操作者权限不足。
        ///
        /// 联系管理员获取权限。
        public static var operatorHasNoPermission: OperationDenied {
            OperationDenied(.operatorHasNoPermission)
        }

        /// 此社会信用编码未查询到结果，请检查后重试。
        public static var orgUniformSocialCreditCodeErr: OperationDenied {
            OperationDenied(.orgUniformSocialCreditCodeErr)
        }

        /// 企业未激活。
        public static var organizationNotActivated: OperationDenied {
            OperationDenied(.organizationNotActivated)
        }

        /// 查询限频，请先联系客服了解限频策略，稍后重试。
        public static var outQueryLimit: OperationDenied {
            OperationDenied(.outQueryLimit)
        }

        /// 当前不支持境外用户，请联系客服咨询处理。
        public static var overSeaForbid: OperationDenied {
            OperationDenied(.overSeaForbid)
        }

        /// 个人名下没用可使用的签名，请联系个人配置签名后重试。
        public static var personHasNoSignature: OperationDenied {
            OperationDenied(.personHasNoSignature)
        }

        /// 该用户已关闭或者未开启自动签服务，请检查后重试。
        public static var personNoOpenServerSign: OperationDenied {
            OperationDenied(.personNoOpenServerSign)
        }

        /// 拒绝个人静默签，请检查个人静默签签署人，并在修改后重试。
        public static var personServerSignForbid: OperationDenied {
            OperationDenied(.personServerSignForbid)
        }

        public static var proveNoQuota: OperationDenied {
            OperationDenied(.proveNoQuota)
        }

        /// 签署二维码已过期，请检查后重试。
        public static var qrHasExpire: OperationDenied {
            OperationDenied(.qrHasExpire)
        }

        /// 签署二维码不可用，请检查后重试。
        public static var qrInvalid: OperationDenied {
            OperationDenied(.qrInvalid)
        }

        /// 必填控件未设置填写内容，将检查修改后重试。
        public static var requiredComponentNotFill: OperationDenied {
            OperationDenied(.requiredComponentNotFill)
        }

        /// 静默签署方不允许有填写控件，请修改模板，修改参数后重试。
        public static var serverSignNoAllowComponent: OperationDenied {
            OperationDenied(.serverSignNoAllowComponent)
        }

        /// 静默签署不支持手写签名，请配置印章并使用印章重试。
        public static var serverSignNoSupportSignature: OperationDenied {
            OperationDenied(.serverSignNoSupportSignature)
        }

        /// 子企业暂未加入。
        public static var subOrgNotJoin: OperationDenied {
            OperationDenied(.subOrgNotJoin)
        }

        /// 用户不归属于当前企业，无法操作，请检查后重试。
        public static var userNotInOrganization: OperationDenied {
            OperationDenied(.userNotInOrganization)
        }

        /// 未开通功能白名单，请联系客服处理。
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
            case .noApiAuth:
                code = .operationDenied_NoApiAuth
            case .noApproverMobileCheckPermission:
                code = .operationDenied_NoApproverMobileCheckPermission
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
            case .proveNoQuota:
                code = .operationDenied_ProveNoQuota
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
            case .subOrgNotJoin:
                code = .operationDenied_SubOrgNotJoin
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
