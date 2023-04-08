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

extension TCMnaError {
    public struct InternalError: TCMnaErrorType {
        enum Code: String {
            case controlRequestError = "InternalError.ControlRequestError"
            case duplicateDataKey = "InternalError.DuplicateDataKey"
            case duplicateDeviceName = "InternalError.DuplicateDeviceName"
            case fileIOError = "InternalError.FileIOError"
            case monitorDataRequestError = "InternalError.MonitorDataRequestError"
            case networkInfoRequestError = "InternalError.NetworkInfoRequestError"
            case undefinedEncryptedKey = "InternalError.UndefinedEncryptedKey"
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

        /// 请求控制器发生错误。
        public static var controlRequestError: InternalError {
            InternalError(.controlRequestError)
        }

        /// 设备密钥已存在。
        public static var duplicateDataKey: InternalError {
            InternalError(.duplicateDataKey)
        }

        /// 设备名已存在。
        public static var duplicateDeviceName: InternalError {
            InternalError(.duplicateDeviceName)
        }

        /// 文件读写异常。
        public static var fileIOError: InternalError {
            InternalError(.fileIOError)
        }

        /// 监控数据请求错误。
        public static var monitorDataRequestError: InternalError {
            InternalError(.monitorDataRequestError)
        }

        /// 智研流量数据请求错误。
        public static var networkInfoRequestError: InternalError {
            InternalError(.networkInfoRequestError)
        }

        /// 预置密钥尚未创建。
        public static var undefinedEncryptedKey: InternalError {
            InternalError(.undefinedEncryptedKey)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asMnaError() -> TCMnaError {
            let code: TCMnaError.Code
            switch self.error {
            case .controlRequestError:
                code = .internalError_ControlRequestError
            case .duplicateDataKey:
                code = .internalError_DuplicateDataKey
            case .duplicateDeviceName:
                code = .internalError_DuplicateDeviceName
            case .fileIOError:
                code = .internalError_FileIOError
            case .monitorDataRequestError:
                code = .internalError_MonitorDataRequestError
            case .networkInfoRequestError:
                code = .internalError_NetworkInfoRequestError
            case .undefinedEncryptedKey:
                code = .internalError_UndefinedEncryptedKey
            case .other:
                code = .internalError
            }
            return TCMnaError(code, context: self.context)
        }
    }
}
