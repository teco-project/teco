//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCHcmError {
    public struct InternalError: TCHcmErrorType {
        enum Code: String {
            case engineRequestFailed = "InternalError.EngineRequestFailed"
            case engineResultError = "InternalError.EngineResultError"
            case initialParameterError = "InternalError.InitialParameterError"
            case serverInternalError = "InternalError.ServerInternalError"
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

        /// 引擎请求失败。
        ///
        /// 请检查图片是否正确后重试请求。
        public static var engineRequestFailed: InternalError {
            InternalError(.engineRequestFailed)
        }

        /// 引擎识别失败。
        ///
        /// 请检查图片是否正确后重试请求。
        public static var engineResultError: InternalError {
            InternalError(.engineResultError)
        }

        /// 初始化参数错误。
        public static var initialParameterError: InternalError {
            InternalError(.initialParameterError)
        }

        /// 服务器内部错误。
        public static var serverInternalError: InternalError {
            InternalError(.serverInternalError)
        }

        public func asHcmError() -> TCHcmError {
            let code: TCHcmError.Code
            switch self.error {
            case .engineRequestFailed:
                code = .internalError_EngineRequestFailed
            case .engineResultError:
                code = .internalError_EngineResultError
            case .initialParameterError:
                code = .internalError_InitialParameterError
            case .serverInternalError:
                code = .internalError_ServerInternalError
            }
            return TCHcmError(code, context: self.context)
        }
    }
}
