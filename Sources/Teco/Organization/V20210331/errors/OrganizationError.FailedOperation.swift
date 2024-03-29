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

extension TCOrganizationError {
    public struct FailedOperation: TCOrganizationErrorType {
        enum Code: String {
            case accountAlreadyRegister = "FailedOperation.AccountAlreadyRegister"
            case authInfoEmpty = "FailedOperation.AuthInfoEmpty"
            case authInfoNotSame = "FailedOperation.AuthInfoNotSame"
            case authNotEnterprise = "FailedOperation.AuthNotEnterprise"
            case bindEmailLinkExpired = "FailedOperation.BindEmailLinkExpired"
            case bindEmailLinkInvalid = "FailedOperation.BindEmailLinkInvalid"
            case changePermissionRecordExist = "FailedOperation.ChangePermissionRecordExist"
            case checkAccountPhoneBindLimit = "FailedOperation.CheckAccountPhoneBindLimit"
            case checkMailAccount = "FailedOperation.CheckMailAccount"
            case createAccount = "FailedOperation.CreateAccount"
            case createBillingPermissionErr = "FailedOperation.CreateBillingPermissionErr"
            case createMemberAuthOverLimit = "FailedOperation.CreateMemberAuthOverLimit"
            case createPolicy = "FailedOperation.CreatePolicy"
            case createRecordAlreadySuccess = "FailedOperation.CreateRecordAlreadySuccess"
            case createRecordNotExist = "FailedOperation.CreateRecordNotExist"
            case createRole = "FailedOperation.CreateRole"
            case deletePolicy = "FailedOperation.DeletePolicy"
            case disableQuitSelfCreatedOrganization = "FailedOperation.DisableQuitSelfCreatedOrganization"
            case emailAlreadyUsed = "FailedOperation.EmailAlreadyUsed"
            case emailBindRecordInvalid = "FailedOperation.EmailBindRecordInvalid"
            case getAuthInfo = "FailedOperation.GetAuthInfo"
            case memberBindEmailError = "FailedOperation.MemberBindEmailError"
            case memberBindPhoneError = "FailedOperation.MemberBindPhoneError"
            case memberEmailExist = "FailedOperation.MemberEmailExist"
            case memberExistDelegatePayerNotAllowDelete = "FailedOperation.MemberExistDelegatePayerNotAllowDelete"
            case memberIdentityAuthUsed = "FailedOperation.MemberIdentityAuthUsed"
            case memberIsDelegatePayerNotAllowDelete = "FailedOperation.MemberIsDelegatePayerNotAllowDelete"
            case memberNameUsed = "FailedOperation.MemberNameUsed"
            case memberPolicyNameExist = "FailedOperation.MemberPolicyNameExist"
            case memberShareResource = "FailedOperation.MemberShareResource"
            case nodeNotEmpty = "FailedOperation.NodeNotEmpty"
            case operateBillingPermissionErr = "FailedOperation.OperateBillingPermissionErr"
            case operatePolicy = "FailedOperation.OperatePolicy"
            case organizationAuthManageNotAllowDelete = "FailedOperation.OrganizationAuthManageNotAllowDelete"
            case organizationExistAlready = "FailedOperation.OrganizationExistAlready"
            case organizationIdentityPolicyError = "FailedOperation.OrganizationIdentityPolicyError"
            case organizationMemberNameUsed = "FailedOperation.OrganizationMemberNameUsed"
            case organizationNodeDeleteOverLimit = "FailedOperation.OrganizationNodeDeleteOverLimit"
            case organizationNodeNameUsed = "FailedOperation.OrganizationNodeNameUsed"
            case organizationNodeNotEmpty = "FailedOperation.OrganizationNodeNotEmpty"
            case organizationNodeNotExist = "FailedOperation.OrganizationNodeNotExist"
            case organizationNotEmpty = "FailedOperation.OrganizationNotEmpty"
            case organizationPermissionIllegal = "FailedOperation.OrganizationPermissionIllegal"
            case organizationPolicyIllegal = "FailedOperation.OrganizationPolicyIllegal"
            case organizationPolicyIsNotDisabled = "FailedOperation.OrganizationPolicyIsNotDisabled"
            case payUinIllegal = "FailedOperation.PayUinIllegal"
            case quitShareUint = "FailedOperation.QuitShareUint"
            case quitShareUintError = "FailedOperation.QuitShareUintError"
            case quiteShareUnit = "FailedOperation.QuiteShareUnit"
            case shareResourceMemberInUse = "FailedOperation.ShareResourceMemberInUse"
            case shareUnitNotEmpty = "FailedOperation.ShareUnitNotEmpty"
            case someUinsNotInOrganization = "FailedOperation.SomeUinsNotInOrganization"
            case subAccountIdentityExist = "FailedOperation.SubAccountIdentityExist"
            case subAccountNotExist = "FailedOperation.SubAccountNotExist"
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

