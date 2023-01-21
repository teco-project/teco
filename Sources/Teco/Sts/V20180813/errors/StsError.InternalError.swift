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

extension TCStsError {
    public struct InternalError: TCStsErrorType {
        enum Code: String {
            case dbError = "InternalError.DbError"
            case encryptError = "InternalError.EncryptError"
            case getAppIdError = "InternalError.GetAppIdError"
            case getRoleError = "InternalError.GetRoleError"
            case getSeedTokenError = "InternalError.GetSeedTokenError"
            case illegalRole = "InternalError.IllegalRole"
            case pbSerializeError = "InternalError.PbSerializeError"
            case systemError = "InternalError.SystemError"
            case unknownError = "InternalError.UnknownError"
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

        /// DB错误。
        public static var dbError: InternalError {
            InternalError(.dbError)
        }

        /// 加密失败。
        public static var encryptError: InternalError {
            InternalError(.encryptError)
        }

        /// 获取appid错误。
        public static var getAppIdError: InternalError {
            InternalError(.getAppIdError)
        }

        /// 获取角色失败。
        public static var getRoleError: InternalError {
            InternalError(.getRoleError)
        }

        /// 获取token失败。
        public static var getSeedTokenError: InternalError {
            InternalError(.getSeedTokenError)
        }

        /// 角色非法。
        public static var illegalRole: InternalError {
            InternalError(.illegalRole)
        }

        /// pb打包失败。
        public static var pbSerializeError: InternalError {
            InternalError(.pbSerializeError)
        }

        /// 系统内部错误，如网络错误。
        public static var systemError: InternalError {
            InternalError(.systemError)
        }

        /// 未知错误。
        public static var unknownError: InternalError {
            InternalError(.unknownError)
        }

        public func asStsError() -> TCStsError {
            let code: TCStsError.Code
            switch self.error {
            case .dbError:
                code = .internalError_DbError
            case .encryptError:
                code = .internalError_EncryptError
            case .getAppIdError:
                code = .internalError_GetAppIdError
            case .getRoleError:
                code = .internalError_GetRoleError
            case .getSeedTokenError:
                code = .internalError_GetSeedTokenError
            case .illegalRole:
                code = .internalError_IllegalRole
            case .pbSerializeError:
                code = .internalError_PbSerializeError
            case .systemError:
                code = .internalError_SystemError
            case .unknownError:
                code = .internalError_UnknownError
            }
            return TCStsError(code, context: self.context)
        }
    }
}
