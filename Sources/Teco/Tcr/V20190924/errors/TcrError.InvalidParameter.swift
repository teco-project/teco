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

extension TCTcrError {
    public struct InvalidParameter: TCTcrErrorType {
        enum Code: String {
            case errNSMisMatch = "InvalidParameter.ErrNSMisMatch"
            case errNamespaceExist = "InvalidParameter.ErrNamespaceExist"
            case errNamespaceReserved = "InvalidParameter.ErrNamespaceReserved"
            case errRepoExist = "InvalidParameter.ErrRepoExist"
            case errTooLarge = "InvalidParameter.ErrTooLarge"
            case errTriggerExist = "InvalidParameter.ErrTriggerExist"
            case errUserExist = "InvalidParameter.ErrUserExist"
            case errorNameExists = "InvalidParameter.ErrorNameExists"
            case errorNameIllegal = "InvalidParameter.ErrorNameIllegal"
            case errorNameReserved = "InvalidParameter.ErrorNameReserved"
            case errorRegistryName = "InvalidParameter.ErrorRegistryName"
            case errorTagOverLimit = "InvalidParameter.ErrorTagOverLimit"
            case errorTcrInvalidParameter = "InvalidParameter.ErrorTcrInvalidParameter"
            case replicationExists = "InvalidParameter.ReplicationExists"
            case unsupportedRegion = "InvalidParameter.UnsupportedRegion"
            case other = "InvalidParameter"
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

        /// 用户请求中的信息与其namespace不匹配。
        public static var errNSMisMatch: InvalidParameter {
            InvalidParameter(.errNSMisMatch)
        }

        /// 命名空间名称已经存在。
        public static var errNamespaceExist: InvalidParameter {
            InvalidParameter(.errNamespaceExist)
        }

        /// 命名空间已被占用。
        public static var errNamespaceReserved: InvalidParameter {
            InvalidParameter(.errNamespaceReserved)
        }

        /// 无效的参数，仓库已存在。
        public static var errRepoExist: InvalidParameter {
            InvalidParameter(.errRepoExist)
        }

        /// 参数过多。
        ///
        /// 减少传入的参数量
        public static var errTooLarge: InvalidParameter {
            InvalidParameter(.errTooLarge)
        }

        /// 触发器名称已存在。
        public static var errTriggerExist: InvalidParameter {
            InvalidParameter(.errTriggerExist)
        }

        /// 用户已经存在。
        public static var errUserExist: InvalidParameter {
            InvalidParameter(.errUserExist)
        }

        /// 实例名称已存在。
        public static var errorNameExists: InvalidParameter {
            InvalidParameter(.errorNameExists)
        }

        /// 实例名称非法。
        public static var errorNameIllegal: InvalidParameter {
            InvalidParameter(.errorNameIllegal)
        }

        /// 实例名称已保留。
        public static var errorNameReserved: InvalidParameter {
            InvalidParameter(.errorNameReserved)
        }

        /// 实例名称非法，格式不正确或者已保留。
        public static var errorRegistryName: InvalidParameter {
            InvalidParameter(.errorRegistryName)
        }

        /// 云标签超过10个上线。
        public static var errorTagOverLimit: InvalidParameter {
            InvalidParameter(.errorTagOverLimit)
        }

        /// 无效的TCR请求。
        public static var errorTcrInvalidParameter: InvalidParameter {
            InvalidParameter(.errorTcrInvalidParameter)
        }

        public static var replicationExists: InvalidParameter {
            InvalidParameter(.replicationExists)
        }

        /// 该地域不支持创建实例。
        public static var unsupportedRegion: InvalidParameter {
            InvalidParameter(.unsupportedRegion)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asTcrError() -> TCTcrError {
            let code: TCTcrError.Code
            switch self.error {
            case .errNSMisMatch:
                code = .invalidParameter_ErrNSMisMatch
            case .errNamespaceExist:
                code = .invalidParameter_ErrNamespaceExist
            case .errNamespaceReserved:
                code = .invalidParameter_ErrNamespaceReserved
            case .errRepoExist:
                code = .invalidParameter_ErrRepoExist
            case .errTooLarge:
                code = .invalidParameter_ErrTooLarge
            case .errTriggerExist:
                code = .invalidParameter_ErrTriggerExist
            case .errUserExist:
                code = .invalidParameter_ErrUserExist
            case .errorNameExists:
                code = .invalidParameter_ErrorNameExists
            case .errorNameIllegal:
                code = .invalidParameter_ErrorNameIllegal
            case .errorNameReserved:
                code = .invalidParameter_ErrorNameReserved
            case .errorRegistryName:
                code = .invalidParameter_ErrorRegistryName
            case .errorTagOverLimit:
                code = .invalidParameter_ErrorTagOverLimit
            case .errorTcrInvalidParameter:
                code = .invalidParameter_ErrorTcrInvalidParameter
            case .replicationExists:
                code = .invalidParameter_ReplicationExists
            case .unsupportedRegion:
                code = .invalidParameter_UnsupportedRegion
            case .other:
                code = .invalidParameter
            }
            return TCTcrError(code, context: self.context)
        }
    }
}
