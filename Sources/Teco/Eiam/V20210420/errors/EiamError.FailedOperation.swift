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

extension TCEiamError {
    public struct FailedOperation: TCEiamErrorType {
        enum Code: String {
            case accountAlreadyExistedInAccountGroup = "FailedOperation.AccountAlreadyExistedInAccountGroup"
            case accountGroupNameAlreadyExists = "FailedOperation.AccountGroupNameAlreadyExists"
            case accountGroupNotExist = "FailedOperation.AccountGroupNotExist"
            case accountNameAlreadyExists = "FailedOperation.AccountNameAlreadyExists"
            case accountNotExist = "FailedOperation.AccountNotExist"
            case accountNotExisted = "FailedOperation.AccountNotExisted"
            case appDisplayNameAlreadyExists = "FailedOperation.AppDisplayNameAlreadyExists"
            case appNotExist = "FailedOperation.AppNotExist"
            case childOrgNodeNameAlreadyExists = "FailedOperation.ChildOrgNodeNameAlreadyExists"
            case childOrgNodeWithUsersCanNotBeDeleted = "FailedOperation.ChildOrgNodeWithUsersCanNotBeDeleted"
            case createOrgNodeError = "FailedOperation.CreateOrgNodeError"
            case createUserFailure = "FailedOperation.CreateUserFailure"
            case createUserGroupError = "FailedOperation.CreateUserGroupError"
            case customizeParentOrgNodeIdAlreadyExists = "FailedOperation.CustomizeParentOrgNodeIdAlreadyExists"
            case customizedOrgNodeIdCanNotBeEmpty = "FailedOperation.CustomizedOrgNodeIdCanNotBeEmpty"
            case defaultOrgNodeCanNotBeDeleted = "FailedOperation.DefaultOrgNodeCanNotBeDeleted"
            case deleteOrgNodeError = "FailedOperation.DeleteOrgNodeError"
            case deleteUserError = "FailedOperation.DeleteUserError"
            case deleteUserExistsAdministrator = "FailedOperation.DeleteUserExistsAdministrator"
            case deleteUserGroupError = "FailedOperation.DeleteUserGroupError"
            case describeOrgNodeError = "FailedOperation.DescribeOrgNodeError"
            case describeOrgNodeRootError = "FailedOperation.DescribeOrgNodeRootError"
            case expectFieldsNotFound = "FailedOperation.ExpectFieldsNotFound"
            case groupIdNotFound = "FailedOperation.GroupIdNotFound"
            case idToCodeError = "FailedOperation.IdToCodeError"
            case limitQuotaNotEnough = "FailedOperation.LimitQuotaNotEnough"
            case listUserGroupsOfUserError = "FailedOperation.ListUserGroupsOfUserError"
            case listUsersInOrgNodeError = "FailedOperation.ListUsersInOrgNodeError"
            case listUsersInUserGroupError = "FailedOperation.ListUsersInUserGroupError"
            case mainOrgNodeNotExist = "FailedOperation.MainOrgNodeNotExist"
            case operationError = "FailedOperation.OperationError"
            case operationFailure = "FailedOperation.OperationFailure"
            case orgNodeIdNotExist = "FailedOperation.OrgNodeIdNotExist"
            case orgNodeNotExist = "FailedOperation.OrgNodeNotExist"
            case orgNodeRootCanNotBeDeleted = "FailedOperation.OrgNodeRootCanNotBeDeleted"
            case orgNodeSettingError = "FailedOperation.OrgNodeSettingError"
            case orgNodeWithUsersCanNotBeDeleted = "FailedOperation.OrgNodeWithUsersCanNotBeDeleted"
            case parentOrgNodeIdNotFound = "FailedOperation.ParentOrgNodeIdNotFound"
            case personNotFound = "FailedOperation.PersonNotFound"
            case removeUsersFromUserGroupError = "FailedOperation.RemoveUsersFromUserGroupError"
            case secondaryOrgNodeDuplicates = "FailedOperation.SecondaryOrgNodeDuplicates"
            case updateLDAPUserOrgExceedsRange = "FailedOperation.UpdateLDAPUserOrgExceedsRange"
            case updateLDAPUserOrgNotInSameCrop = "FailedOperation.UpdateLDAPUserOrgNotInSameCrop"
            case updateUserExceedsRange = "FailedOperation.UpdateUserExceedsRange"
            case updateWeComUserOrgExceedsRange = "FailedOperation.UpdateWeComUserOrgExceedsRange"
            case updateWeComUserOrgNotInSameCrop = "FailedOperation.UpdateWeComUserOrgNotInSameCrop"
            case userAuthListError = "FailedOperation.UserAuthListError"
            case userEmailAlreadyExists = "FailedOperation.UserEmailAlreadyExists"
            case userGroupNotExist = "FailedOperation.UserGroupNotExist"
            case userNameAlreadyExists = "FailedOperation.UserNameAlreadyExists"
            case userNotExistInUserGroup = "FailedOperation.UserNotExistInUserGroup"
            case userNotFound = "FailedOperation.UserNotFound"
            case userPhoneAlreadyExists = "FailedOperation.UserPhoneAlreadyExists"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 账号已存在于该账号组。
        public static var accountAlreadyExistedInAccountGroup: FailedOperation {
            FailedOperation(.accountAlreadyExistedInAccountGroup)
        }
        
