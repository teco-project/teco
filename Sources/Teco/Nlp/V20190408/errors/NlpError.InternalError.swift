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

extension TCNlpError {
    public struct InternalError: TCNlpErrorType {
        enum Code: String {
            case resourceRequestError = "InternalError.ResourceRequestError"
            case serviceCallError = "InternalError.ServiceCallError"
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

        /// 资源请求错误
        public static var resourceRequestError: InternalError {
            InternalError(.resourceRequestError)
        }

        /// 服务调用错误
        public static var serviceCallError: InternalError {
            InternalError(.serviceCallError)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asNlpError() -> TCNlpError {
            let code: TCNlpError.Code
            switch self.error {
            case .resourceRequestError:
                code = .internalError_ResourceRequestError
            case .serviceCallError:
                code = .internalError_ServiceCallError
            case .other:
                code = .internalError
            }
            return TCNlpError(code, context: self.context)
        }
    }
}
