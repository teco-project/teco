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

extension TCTrtcError {
    public struct InternalError: TCTrtcErrorType {
        enum Code: String {
            case crInternalError = "InternalError.CRInternalError"
            case dbError = "InternalError.DBError"
            case esQueryError = "InternalError.EsQueryError"
            case getRoomCacheIpError = "InternalError.GetRoomCacheIpError"
            case getRoomFromCacheError = "InternalError.GetRoomFromCacheError"
            case httpParaseFalied = "InternalError.HttpParaseFalied"
            case interfaceErr = "InternalError.InterfaceErr"
            case internalError = "InternalError.InternalError"
            case methodErr = "InternalError.MethodErr"
            case other = "InternalError"
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

        /// 云端录制内部服务错误。
        public static var crInternalError: InternalError {
            InternalError(.crInternalError)
        }

        /// 数据库查询异常。
        public static var dbError: InternalError {
            InternalError(.dbError)
        }

        /// ES查询异常。
        public static var esQueryError: InternalError {
            InternalError(.esQueryError)
        }

        /// 查询房间失败。
        public static var getRoomCacheIpError: InternalError {
            InternalError(.getRoomCacheIpError)
        }

        /// 获取房间信息失败。
        public static var getRoomFromCacheError: InternalError {
            InternalError(.getRoomFromCacheError)
        }

        /// http请求解析失败。
        public static var httpParaseFalied: InternalError {
            InternalError(.httpParaseFalied)
        }

        /// 接口错误。
        public static var interfaceErr: InternalError {
            InternalError(.interfaceErr)
        }

        /// 内部错误，请重试。
        public static var internalError: InternalError {
            InternalError(.internalError)
        }

        /// 不支持的方法。
        public static var methodErr: InternalError {
            InternalError(.methodErr)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asTrtcError() -> TCTrtcError {
            let code: TCTrtcError.Code
            switch self.error {
            case .crInternalError:
                code = .internalError_CRInternalError
            case .dbError:
                code = .internalError_DBError
            case .esQueryError:
                code = .internalError_EsQueryError
            case .getRoomCacheIpError:
                code = .internalError_GetRoomCacheIpError
            case .getRoomFromCacheError:
                code = .internalError_GetRoomFromCacheError
            case .httpParaseFalied:
                code = .internalError_HttpParaseFalied
            case .interfaceErr:
                code = .internalError_InterfaceErr
            case .internalError:
                code = .internalError_InternalError
            case .methodErr:
                code = .internalError_MethodErr
            case .other:
                code = .internalError
            }
            return TCTrtcError(code, context: self.context)
        }
    }
}
