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
    public struct UnsupportedOperation: TCOrganizationErrorType {
        enum Code: String {
            case addDelegatePayerNotAllow = "UnsupportedOperation.AddDelegatePayerNotAllow"
            case addDiscountInheritNotAllow = "UnsupportedOperation.AddDiscountInheritNotAllow"
            case createMemberNotAllowCreateOrganization = "UnsupportedOperation.CreateMemberNotAllowCreateOrganization"
            case createMemberNotAllowDelete = "UnsupportedOperation.CreateMemberNotAllowDelete"
            case createMemberNotAllowQuit = "UnsupportedOperation.CreateMemberNotAllowQuit"
            case deleteDelegatePayerNotAllow = "UnsupportedOperation.DeleteDelegatePayerNotAllow"
            case existedAgent = "UnsupportedOperation.ExistedAgent"
            case existedClient = "UnsupportedOperation.ExistedClient"
            case inconsistentUserTypes = "UnsupportedOperation.InconsistentUserTypes"
            case managementSystemError = "UnsupportedOperation.ManagementSystemError"
            case memberAccountArrears = "UnsupportedOperation.MemberAccountArrears"
            case memberDiscountInheritExisted = "UnsupportedOperation.MemberDiscountInheritExisted"
            case memberExistAccountLevelDiscountInherit = "UnsupportedOperation.MemberExistAccountLevelDiscountInherit"
            case memberExistOperateProcessNotAllowDelete = "UnsupportedOperation.MemberExistOperateProcessNotAllowDelete"
            case memberExistServiceNotAllowDelete = "UnsupportedOperation.MemberExistServiceNotAllowDelete"
            case memberIsAgent = "UnsupportedOperation.MemberIsAgent"
            case memberNoPayment = "UnsupportedOperation.MemberNoPayment"
            case memberNotAllowQuit = "UnsupportedOperation.MemberNotAllowQuit"
            case orderInProgressExisted = "UnsupportedOperation.OrderInProgressExisted"
            case ownerDiscountInheritExisted = "UnsupportedOperation.OwnerDiscountInheritExisted"
            case payerArrearsAndNoCreditAccount = "UnsupportedOperation.PayerArrearsAndNoCreditAccount"
            case payerExistAccountLevelDiscountInherit = "UnsupportedOperation.PayerExistAccountLevelDiscountInherit"
            case other = "UnsupportedOperation"
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

        /// 不允许添加代付关系。
        public static var addDelegatePayerNotAllow: UnsupportedOperation {
            UnsupportedOperation(.addDelegatePayerNotAllow)
        }

        /// 不允许添加优惠继承关系。
        public static var addDiscountInheritNotAllow: UnsupportedOperation {
            UnsupportedOperation(.addDiscountInheritNotAllow)
        }

        /// 创建的成员不允许创建组织。
        public static var createMemberNotAllowCreateOrganization: UnsupportedOperation {
            UnsupportedOperation(.createMemberNotAllowCreateOrganization)
        }

        /// 创建的成员不允许删除。
        public static var createMemberNotAllowDelete: UnsupportedOperation {
            UnsupportedOperation(.createMemberNotAllowDelete)
        }

        /// 创建的成员不允许退出。
        public static var createMemberNotAllowQuit: UnsupportedOperation {
            UnsupportedOperation(.createMemberNotAllowQuit)
        }

        /// 不允许删除代付关系。
        public static var deleteDelegatePayerNotAllow: UnsupportedOperation {
            UnsupportedOperation(.deleteDelegatePayerNotAllow)
        }

        /// 成员或者代付者存在经销商。
        public static var existedAgent: UnsupportedOperation {
            UnsupportedOperation(.existedAgent)
        }

        /// 成员或者代付者存在经销商子客。
        public static var existedClient: UnsupportedOperation {
            UnsupportedOperation(.existedClient)
        }

        /// 用户类型不一致。
        public static var inconsistentUserTypes: UnsupportedOperation {
            UnsupportedOperation(.inconsistentUserTypes)
        }

        /// 调用经管系统报错。
        public static var managementSystemError: UnsupportedOperation {
            UnsupportedOperation(.managementSystemError)
        }

        /// 成员账户欠费。
        public static var memberAccountArrears: UnsupportedOperation {
            UnsupportedOperation(.memberAccountArrears)
        }

        /// 成员存在优惠继承。
        public static var memberDiscountInheritExisted: UnsupportedOperation {
            UnsupportedOperation(.memberDiscountInheritExisted)
        }

        /// 成员存在账户级优惠。
        public static var memberExistAccountLevelDiscountInherit: UnsupportedOperation {
            UnsupportedOperation(.memberExistAccountLevelDiscountInherit)
        }

        /// 成员设置了操作审批,不允许删除。
        public static var memberExistOperateProcessNotAllowDelete: UnsupportedOperation {
            UnsupportedOperation(.memberExistOperateProcessNotAllowDelete)
        }

        /// 组织成员被委派集团服务，不允许退出。
        public static var memberExistServiceNotAllowDelete: UnsupportedOperation {
            UnsupportedOperation(.memberExistServiceNotAllowDelete)
        }

        /// 成员是代理商或代客。
        public static var memberIsAgent: UnsupportedOperation {
            UnsupportedOperation(.memberIsAgent)
        }

        /// 成员没有绑卡。
        public static var memberNoPayment: UnsupportedOperation {
            UnsupportedOperation(.memberNoPayment)
        }

        /// 成员不支持主动退出。
        public static var memberNotAllowQuit: UnsupportedOperation {
            UnsupportedOperation(.memberNotAllowQuit)
        }

        /// 存在在途订单。
        public static var orderInProgressExisted: UnsupportedOperation {
            UnsupportedOperation(.orderInProgressExisted)
        }

        /// 管理员存在优惠继承。
        public static var ownerDiscountInheritExisted: UnsupportedOperation {
            UnsupportedOperation(.ownerDiscountInheritExisted)
        }

        /// 代付者欠费且未开通信用账户。
        public static var payerArrearsAndNoCreditAccount: UnsupportedOperation {
            UnsupportedOperation(.payerArrearsAndNoCreditAccount)
        }

        /// 代付者存在账户级优惠。
        public static var payerExistAccountLevelDiscountInherit: UnsupportedOperation {
            UnsupportedOperation(.payerExistAccountLevelDiscountInherit)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asOrganizationError() -> TCOrganizationError {
            let code: TCOrganizationError.Code
            switch self.error {
            case .addDelegatePayerNotAllow:
                code = .unsupportedOperation_AddDelegatePayerNotAllow
            case .addDiscountInheritNotAllow:
                code = .unsupportedOperation_AddDiscountInheritNotAllow
            case .createMemberNotAllowCreateOrganization:
                code = .unsupportedOperation_CreateMemberNotAllowCreateOrganization
            case .createMemberNotAllowDelete:
                code = .unsupportedOperation_CreateMemberNotAllowDelete
            case .createMemberNotAllowQuit:
                code = .unsupportedOperation_CreateMemberNotAllowQuit
            case .deleteDelegatePayerNotAllow:
                code = .unsupportedOperation_DeleteDelegatePayerNotAllow
            case .existedAgent:
                code = .unsupportedOperation_ExistedAgent
            case .existedClient:
                code = .unsupportedOperation_ExistedClient
            case .inconsistentUserTypes:
                code = .unsupportedOperation_InconsistentUserTypes
            case .managementSystemError:
                code = .unsupportedOperation_ManagementSystemError
            case .memberAccountArrears:
                code = .unsupportedOperation_MemberAccountArrears
            case .memberDiscountInheritExisted:
                code = .unsupportedOperation_MemberDiscountInheritExisted
            case .memberExistAccountLevelDiscountInherit:
                code = .unsupportedOperation_MemberExistAccountLevelDiscountInherit
            case .memberExistOperateProcessNotAllowDelete:
                code = .unsupportedOperation_MemberExistOperateProcessNotAllowDelete
            case .memberExistServiceNotAllowDelete:
                code = .unsupportedOperation_MemberExistServiceNotAllowDelete
            case .memberIsAgent:
                code = .unsupportedOperation_MemberIsAgent
            case .memberNoPayment:
                code = .unsupportedOperation_MemberNoPayment
            case .memberNotAllowQuit:
                code = .unsupportedOperation_MemberNotAllowQuit
            case .orderInProgressExisted:
                code = .unsupportedOperation_OrderInProgressExisted
            case .ownerDiscountInheritExisted:
                code = .unsupportedOperation_OwnerDiscountInheritExisted
            case .payerArrearsAndNoCreditAccount:
                code = .unsupportedOperation_PayerArrearsAndNoCreditAccount
            case .payerExistAccountLevelDiscountInherit:
                code = .unsupportedOperation_PayerExistAccountLevelDiscountInherit
            case .other:
                code = .unsupportedOperation
            }
            return TCOrganizationError(code, context: self.context)
        }
    }
}
