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

extension TCRedisError {
    public struct ResourceUnavailable: TCRedisErrorType {
        enum Code: String {
            case accountBalanceNotEnough = "ResourceUnavailable.AccountBalanceNotEnough"
            case backupLockedError = "ResourceUnavailable.BackupLockedError"
            case backupStatusAbnormal = "ResourceUnavailable.BackupStatusAbnormal"
            case backupStatusInvalid = "ResourceUnavailable.BackupStatusInvalid"
            case callOssError = "ResourceUnavailable.CallOssError"
            case getSecurityError = "ResourceUnavailable.GetSecurityError"
            case instanceConfError = "ResourceUnavailable.InstanceConfError"
            case instanceDeleted = "ResourceUnavailable.InstanceDeleted"
            case instanceIsolated = "ResourceUnavailable.InstanceIsolated"
            case instanceLockedError = "ResourceUnavailable.InstanceLockedError"
            case instanceNoDeal = "ResourceUnavailable.InstanceNoDeal"
            case instanceNotSupportOperation = "ResourceUnavailable.InstanceNotSupportOperation"
            case instanceStateError = "ResourceUnavailable.InstanceStateError"
            case instanceStatusAbnormal = "ResourceUnavailable.InstanceStatusAbnormal"
            case instanceStatusError = "ResourceUnavailable.InstanceStatusError"
            case instanceUnLockedError = "ResourceUnavailable.InstanceUnLockedError"
            case noEnoughVipInVPC = "ResourceUnavailable.NoEnoughVipInVPC"
            case noRedisService = "ResourceUnavailable.NoRedisService"
            case noTypeIdRedisService = "ResourceUnavailable.NoTypeIdRedisService"
            case saleOut = "ResourceUnavailable.SaleOut"
            case securityGroupNotSupported = "ResourceUnavailable.SecurityGroupNotSupported"
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

        /// 请求订单号不存在。
        public static var accountBalanceNotEnough: ResourceUnavailable {
            ResourceUnavailable(.accountBalanceNotEnough)
        }

        /// 备份已被其它任务锁住，暂时不能执行该操作。
        public static var backupLockedError: ResourceUnavailable {
            ResourceUnavailable(.backupLockedError)
        }

        /// 备份状态异常，暂不能执行该操作。备份可能已过期或已被删除。
        public static var backupStatusAbnormal: ResourceUnavailable {
            ResourceUnavailable(.backupStatusAbnormal)
        }

        /// 备份状态无效，可能在其他流程中，也可能被删除。
        public static var backupStatusInvalid: ResourceUnavailable {
            ResourceUnavailable(.backupStatusInvalid)
        }

        /// 调用后端接口失败。
        public static var callOssError: ResourceUnavailable {
            ResourceUnavailable(.callOssError)
        }

        /// 获取安全组信息失败。
        public static var getSecurityError: ResourceUnavailable {
            ResourceUnavailable(.getSecurityError)
        }

        /// 实例配置错误。
        public static var instanceConfError: ResourceUnavailable {
            ResourceUnavailable(.instanceConfError)
        }

        /// 实例已经被回收了。
        public static var instanceDeleted: ResourceUnavailable {
            ResourceUnavailable(.instanceDeleted)
        }

        /// 实例已过期。
        public static var instanceIsolated: ResourceUnavailable {
            ResourceUnavailable(.instanceIsolated)
        }

        /// redis 已经被其它流程锁定。
        public static var instanceLockedError: ResourceUnavailable {
            ResourceUnavailable(.instanceLockedError)
        }

        /// 订单不存在。
        public static var instanceNoDeal: ResourceUnavailable {
            ResourceUnavailable(.instanceNoDeal)
        }

        /// 实例状态不支持操作。
        public static var instanceNotSupportOperation: ResourceUnavailable {
            ResourceUnavailable(.instanceNotSupportOperation)
        }

        /// 实例状态错误。
        public static var instanceStateError: ResourceUnavailable {
            ResourceUnavailable(.instanceStateError)
        }

        /// redis 状态异常，不能执行对应流程。
        public static var instanceStatusAbnormal: ResourceUnavailable {
            ResourceUnavailable(.instanceStatusAbnormal)
        }

        /// 实例状态异常，不能执行对应操作。
        public static var instanceStatusError: ResourceUnavailable {
            ResourceUnavailable(.instanceStatusError)
        }

        public static var instanceUnLockedError: ResourceUnavailable {
            ResourceUnavailable(.instanceUnLockedError)
        }

        /// vpc网络IP资源不足。
        public static var noEnoughVipInVPC: ResourceUnavailable {
            ResourceUnavailable(.noEnoughVipInVPC)
        }

        /// 请求的区域暂时不提供redis服务。
        public static var noRedisService: ResourceUnavailable {
            ResourceUnavailable(.noRedisService)
        }

        /// 请求的区域暂时不提供请求类型的redis服务。
        public static var noTypeIdRedisService: ResourceUnavailable {
            ResourceUnavailable(.noTypeIdRedisService)
        }

        /// 地域对应类型已售罄。
        public static var saleOut: ResourceUnavailable {
            ResourceUnavailable(.saleOut)
        }

        /// 产品还没有接入安全组。
        public static var securityGroupNotSupported: ResourceUnavailable {
            ResourceUnavailable(.securityGroupNotSupported)
        }

        public func asRedisError() -> TCRedisError {
            let code: TCRedisError.Code
            switch self.error {
            case .accountBalanceNotEnough:
                code = .resourceUnavailable_AccountBalanceNotEnough
            case .backupLockedError:
                code = .resourceUnavailable_BackupLockedError
            case .backupStatusAbnormal:
                code = .resourceUnavailable_BackupStatusAbnormal
            case .backupStatusInvalid:
                code = .resourceUnavailable_BackupStatusInvalid
            case .callOssError:
                code = .resourceUnavailable_CallOssError
            case .getSecurityError:
                code = .resourceUnavailable_GetSecurityError
            case .instanceConfError:
                code = .resourceUnavailable_InstanceConfError
            case .instanceDeleted:
                code = .resourceUnavailable_InstanceDeleted
            case .instanceIsolated:
                code = .resourceUnavailable_InstanceIsolated
            case .instanceLockedError:
                code = .resourceUnavailable_InstanceLockedError
            case .instanceNoDeal:
                code = .resourceUnavailable_InstanceNoDeal
            case .instanceNotSupportOperation:
                code = .resourceUnavailable_InstanceNotSupportOperation
            case .instanceStateError:
                code = .resourceUnavailable_InstanceStateError
            case .instanceStatusAbnormal:
                code = .resourceUnavailable_InstanceStatusAbnormal
            case .instanceStatusError:
                code = .resourceUnavailable_InstanceStatusError
            case .instanceUnLockedError:
                code = .resourceUnavailable_InstanceUnLockedError
            case .noEnoughVipInVPC:
                code = .resourceUnavailable_NoEnoughVipInVPC
            case .noRedisService:
                code = .resourceUnavailable_NoRedisService
            case .noTypeIdRedisService:
                code = .resourceUnavailable_NoTypeIdRedisService
            case .saleOut:
                code = .resourceUnavailable_SaleOut
            case .securityGroupNotSupported:
                code = .resourceUnavailable_SecurityGroupNotSupported
            }
            return TCRedisError(code, context: self.context)
        }
    }
}
