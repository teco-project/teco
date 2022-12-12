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

extension TCCiamError {
    public struct FailedOperation: TCCiamErrorType {
        enum Code: String {
            case accountAlreadyBeLinked = "FailedOperation.AccountAlreadyBeLinked"
            case attributeFormatError = "FailedOperation.AttributeFormatError"
            case dataFlowTooManyRequests = "FailedOperation.DataFlowTooManyRequests"
            case emailAlreadyExists = "FailedOperation.EmailAlreadyExists"
            case emailIsNull = "FailedOperation.EmailIsNull"
            case importUserIsEmpty = "FailedOperation.ImportUserIsEmpty"
            case indexedAttributeTooLong = "FailedOperation.IndexedAttributeTooLong"
            case invalidTenant = "FailedOperation.InvalidTenant"
            case invalidUserStatusEnum = "FailedOperation.InvalidUserStatusEnum"
            case invalidUserStore = "FailedOperation.InvalidUserStore"
            case passwordIsNull = "FailedOperation.PasswordIsNull"
            case phoneNumberAlreadyExists = "FailedOperation.PhoneNumberAlreadyExists"
            case phoneNumberIsNull = "FailedOperation.PhoneNumberIsNull"
            case primaryUserNotFound = "FailedOperation.PrimaryUserNotFound"
            case queryUsersParameterMustInWhitelist = "FailedOperation.QueryUsersParameterMustInWhitelist"
            case queryUsersParameterRepeat = "FailedOperation.QueryUsersParameterRepeat"
            case queryUsersSortParameterMustInWhitelist = "FailedOperation.QueryUsersSortParameterMustInWhitelist"
            case quotaLimitExceeded = "FailedOperation.QuotaLimitExceeded"
            case secondaryUserNotFound = "FailedOperation.SecondaryUserNotFound"
            case userGroupNotFound = "FailedOperation.UserGroupNotFound"
            case userIsFreeze = "FailedOperation.UserIsFreeze"
            case userNameAlreadyExists = "FailedOperation.UserNameAlreadyExists"
            case userNameIsNull = "FailedOperation.UserNameIsNull"
            case userNotFound = "FailedOperation.UserNotFound"
            case userStatusRequired = "FailedOperation.UserStatusRequired"
            case other = "FailedOperation"
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
        
        /// 从账号已经被融合过，不允许再次融合。
        public static var accountAlreadyBeLinked: FailedOperation {
            FailedOperation(.accountAlreadyBeLinked)
        }
        
        /// 用户属性格式异常。
        public static var attributeFormatError: FailedOperation {
            FailedOperation(.attributeFormatError)
        }
        
        /// 已存在2个有效的任务，请等待其中一部分完成后重试。
        public static var dataFlowTooManyRequests: FailedOperation {
            FailedOperation(.dataFlowTooManyRequests)
        }
        
        /// 该邮箱已被用户绑定。
        public static var emailAlreadyExists: FailedOperation {
            FailedOperation(.emailAlreadyExists)
        }
        
        /// 邮箱地址不能为空。
        public static var emailIsNull: FailedOperation {
            FailedOperation(.emailIsNull)
        }
        
        /// 在接口中传入用户数据。
        public static var importUserIsEmpty: FailedOperation {
            FailedOperation(.importUserIsEmpty)
        }
        
        /// indexedAttribute最长512字符。
        public static var indexedAttributeTooLong: FailedOperation {
            FailedOperation(.indexedAttributeTooLong)
        }
        
        /// 无效租户。
        public static var invalidTenant: FailedOperation {
            FailedOperation(.invalidTenant)
        }
        
        /// 状态枚举值错误，请参考接口文档。
        public static var invalidUserStatusEnum: FailedOperation {
            FailedOperation(.invalidUserStatusEnum)
        }
        
        /// 无效用户池。
        public static var invalidUserStore: FailedOperation {
            FailedOperation(.invalidUserStore)
        }
        
        /// 密码不能为空。
        public static var passwordIsNull: FailedOperation {
            FailedOperation(.passwordIsNull)
        }
        
        /// 该手机号已被用户绑定。
        public static var phoneNumberAlreadyExists: FailedOperation {
            FailedOperation(.phoneNumberAlreadyExists)
        }
        
        /// 电话号码不能为空。
        public static var phoneNumberIsNull: FailedOperation {
            FailedOperation(.phoneNumberIsNull)
        }
        
        /// 主用户不存在。
        public static var primaryUserNotFound: FailedOperation {
            FailedOperation(.primaryUserNotFound)
        }
        