        /// 该帐号已被注册。
        public static var accountAlreadyRegister: FailedOperation {
            FailedOperation(.accountAlreadyRegister)
        }

        /// 用户未实名。
        public static var authInfoEmpty: FailedOperation {
            FailedOperation(.authInfoEmpty)
        }

        /// 企业实名不一样。
        public static var authInfoNotSame: FailedOperation {
            FailedOperation(.authInfoNotSame)
        }

        /// 用户非企业实名。
        public static var authNotEnterprise: FailedOperation {
            FailedOperation(.authNotEnterprise)
        }

        /// 绑定邮箱链接过期。
        public static var bindEmailLinkExpired: FailedOperation {
            FailedOperation(.bindEmailLinkExpired)
        }

        /// 绑定邮箱链接无效。
        public static var bindEmailLinkInvalid: FailedOperation {
            FailedOperation(.bindEmailLinkInvalid)
        }

        /// 成员权限变更记录存在。
        public static var changePermissionRecordExist: FailedOperation {
            FailedOperation(.changePermissionRecordExist)
        }

        /// 检查手机绑定上限失败。
        public static var checkAccountPhoneBindLimit: FailedOperation {
            FailedOperation(.checkAccountPhoneBindLimit)
        }

        /// 检查邮箱绑定状态失败。
        public static var checkMailAccount: FailedOperation {
            FailedOperation(.checkMailAccount)
        }

        /// 创建成员异常。
        public static var createAccount: FailedOperation {
            FailedOperation(.createAccount)
        }

        /// 添加计费权限失败。
        public static var createBillingPermissionErr: FailedOperation {
            FailedOperation(.createBillingPermissionErr)
        }

        /// 账号实名认证超过上限。
        public static var createMemberAuthOverLimit: FailedOperation {
            FailedOperation(.createMemberAuthOverLimit)
        }

        /// 创建策略失败。
        public static var createPolicy: FailedOperation {
            FailedOperation(.createPolicy)
        }

        /// 创建已成功。
        public static var createRecordAlreadySuccess: FailedOperation {
            FailedOperation(.createRecordAlreadySuccess)
        }

        /// 创建记录不存在。
        public static var createRecordNotExist: FailedOperation {
            FailedOperation(.createRecordNotExist)
        }

        /// 创建角色异常。
        public static var createRole: FailedOperation {
            FailedOperation(.createRole)
        }

        /// 删除授权策略异常。
        public static var deletePolicy: FailedOperation {
            FailedOperation(.deletePolicy)
        }

        /// 不能退出自己创建的企业组织。
        public static var disableQuitSelfCreatedOrganization: FailedOperation {
            FailedOperation(.disableQuitSelfCreatedOrganization)
        }

        /// 邮箱已经被使用。
        public static var emailAlreadyUsed: FailedOperation {
            FailedOperation(.emailAlreadyUsed)
        }

        /// 邮箱绑定已经失效。
        public static var emailBindRecordInvalid: FailedOperation {
            FailedOperation(.emailBindRecordInvalid)
        }

        /// 查询实名信息出错。
        public static var getAuthInfo: FailedOperation {
            FailedOperation(.getAuthInfo)
        }

        /// 邮箱绑定失败。
        public static var memberBindEmailError: FailedOperation {
            FailedOperation(.memberBindEmailError)
        }

        /// 安全手机绑定失败。
        public static var memberBindPhoneError: FailedOperation {
            FailedOperation(.memberBindPhoneError)
        }

        /// 成员存在邮箱。
        public static var memberEmailExist: FailedOperation {
            FailedOperation(.memberEmailExist)
        }

        /// 成员存在代付者,不允许删除。
        public static var memberExistDelegatePayerNotAllowDelete: FailedOperation {
            FailedOperation(.memberExistDelegatePayerNotAllowDelete)
        }

        /// 成员授权在使用。
        public static var memberIdentityAuthUsed: FailedOperation {
            FailedOperation(.memberIdentityAuthUsed)
        }

        /// 成员是代付者，不允许删除。
        public static var memberIsDelegatePayerNotAllowDelete: FailedOperation {
            FailedOperation(.memberIsDelegatePayerNotAllowDelete)
        }

        /// 名字已经被使用。
        public static var memberNameUsed: FailedOperation {
            FailedOperation(.memberNameUsed)
        }

