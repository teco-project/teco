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

extension TCEccError {
    public struct InvalidParameter: TCEccErrorType {
        enum Code: String {
            case emptyParameterError = "InvalidParameter.EmptyParameterError"
            case inputError = "InvalidParameter.InputError"
            case taskNotFound = "InvalidParameter.TaskNotFound"
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

        /// 参数为空。
        public static var emptyParameterError: InvalidParameter {
            InvalidParameter(.emptyParameterError)
        }

        /// 传入的参数有误。
        public static var inputError: InvalidParameter {
            InvalidParameter(.inputError)
        }

        /// 任务不存在。
        public static var taskNotFound: InvalidParameter {
            InvalidParameter(.taskNotFound)
        }

        public func asEccError() -> TCEccError {
            let code: TCEccError.Code
            switch self.error {
            case .emptyParameterError:
                code = .invalidParameter_EmptyParameterError
            case .inputError:
                code = .invalidParameter_InputError
            case .taskNotFound:
                code = .invalidParameter_TaskNotFound
            }
            return TCEccError(code, context: self.context)
        }
    }
}