        /// 查询条件必须包含id, userName, phoneNumber, email, userGroup, alipayUserId, wechatOpenId,wechatUnionId, qqOpenId, qqUnionId,lastModifiedDate, createdDate,indexedAttribute1, indexedAttribute2,indexedAttribute3, indexedAttribute4, indexedAttribute5中的一个或者多个。
        public static var queryUsersParameterMustInWhitelist: FailedOperation {
            FailedOperation(.queryUsersParameterMustInWhitelist)
        }
        
        /// 将filter中的重复propertyKey去掉。
        public static var queryUsersParameterRepeat: FailedOperation {
            FailedOperation(.queryUsersParameterRepeat)
        }
        
        /// Sort条件的PropertyKey必须在id, userName, phoneNumber, email, userGroup, alipayUserId, wechatOpenId,wechatUnionId, qqOpenId,qqUnionId,lastModifiedDate, createdDate,indexedAttribute1, indexedAttribute2,indexedAttribute3, indexedAttribute4, indexedAttribute5中。
        public static var queryUsersSortParameterMustInWhitelist: FailedOperation {
            FailedOperation(.queryUsersSortParameterMustInWhitelist)
        }
        
        /// 配额超限，如有需求请联系客服人员。
        public static var quotaLimitExceeded: FailedOperation {
            FailedOperation(.quotaLimitExceeded)
        }
        
        /// 从用户不存在。
        public static var secondaryUserNotFound: FailedOperation {
            FailedOperation(.secondaryUserNotFound)
        }
        
        /// 用户组不存在。
        public static var userGroupNotFound: FailedOperation {
            FailedOperation(.userGroupNotFound)
        }
        
        /// 用户已被冻结。
        public static var userIsFreeze: FailedOperation {
            FailedOperation(.userIsFreeze)
        }
        
        /// 用户名称已存在。
        public static var userNameAlreadyExists: FailedOperation {
            FailedOperation(.userNameAlreadyExists)
        }
        
        /// 用户名不能为空。
        ///
        /// 报文中添加用户名UserName。
        public static var userNameIsNull: FailedOperation {
            FailedOperation(.userNameIsNull)
        }
        
        /// 用户不存在。
        public static var userNotFound: FailedOperation {
            FailedOperation(.userNotFound)
        }
        
        /// 更新状态必传。
        public static var userStatusRequired: FailedOperation {
            FailedOperation(.userStatusRequired)
        }
        
        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }
        
        public func asCiamError() -> TCCiamError {
            let code: TCCiamError.Code
            switch self.error {
            case .accountAlreadyBeLinked: 
                code = .failedOperation_AccountAlreadyBeLinked
            case .attributeFormatError: 
                code = .failedOperation_AttributeFormatError
            case .dataFlowTooManyRequests: 
                code = .failedOperation_DataFlowTooManyRequests
            case .emailAlreadyExists: 
                code = .failedOperation_EmailAlreadyExists
            case .emailIsNull: 
                code = .failedOperation_EmailIsNull
            case .importUserIsEmpty: 
                code = .failedOperation_ImportUserIsEmpty
            case .indexedAttributeTooLong: 
                code = .failedOperation_IndexedAttributeTooLong
            case .invalidTenant: 
                code = .failedOperation_InvalidTenant
            case .invalidUserStatusEnum: 
                code = .failedOperation_InvalidUserStatusEnum
            case .invalidUserStore: 
                code = .failedOperation_InvalidUserStore
            case .passwordIsNull: 
                code = .failedOperation_PasswordIsNull
            case .phoneNumberAlreadyExists: 
                code = .failedOperation_PhoneNumberAlreadyExists
            case .phoneNumberIsNull: 
                code = .failedOperation_PhoneNumberIsNull
            case .primaryUserNotFound: 
                code = .failedOperation_PrimaryUserNotFound
            case .queryUsersParameterMustInWhitelist: 
                code = .failedOperation_QueryUsersParameterMustInWhitelist
            case .queryUsersParameterRepeat: 
                code = .failedOperation_QueryUsersParameterRepeat
            case .queryUsersSortParameterMustInWhitelist: 
                code = .failedOperation_QueryUsersSortParameterMustInWhitelist
            case .quotaLimitExceeded: 
                code = .failedOperation_QuotaLimitExceeded
            case .secondaryUserNotFound: 
                code = .failedOperation_SecondaryUserNotFound
            case .userGroupNotFound: 
                code = .failedOperation_UserGroupNotFound
            case .userIsFreeze: 
                code = .failedOperation_UserIsFreeze
            case .userNameAlreadyExists: 
                code = .failedOperation_UserNameAlreadyExists
            case .userNameIsNull: 
                code = .failedOperation_UserNameIsNull
            case .userNotFound: 
                code = .failedOperation_UserNotFound
            case .userStatusRequired: 
                code = .failedOperation_UserStatusRequired
            case .other: 
                code = .failedOperation
            }
            return TCCiamError(code, context: self.context)
        }
    }
}