        /// 成员授权策略名已存在。
        public static var memberPolicyNameExist: FailedOperation {
            FailedOperation(.memberPolicyNameExist)
        }

        /// 成员正在共享资源。
        public static var memberShareResource: FailedOperation {
            FailedOperation(.memberShareResource)
        }

        /// 企业组织单元成员不为空。
        public static var nodeNotEmpty: FailedOperation {
            FailedOperation(.nodeNotEmpty)
        }

        /// 操作计费侧成员权限错误。
        public static var operateBillingPermissionErr: FailedOperation {
            FailedOperation(.operateBillingPermissionErr)
        }

        /// 操作策略失败。
        public static var operatePolicy: FailedOperation {
            FailedOperation(.operatePolicy)
        }

        /// 成员是主体管理账号不允许删除。
        public static var organizationAuthManageNotAllowDelete: FailedOperation {
            FailedOperation(.organizationAuthManageNotAllowDelete)
        }

        /// 企业组织已经存在。
        public static var organizationExistAlready: FailedOperation {
            FailedOperation(.organizationExistAlready)
        }

        /// 组织身份策略不合法。
        public static var organizationIdentityPolicyError: FailedOperation {
            FailedOperation(.organizationIdentityPolicyError)
        }

        /// 成员名已存在。
        public static var organizationMemberNameUsed: FailedOperation {
            FailedOperation(.organizationMemberNameUsed)
        }

        /// 删除节点超过上限。
        public static var organizationNodeDeleteOverLimit: FailedOperation {
            FailedOperation(.organizationNodeDeleteOverLimit)
        }

        /// 节点名已存在。
        public static var organizationNodeNameUsed: FailedOperation {
            FailedOperation(.organizationNodeNameUsed)
        }

        /// 组织节点不为空。
        public static var organizationNodeNotEmpty: FailedOperation {
            FailedOperation(.organizationNodeNotEmpty)
        }

        /// 组织节点不存在。
        public static var organizationNodeNotExist: FailedOperation {
            FailedOperation(.organizationNodeNotExist)
        }

        /// 企业组织成员不为空。
        public static var organizationNotEmpty: FailedOperation {
            FailedOperation(.organizationNotEmpty)
        }

        /// 组织权限不合法。
        public static var organizationPermissionIllegal: FailedOperation {
            FailedOperation(.organizationPermissionIllegal)
        }

        /// 组织策略不合法。
        public static var organizationPolicyIllegal: FailedOperation {
            FailedOperation(.organizationPolicyIllegal)
        }

        /// 集团策略不是禁用状态。
        public static var organizationPolicyIsNotDisabled: FailedOperation {
            FailedOperation(.organizationPolicyIsNotDisabled)
        }

        /// 代付者不合法。
        public static var payUinIllegal: FailedOperation {
            FailedOperation(.payUinIllegal)
        }

        /// 退出共享单元失败。
        public static var quitShareUint: FailedOperation {
            FailedOperation(.quitShareUint)
        }

        /// 退出共享单元错误。
        public static var quitShareUintError: FailedOperation {
            FailedOperation(.quitShareUintError)
        }

        /// 退出共享单元失败。
        public static var quiteShareUnit: FailedOperation {
            FailedOperation(.quiteShareUnit)
        }

        /// 成员正在使用共享资源。
        public static var shareResourceMemberInUse: FailedOperation {
            FailedOperation(.shareResourceMemberInUse)
        }

        /// 共享单元不为空。
        public static var shareUnitNotEmpty: FailedOperation {
            FailedOperation(.shareUnitNotEmpty)
        }

        /// 存在不属于当前组织的uin。
        public static var someUinsNotInOrganization: FailedOperation {
            FailedOperation(.someUinsNotInOrganization)
        }

        /// 子账号存在身份。
        public static var subAccountIdentityExist: FailedOperation {
            FailedOperation(.subAccountIdentityExist)
        }

        /// 子账号不存在。
        public static var subAccountNotExist: FailedOperation {
            FailedOperation(.subAccountNotExist)
        }