        /// 账号组名称已存在。
        public static var accountGroupNameAlreadyExists: FailedOperation {
            FailedOperation(.accountGroupNameAlreadyExists)
        }
        
        /// 账号组不存在。
        public static var accountGroupNotExist: FailedOperation {
            FailedOperation(.accountGroupNotExist)
        }
        
        /// 账号名称已存在。
        public static var accountNameAlreadyExists: FailedOperation {
            FailedOperation(.accountNameAlreadyExists)
        }
        
        /// 账号不存在。
        public static var accountNotExist: FailedOperation {
            FailedOperation(.accountNotExist)
        }
        
        /// 账号不存在。
        public static var accountNotExisted: FailedOperation {
            FailedOperation(.accountNotExisted)
        }
        
        /// 应用名称已存在。
        public static var appDisplayNameAlreadyExists: FailedOperation {
            FailedOperation(.appDisplayNameAlreadyExists)
        }
        
        /// 应用不存在。
        public static var appNotExist: FailedOperation {
            FailedOperation(.appNotExist)
        }
        
        /// 同一组织下相同名称的子组织机构已存在。
        public static var childOrgNodeNameAlreadyExists: FailedOperation {
            FailedOperation(.childOrgNodeNameAlreadyExists)
        }
        
        /// 其子机构中存在用户的机构节点不能被删除。
        public static var childOrgNodeWithUsersCanNotBeDeleted: FailedOperation {
            FailedOperation(.childOrgNodeWithUsersCanNotBeDeleted)
        }
        
        /// 创建机构节点失败。
        public static var createOrgNodeError: FailedOperation {
            FailedOperation(.createOrgNodeError)
        }
        
        /// 创建用户异常。
        public static var createUserFailure: FailedOperation {
            FailedOperation(.createUserFailure)
        }
        
        /// 创建用户组失败。
        public static var createUserGroupError: FailedOperation {
            FailedOperation(.createUserGroupError)
        }
        
        /// 自定义机构节点对外ID已存在。
        public static var customizeParentOrgNodeIdAlreadyExists: FailedOperation {
            FailedOperation(.customizeParentOrgNodeIdAlreadyExists)
        }
        
        /// 自定义机构节点对外ID不可填为空字符。
        public static var customizedOrgNodeIdCanNotBeEmpty: FailedOperation {
            FailedOperation(.customizedOrgNodeIdCanNotBeEmpty)
        }
        
        /// 默认导入机构不能被删除。
        public static var defaultOrgNodeCanNotBeDeleted: FailedOperation {
            FailedOperation(.defaultOrgNodeCanNotBeDeleted)
        }
        
