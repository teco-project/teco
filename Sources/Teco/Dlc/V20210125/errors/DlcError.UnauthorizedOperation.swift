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

extension TCDlcError {
    public struct UnauthorizedOperation: TCDlcErrorType {
        enum Code: String {
            case addUsersToWorkgroup = "UnauthorizedOperation.AddUsersToWorkgroup"
            case bindWorkgroupsToUser = "UnauthorizedOperation.BindWorkgroupsToUser"
            case createWorkgroup = "UnauthorizedOperation.CreateWorkgroup"
            case deleteUser = "UnauthorizedOperation.DeleteUser"
            case deleteUsersFromWorkgroup = "UnauthorizedOperation.DeleteUsersFromWorkgroup"
            case deleteWorkgroup = "UnauthorizedOperation.DeleteWorkgroup"
            case grantPolicy = "UnauthorizedOperation.GrantPolicy"
            case modifyUserInfo = "UnauthorizedOperation.ModifyUserInfo"
            case modifyWorkgroupInfo = "UnauthorizedOperation.ModifyWorkgroupInfo"
            case noPaymentAuthority = "UnauthorizedOperation.NoPaymentAuthority"
            case operateComputingEngine = "UnauthorizedOperation.OperateComputingEngine"
            case revokePolicy = "UnauthorizedOperation.RevokePolicy"
            case unbindWorkgroupsFromUser = "UnauthorizedOperation.UnbindWorkgroupsFromUser"
            case useComputingEngine = "UnauthorizedOperation.UseComputingEngine"
            case userNotExist = "UnauthorizedOperation.UserNotExist"
            case other = "UnauthorizedOperation"
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

        /// 子用户不是管理员，无权将用户添加到工作组。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var addUsersToWorkgroup: UnauthorizedOperation {
            UnauthorizedOperation(.addUsersToWorkgroup)
        }

        /// 子用户不是管理员，无权绑定工作组到用户。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var bindWorkgroupsToUser: UnauthorizedOperation {
            UnauthorizedOperation(.bindWorkgroupsToUser)
        }

        /// 子用户不是管理员，无权创建工作组。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var createWorkgroup: UnauthorizedOperation {
            UnauthorizedOperation(.createWorkgroup)
        }

        /// 子用户不是管理员，无权删除用户。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var deleteUser: UnauthorizedOperation {
            UnauthorizedOperation(.deleteUser)
        }

        /// 子用户不是管理员，无权将用户从工作组解绑。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var deleteUsersFromWorkgroup: UnauthorizedOperation {
            UnauthorizedOperation(.deleteUsersFromWorkgroup)
        }

        /// 子用户不是管理员，无权删除工作组。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var deleteWorkgroup: UnauthorizedOperation {
            UnauthorizedOperation(.deleteWorkgroup)
        }

        /// 子用户无权授予特定权限。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var grantPolicy: UnauthorizedOperation {
            UnauthorizedOperation(.grantPolicy)
        }

        /// 子用户不是管理员，无权修改用户信息。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var modifyUserInfo: UnauthorizedOperation {
            UnauthorizedOperation(.modifyUserInfo)
        }

        /// 子用户不是管理员，无权修改工作组信息。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var modifyWorkgroupInfo: UnauthorizedOperation {
            UnauthorizedOperation(.modifyWorkgroupInfo)
        }

        /// 没有支付权限。
        ///
        /// 子用户没有支付权限，请联系主账号进行购买或者添加权限。
        public static var noPaymentAuthority: UnauthorizedOperation {
            UnauthorizedOperation(.noPaymentAuthority)
        }

        /// 子用户无权操作引擎。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var operateComputingEngine: UnauthorizedOperation {
            UnauthorizedOperation(.operateComputingEngine)
        }

        /// 子用户无权取消特定权限。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var revokePolicy: UnauthorizedOperation {
            UnauthorizedOperation(.revokePolicy)
        }

        /// 子用户不是管理员，无权将工作组和用户解绑。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var unbindWorkgroupsFromUser: UnauthorizedOperation {
            UnauthorizedOperation(.unbindWorkgroupsFromUser)
        }

        /// 子用户无权使用计算引擎。
        ///
        /// 请DLC管理员前往【权限管理】为您授权后重试操作
        public static var useComputingEngine: UnauthorizedOperation {
            UnauthorizedOperation(.useComputingEngine)
        }

        /// 子用户不存在。
        ///
        /// 请DLC管理员前往【权限管理】新建用户并授权后重试操作
        public static var userNotExist: UnauthorizedOperation {
            UnauthorizedOperation(.userNotExist)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asDlcError() -> TCDlcError {
            let code: TCDlcError.Code
            switch self.error {
            case .addUsersToWorkgroup:
                code = .unauthorizedOperation_AddUsersToWorkgroup
            case .bindWorkgroupsToUser:
                code = .unauthorizedOperation_BindWorkgroupsToUser
            case .createWorkgroup:
                code = .unauthorizedOperation_CreateWorkgroup
            case .deleteUser:
                code = .unauthorizedOperation_DeleteUser
            case .deleteUsersFromWorkgroup:
                code = .unauthorizedOperation_DeleteUsersFromWorkgroup
            case .deleteWorkgroup:
                code = .unauthorizedOperation_DeleteWorkgroup
            case .grantPolicy:
                code = .unauthorizedOperation_GrantPolicy
            case .modifyUserInfo:
                code = .unauthorizedOperation_ModifyUserInfo
            case .modifyWorkgroupInfo:
                code = .unauthorizedOperation_ModifyWorkgroupInfo
            case .noPaymentAuthority:
                code = .unauthorizedOperation_NoPaymentAuthority
            case .operateComputingEngine:
                code = .unauthorizedOperation_OperateComputingEngine
            case .revokePolicy:
                code = .unauthorizedOperation_RevokePolicy
            case .unbindWorkgroupsFromUser:
                code = .unauthorizedOperation_UnbindWorkgroupsFromUser
            case .useComputingEngine:
                code = .unauthorizedOperation_UseComputingEngine
            case .userNotExist:
                code = .unauthorizedOperation_UserNotExist
            case .other:
                code = .unauthorizedOperation
            }
            return TCDlcError(code, context: self.context)
        }
    }
}
