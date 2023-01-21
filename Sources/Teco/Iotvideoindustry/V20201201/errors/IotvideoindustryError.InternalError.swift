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

extension TCIotvideoindustryError {
    public struct InternalError: TCIotvideoindustryErrorType {
        enum Code: String {
            case dbOperationError = "InternalError.DBOperationError"
            case internalServerException = "InternalError.InternalServerException"
            case internalServerExceptionDB = "InternalError.InternalServerExceptionDB"
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

        /// DB操作错误。
        public static var dbOperationError: InternalError {
            InternalError(.dbOperationError)
        }

        /// 内部错误。
        public static var internalServerException: InternalError {
            InternalError(.internalServerException)
        }

        /// DB操作错误。
        public static var internalServerExceptionDB: InternalError {
            InternalError(.internalServerExceptionDB)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asIotvideoindustryError() -> TCIotvideoindustryError {
            let code: TCIotvideoindustryError.Code
            switch self.error {
            case .dbOperationError:
                code = .internalError_DBOperationError
            case .internalServerException:
                code = .internalError_InternalServerException
            case .internalServerExceptionDB:
                code = .internalError_InternalServerExceptionDB
            case .other:
                code = .internalError
            }
            return TCIotvideoindustryError(code, context: self.context)
        }
    }
}