        /// 删除机构节点失败。
        public static var deleteOrgNodeError: FailedOperation {
            FailedOperation(.deleteOrgNodeError)
        }
        
        /// 删除用户失败。
        public static var deleteUserError: FailedOperation {
            FailedOperation(.deleteUserError)
        }
        
        /// 用户为管理员，不能删除。
        public static var deleteUserExistsAdministrator: FailedOperation {
            FailedOperation(.deleteUserExistsAdministrator)
        }
        
        /// 删除用户组失败。
        public static var deleteUserGroupError: FailedOperation {
            FailedOperation(.deleteUserGroupError)
        }
        
        /// 读取机构节点信息失败。
        public static var describeOrgNodeError: FailedOperation {
            FailedOperation(.describeOrgNodeError)
        }
        
        /// 读取根机构节点信息失败。
        public static var describeOrgNodeRootError: FailedOperation {
            FailedOperation(.describeOrgNodeRootError)
        }
        
        /// 期望返回的用户属性类型不存在。
        public static var expectFieldsNotFound: FailedOperation {
            FailedOperation(.expectFieldsNotFound)
        }
        
        /// 用户组ID未找到。
        public static var groupIdNotFound: FailedOperation {
            FailedOperation(.groupIdNotFound)
        }
        
        /// ID转换编码失败。
        public static var idToCodeError: FailedOperation {
            FailedOperation(.idToCodeError)
        }
        
        /// 同一个应用，相同的用户不能添加超过 %s 个映射关系。
        public static var limitQuotaNotEnough: FailedOperation {
            FailedOperation(.limitQuotaNotEnough)
        }
        
        /// 获取用户所在的用户组列表失败。
        public static var listUserGroupsOfUserError: FailedOperation {
            FailedOperation(.listUserGroupsOfUserError)
        }
        
        /// 读取节点下用户失败。
        public static var listUsersInOrgNodeError: FailedOperation {
            FailedOperation(.listUsersInOrgNodeError)
        }
        
        /// 获取用户组中的用户列表失败。
        public static var listUsersInUserGroupError: FailedOperation {
            FailedOperation(.listUsersInUserGroupError)
        }
        
        /// 主组织机构不存在。
        public static var mainOrgNodeNotExist: FailedOperation {
            FailedOperation(.mainOrgNodeNotExist)
        }
        
        /// 操作失败。
        public static var operationError: FailedOperation {
            FailedOperation(.operationError)
        }
        
        /// 操作失败。
        public static var operationFailure: FailedOperation {
            FailedOperation(.operationFailure)
        }
        
        /// 机构节点ID不存在。
        public static var orgNodeIdNotExist: FailedOperation {
            FailedOperation(.orgNodeIdNotExist)
        }
        
        /// 机构节点不存在。
        public static var orgNodeNotExist: FailedOperation {
            FailedOperation(.orgNodeNotExist)
        }
        
        /// 机构根节点不能被删除。
        public static var orgNodeRootCanNotBeDeleted: FailedOperation {
            FailedOperation(.orgNodeRootCanNotBeDeleted)
        }
        
        /// 组织机构设置失败，组织机构不可同时被选择为用户所属的主组织和次要机构。
        public static var orgNodeSettingError: FailedOperation {
            FailedOperation(.orgNodeSettingError)
        }
        
        /// 有用户存在的机构节点不能被删除。
        public static var orgNodeWithUsersCanNotBeDeleted: FailedOperation {
            FailedOperation(.orgNodeWithUsersCanNotBeDeleted)
        }
        
        /// 父机构节点ID未找到。
        public static var parentOrgNodeIdNotFound: FailedOperation {
            FailedOperation(.parentOrgNodeIdNotFound)
        }
        
        /// 身份主体未找到。
        public static var personNotFound: FailedOperation {
            FailedOperation(.personNotFound)
        }
        
        /// 从用户组中移除用户失败。
        public static var removeUsersFromUserGroupError: FailedOperation {
            FailedOperation(.removeUsersFromUserGroupError)
        }
        
