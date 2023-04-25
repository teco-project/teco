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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCDcdbError {
    public struct InvalidParameterValue: TCDcdbErrorType {
        enum Code: String {
            case accountAlreadyExists = "InvalidParameterValue.AccountAlreadyExists"
            case badSyncMode = "InvalidParameterValue.BadSyncMode"
            case badUserRight = "InvalidParameterValue.BadUserRight"
            case badUserType = "InvalidParameterValue.BadUserType"
            case illegalExclusterID = "InvalidParameterValue.IllegalExclusterID"
            case illegalInitParam = "InvalidParameterValue.IllegalInitParam"
            case illegalQuantity = "InvalidParameterValue.IllegalQuantity"
            case illegalRightParam = "InvalidParameterValue.IllegalRightParam"
            case illegalZone = "InvalidParameterValue.IllegalZone"
            case invalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
            case shardNotExist = "InvalidParameterValue.ShardNotExist"
            case specIdIllegal = "InvalidParameterValue.SpecIdIllegal"
            case superUserForbidden = "InvalidParameterValue.SuperUserForbidden"
            case syncModeNotAllowed = "InvalidParameterValue.SyncModeNotAllowed"
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

        /// 想要创建的账号已经存在。
        public static var accountAlreadyExists: InvalidParameterValue {
            InvalidParameterValue(.accountAlreadyExists)
        }

        /// 该实例不支持此同步模式。
        public static var badSyncMode: InvalidParameterValue {
            InvalidParameterValue(.badSyncMode)
        }

        /// 指定的权限无法赋予给该账号。
        public static var badUserRight: InvalidParameterValue {
            InvalidParameterValue(.badUserRight)
        }

        /// 账号类型不正确。
        public static var badUserType: InvalidParameterValue {
            InvalidParameterValue(.badUserType)
        }

        /// 找不到数据库实例所属的独享集群。
        public static var illegalExclusterID: InvalidParameterValue {
            InvalidParameterValue(.illegalExclusterID)
        }

        /// 初始化数据库实例参数错误。
        public static var illegalInitParam: InvalidParameterValue {
            InvalidParameterValue(.illegalInitParam)
        }

        /// 商品数量超出限制。
        public static var illegalQuantity: InvalidParameterValue {
            InvalidParameterValue(.illegalQuantity)
        }

        /// 权限参数不正确。
        public static var illegalRightParam: InvalidParameterValue {
            InvalidParameterValue(.illegalRightParam)
        }

        /// 找不到指定的可用区。
        public static var illegalZone: InvalidParameterValue {
            InvalidParameterValue(.illegalZone)
        }

        /// 参数值传入错误。
        public static var invalidParameterValueError: InvalidParameterValue {
            InvalidParameterValue(.invalidParameterValueError)
        }

        /// 分片不存在。
        public static var shardNotExist: InvalidParameterValue {
            InvalidParameterValue(.shardNotExist)
        }

        /// 找不到数据库实例对应的规格信息。
        public static var specIdIllegal: InvalidParameterValue {
            InvalidParameterValue(.specIdIllegal)
        }

        /// 系统用户不允许操作。
        public static var superUserForbidden: InvalidParameterValue {
            InvalidParameterValue(.superUserForbidden)
        }

        /// 当前部署方式不允许设置此同步模式。
        public static var syncModeNotAllowed: InvalidParameterValue {
            InvalidParameterValue(.syncModeNotAllowed)
        }

        public func asDcdbError() -> TCDcdbError {
            let code: TCDcdbError.Code
            switch self.error {
            case .accountAlreadyExists:
                code = .invalidParameterValue_AccountAlreadyExists
            case .badSyncMode:
                code = .invalidParameterValue_BadSyncMode
            case .badUserRight:
                code = .invalidParameterValue_BadUserRight
            case .badUserType:
                code = .invalidParameterValue_BadUserType
            case .illegalExclusterID:
                code = .invalidParameterValue_IllegalExclusterID
            case .illegalInitParam:
                code = .invalidParameterValue_IllegalInitParam
            case .illegalQuantity:
                code = .invalidParameterValue_IllegalQuantity
            case .illegalRightParam:
                code = .invalidParameterValue_IllegalRightParam
            case .illegalZone:
                code = .invalidParameterValue_IllegalZone
            case .invalidParameterValueError:
                code = .invalidParameterValue_InvalidParameterValueError
            case .shardNotExist:
                code = .invalidParameterValue_ShardNotExist
            case .specIdIllegal:
                code = .invalidParameterValue_SpecIdIllegal
            case .superUserForbidden:
                code = .invalidParameterValue_SuperUserForbidden
            case .syncModeNotAllowed:
                code = .invalidParameterValue_SyncModeNotAllowed
            }
            return TCDcdbError(code, context: self.context)
        }
    }
}