        public func asOrganizationError() -> TCOrganizationError {
            let code: TCOrganizationError.Code
            switch self.error {
            case .accountAlreadyRegister:
                code = .failedOperation_AccountAlreadyRegister
            case .authInfoEmpty:
                code = .failedOperation_AuthInfoEmpty
            case .authInfoNotSame:
                code = .failedOperation_AuthInfoNotSame
            case .authNotEnterprise:
                code = .failedOperation_AuthNotEnterprise
            case .bindEmailLinkExpired:
                code = .failedOperation_BindEmailLinkExpired
            case .bindEmailLinkInvalid:
                code = .failedOperation_BindEmailLinkInvalid
            case .changePermissionRecordExist:
                code = .failedOperation_ChangePermissionRecordExist
            case .checkAccountPhoneBindLimit:
                code = .failedOperation_CheckAccountPhoneBindLimit
            case .checkMailAccount:
                code = .failedOperation_CheckMailAccount
            case .createAccount:
                code = .failedOperation_CreateAccount
            case .createBillingPermissionErr:
                code = .failedOperation_CreateBillingPermissionErr
            case .createMemberAuthOverLimit:
                code = .failedOperation_CreateMemberAuthOverLimit
            case .createPolicy:
                code = .failedOperation_CreatePolicy
            case .createRecordAlreadySuccess:
                code = .failedOperation_CreateRecordAlreadySuccess
            case .createRecordNotExist:
                code = .failedOperation_CreateRecordNotExist
            case .createRole:
                code = .failedOperation_CreateRole
            case .deletePolicy:
                code = .failedOperation_DeletePolicy
            case .disableQuitSelfCreatedOrganization:
                code = .failedOperation_DisableQuitSelfCreatedOrganization
            case .emailAlreadyUsed:
                code = .failedOperation_EmailAlreadyUsed
            case .emailBindRecordInvalid:
                code = .failedOperation_EmailBindRecordInvalid
            case .getAuthInfo:
                code = .failedOperation_GetAuthInfo
            case .memberBindEmailError:
                code = .failedOperation_MemberBindEmailError
            case .memberBindPhoneError:
                code = .failedOperation_MemberBindPhoneError
            case .memberEmailExist:
                code = .failedOperation_MemberEmailExist
            case .memberExistDelegatePayerNotAllowDelete:
                code = .failedOperation_MemberExistDelegatePayerNotAllowDelete
            case .memberIdentityAuthUsed:
                code = .failedOperation_MemberIdentityAuthUsed
            case .memberIsDelegatePayerNotAllowDelete:
                code = .failedOperation_MemberIsDelegatePayerNotAllowDelete
            case .memberNameUsed:
                code = .failedOperation_MemberNameUsed
            case .memberPolicyNameExist:
                code = .failedOperation_MemberPolicyNameExist
            case .memberShareResource:
                code = .failedOperation_MemberShareResource
            case .nodeNotEmpty:
                code = .failedOperation_NodeNotEmpty
            case .operateBillingPermissionErr:
                code = .failedOperation_OperateBillingPermissionErr
            case .operatePolicy:
                code = .failedOperation_OperatePolicy
            case .organizationAuthManageNotAllowDelete:
                code = .failedOperation_OrganizationAuthManageNotAllowDelete
            case .organizationExistAlready:
                code = .failedOperation_OrganizationExistAlready
            case .organizationIdentityPolicyError:
                code = .failedOperation_OrganizationIdentityPolicyError
            case .organizationMemberNameUsed:
                code = .failedOperation_OrganizationMemberNameUsed
            case .organizationNodeDeleteOverLimit:
                code = .failedOperation_OrganizationNodeDeleteOverLimit
            case .organizationNodeNameUsed:
                code = .failedOperation_OrganizationNodeNameUsed
            case .organizationNodeNotEmpty:
                code = .failedOperation_OrganizationNodeNotEmpty
            case .organizationNodeNotExist:
                code = .failedOperation_OrganizationNodeNotExist
            case .organizationNotEmpty:
                code = .failedOperation_OrganizationNotEmpty
            case .organizationPermissionIllegal:
                code = .failedOperation_OrganizationPermissionIllegal
            case .organizationPolicyIllegal:
                code = .failedOperation_OrganizationPolicyIllegal
            case .organizationPolicyIsNotDisabled:
                code = .failedOperation_OrganizationPolicyIsNotDisabled
            case .payUinIllegal:
                code = .failedOperation_PayUinIllegal
            case .quitShareUint:
                code = .failedOperation_QuitShareUint
            case .quitShareUintError:
                code = .failedOperation_QuitShareUintError
            case .quiteShareUnit:
                code = .failedOperation_QuiteShareUnit
            case .shareResourceMemberInUse:
                code = .failedOperation_ShareResourceMemberInUse
            case .shareUnitNotEmpty:
                code = .failedOperation_ShareUnitNotEmpty
            case .someUinsNotInOrganization:
                code = .failedOperation_SomeUinsNotInOrganization
            case .subAccountIdentityExist:
                code = .failedOperation_SubAccountIdentityExist
            case .subAccountNotExist:
                code = .failedOperation_SubAccountNotExist
            }
            return TCOrganizationError(code, context: self.context)
        }
    }
}