        /// 次要机构元素重复。
        public static var secondaryOrgNodeDuplicates: FailedOperation {
            FailedOperation(.secondaryOrgNodeDuplicates)
        }
        
        /// 不能变更LDAP导入的用户到目录外的组织机构下。
        public static var updateLDAPUserOrgExceedsRange: FailedOperation {
            FailedOperation(.updateLDAPUserOrgExceedsRange)
        }
        
        /// 不能变更LDAP导入的用户到其他目录的企业机构下。
        public static var updateLDAPUserOrgNotInSameCrop: FailedOperation {
            FailedOperation(.updateLDAPUserOrgNotInSameCrop)
        }
        
        /// 不能变更自建用户到有同步操作类型的组织机构下。
        public static var updateUserExceedsRange: FailedOperation {
            FailedOperation(.updateUserExceedsRange)
        }
        
        /// 不能变更企业微信用户到企业外的组织机构。
        public static var updateWeComUserOrgExceedsRange: FailedOperation {
            FailedOperation(.updateWeComUserOrgExceedsRange)
        }
        
        /// 不能变更企业微信用户到非相同的企业机构下。
        public static var updateWeComUserOrgNotInSameCrop: FailedOperation {
            FailedOperation(.updateWeComUserOrgNotInSameCrop)
        }
        
        /// 获取用户被授权访问的应用列表失败。
        public static var userAuthListError: FailedOperation {
            FailedOperation(.userAuthListError)
        }
        
        /// 用户邮箱已存在。
        public static var userEmailAlreadyExists: FailedOperation {
            FailedOperation(.userEmailAlreadyExists)
        }
        
        /// 用户组不存在。
        public static var userGroupNotExist: FailedOperation {
            FailedOperation(.userGroupNotExist)
        }
        
        /// 用户名字已存在。
        public static var userNameAlreadyExists: FailedOperation {
            FailedOperation(.userNameAlreadyExists)
        }
        
        /// 用户不存在于该用户组。
        public static var userNotExistInUserGroup: FailedOperation {
            FailedOperation(.userNotExistInUserGroup)
        }
        
        /// 用户不存在。
        public static var userNotFound: FailedOperation {
            FailedOperation(.userNotFound)
        }
        
        /// 用户手机已存在。
        public static var userPhoneAlreadyExists: FailedOperation {
            FailedOperation(.userPhoneAlreadyExists)
        }
        
