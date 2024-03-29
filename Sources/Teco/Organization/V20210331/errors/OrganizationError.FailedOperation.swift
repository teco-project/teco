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

extension TCOrganizationError {
    public struct FailedOperation: TCOrganizationErrorType {
        enum Code: String {
            case authInfoEmpty = "FailedOperation.AuthInfoEmpty"
            case authNotEnterprise = "FailedOperation.AuthNotEnterprise"
            case createAccount = "FailedOperation.CreateAccount"
            case createMemberAuthOverLimit = "FailedOperation.CreateMemberAuthOverLimit"
            case createPolicy = "FailedOperation.CreatePolicy"
            case createRecordAlreadySuccess = "FailedOperation.CreateRecordAlreadySuccess"
            case createRecordNotExist = "FailedOperation.CreateRecordNotExist"
            case createRole = "FailedOperation.CreateRole"
            case disableQuitSelfCreatedOrganization = "FailedOperation.DisableQuitSelfCreatedOrganization"
            case getAuthInfo = "FailedOperation.GetAuthInfo"
            case memberExistDelegatePayerNotAllowDelete = "FailedOperation.MemberExistDelegatePayerNotAllowDelete"
            case memberIsDelegatePayerNotAllowDelete = "FailedOperation.MemberIsDelegatePayerNotAllowDelete"
            case memberNameUsed = "FailedOperation.MemberNameUsed"
            case memberPolicyNameExist = "FailedOperation.MemberPolicyNameExist"
            case memberShareResource = "FailedOperation.MemberShareResource"
            case nodeNotEmpty = "FailedOperation.NodeNotEmpty"
            case operateBillingPermissionErr = "FailedOperation.OperateBillingPermissionErr"
            case operatePolicy = "FailedOperation.OperatePolicy"
            case organizationAuthManageNotAllowDelete = "FailedOperation.OrganizationAuthManageNotAllowDelete"
            case organizationMemberNameUsed = "FailedOperation.OrganizationMemberNameUsed"
            case organizationNodeDeleteOverLimit = "FailedOperation.OrganizationNodeDeleteOverLimit"
            case organizationNodeNameUsed = "FailedOperation.OrganizationNodeNameUsed"
            case organizationNodeNotEmpty = "FailedOperation.OrganizationNodeNotEmpty"
            case organizationNodeNotExist = "FailedOperation.OrganizationNodeNotExist"
            case organizationPermissionIllegal = "FailedOperation.OrganizationPermissionIllegal"
            case organizationPolicyIllegal = "FailedOperation.OrganizationPolicyIllegal"
            case payUinIllegal = "FailedOperation.PayUinIllegal"
            case quitShareUintError = "FailedOperation.QuitShareUintError"
            case shareResourceMemberInUse = "FailedOperation.ShareResourceMemberInUse"
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

        /// 用户未实名。
        public static var authInfoEmpty: FailedOperation {
            FailedOperation(.authInfoEmpty)
        }

        /// 用户非企业实名。
        public static var authNotEnterprise: FailedOperation {
            FailedOperation(.authNotEnterprise)
        }

        /// 创建成员异常。
        public static var createAccount: FailedOperation {
            FailedOperation(.createAccount)
        }

        /// 账号实名认证超过上限。
        public static var createMemberAuthOverLimit: FailedOperation {
            FailedOperation(.createMemberAuthOverLimit)
        }

        /// 创建测试失败。
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

        /// 不能退出自己创业的企业组织。
        public static var disableQuitSelfCreatedOrganization: FailedOperation {
            FailedOperation(.disableQuitSelfCreatedOrganization)
        }

        /// 查询实名信息出错。
        public static var getAuthInfo: FailedOperation {
            FailedOperation(.getAuthInfo)
        }

        /// 成员存在代付者,不允许删除。
        public static var memberExistDelegatePayerNotAllowDelete: FailedOperation {
            FailedOperation(.memberExistDelegatePayerNotAllowDelete)
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

        /// 组织权限不合法。
        public static var organizationPermissionIllegal: FailedOperation {
            FailedOperation(.organizationPermissionIllegal)
        }

        /// 组织策略不合法。
        public static var organizationPolicyIllegal: FailedOperation {
            FailedOperation(.organizationPolicyIllegal)
        }

        /// 代付者不合法。
        public static var payUinIllegal: FailedOperation {
            FailedOperation(.payUinIllegal)
        }

        /// 退出共享单元错误。
        public static var quitShareUintError: FailedOperation {
            FailedOperation(.quitShareUintError)
        }

        /// 成员正在使用共享资源。
        public static var shareResourceMemberInUse: FailedOperation {
            FailedOperation(.shareResourceMemberInUse)
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
            case .authInfoEmpty: 
                code = .failedOperation_AuthInfoEmpty
            case .authNotEnterprise: 
                code = .failedOperation_AuthNotEnterprise
            case .createAccount: 
                code = .failedOperation_CreateAccount
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
            case .disableQuitSelfCreatedOrganization: 
                code = .failedOperation_DisableQuitSelfCreatedOrganization
            case .getAuthInfo: 
                code = .failedOperation_GetAuthInfo
            case .memberExistDelegatePayerNotAllowDelete: 
                code = .failedOperation_MemberExistDelegatePayerNotAllowDelete
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
            case .organizationPermissionIllegal: 
                code = .failedOperation_OrganizationPermissionIllegal
            case .organizationPolicyIllegal: 
                code = .failedOperation_OrganizationPolicyIllegal
            case .payUinIllegal: 
                code = .failedOperation_PayUinIllegal
            case .quitShareUintError: 
                code = .failedOperation_QuitShareUintError
            case .shareResourceMemberInUse: 
                code = .failedOperation_ShareResourceMemberInUse
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