        public func asEiamError() -> TCEiamError {
            let code: TCEiamError.Code
            switch self.error {
            case .accountAlreadyExistedInAccountGroup: 
                code = .failedOperation_AccountAlreadyExistedInAccountGroup
            case .accountGroupNameAlreadyExists: 
                code = .failedOperation_AccountGroupNameAlreadyExists
            case .accountGroupNotExist: 
                code = .failedOperation_AccountGroupNotExist
            case .accountNameAlreadyExists: 
                code = .failedOperation_AccountNameAlreadyExists
            case .accountNotExist: 
                code = .failedOperation_AccountNotExist
            case .accountNotExisted: 
                code = .failedOperation_AccountNotExisted
            case .appDisplayNameAlreadyExists: 
                code = .failedOperation_AppDisplayNameAlreadyExists
            case .appNotExist: 
                code = .failedOperation_AppNotExist
            case .childOrgNodeNameAlreadyExists: 
                code = .failedOperation_ChildOrgNodeNameAlreadyExists
            case .childOrgNodeWithUsersCanNotBeDeleted: 
                code = .failedOperation_ChildOrgNodeWithUsersCanNotBeDeleted
            case .createOrgNodeError: 
                code = .failedOperation_CreateOrgNodeError
            case .createUserFailure: 
                code = .failedOperation_CreateUserFailure
            case .createUserGroupError: 
                code = .failedOperation_CreateUserGroupError
            case .customizeParentOrgNodeIdAlreadyExists: 
                code = .failedOperation_CustomizeParentOrgNodeIdAlreadyExists
            case .customizedOrgNodeIdCanNotBeEmpty: 
                code = .failedOperation_CustomizedOrgNodeIdCanNotBeEmpty
            case .defaultOrgNodeCanNotBeDeleted: 
                code = .failedOperation_DefaultOrgNodeCanNotBeDeleted
            case .deleteOrgNodeError: 
                code = .failedOperation_DeleteOrgNodeError
            case .deleteUserError: 
                code = .failedOperation_DeleteUserError
            case .deleteUserExistsAdministrator: 
                code = .failedOperation_DeleteUserExistsAdministrator
            case .deleteUserGroupError: 
                code = .failedOperation_DeleteUserGroupError
            case .describeOrgNodeError: 
                code = .failedOperation_DescribeOrgNodeError
            case .describeOrgNodeRootError: 
                code = .failedOperation_DescribeOrgNodeRootError
            case .expectFieldsNotFound: 
                code = .failedOperation_ExpectFieldsNotFound
            case .groupIdNotFound: 
                code = .failedOperation_GroupIdNotFound
            case .idToCodeError: 
                code = .failedOperation_IdToCodeError
            case .limitQuotaNotEnough: 
                code = .failedOperation_LimitQuotaNotEnough
            case .listUserGroupsOfUserError: 
                code = .failedOperation_ListUserGroupsOfUserError
            case .listUsersInOrgNodeError: 
                code = .failedOperation_ListUsersInOrgNodeError
            case .listUsersInUserGroupError: 
                code = .failedOperation_ListUsersInUserGroupError
            case .mainOrgNodeNotExist: 
                code = .failedOperation_MainOrgNodeNotExist
            case .operationError: 
                code = .failedOperation_OperationError
            case .operationFailure: 
                code = .failedOperation_OperationFailure
            case .orgNodeIdNotExist: 
                code = .failedOperation_OrgNodeIdNotExist
            case .orgNodeNotExist: 
                code = .failedOperation_OrgNodeNotExist
            case .orgNodeRootCanNotBeDeleted: 
                code = .failedOperation_OrgNodeRootCanNotBeDeleted
            case .orgNodeSettingError: 
                code = .failedOperation_OrgNodeSettingError
            case .orgNodeWithUsersCanNotBeDeleted: 
                code = .failedOperation_OrgNodeWithUsersCanNotBeDeleted
            case .parentOrgNodeIdNotFound: 
                code = .failedOperation_ParentOrgNodeIdNotFound
            case .personNotFound: 
                code = .failedOperation_PersonNotFound
            case .removeUsersFromUserGroupError: 
                code = .failedOperation_RemoveUsersFromUserGroupError
            case .secondaryOrgNodeDuplicates: 
                code = .failedOperation_SecondaryOrgNodeDuplicates
            case .updateLDAPUserOrgExceedsRange: 
                code = .failedOperation_UpdateLDAPUserOrgExceedsRange
            case .updateLDAPUserOrgNotInSameCrop: 
                code = .failedOperation_UpdateLDAPUserOrgNotInSameCrop
            case .updateUserExceedsRange: 
                code = .failedOperation_UpdateUserExceedsRange
            case .updateWeComUserOrgExceedsRange: 
                code = .failedOperation_UpdateWeComUserOrgExceedsRange
            case .updateWeComUserOrgNotInSameCrop: 
                code = .failedOperation_UpdateWeComUserOrgNotInSameCrop
            case .userAuthListError: 
                code = .failedOperation_UserAuthListError
            case .userEmailAlreadyExists: 
                code = .failedOperation_UserEmailAlreadyExists
            case .userGroupNotExist: 
                code = .failedOperation_UserGroupNotExist
            case .userNameAlreadyExists: 
                code = .failedOperation_UserNameAlreadyExists
            case .userNotExistInUserGroup: 
                code = .failedOperation_UserNotExistInUserGroup
            case .userNotFound: 
                code = .failedOperation_UserNotFound
            case .userPhoneAlreadyExists: 
                code = .failedOperation_UserPhoneAlreadyExists
            }
            return TCEiamError(code, context: self.context)
        }
    }
}
