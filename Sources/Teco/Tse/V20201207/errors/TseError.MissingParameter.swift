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

extension TCTseError {
    public struct MissingParameter: TCTseErrorType {
        enum Code: String {
            case createError = "MissingParameter.CreateError"
            case missParameter = "MissingParameter.MissParameter"
            case updateError = "MissingParameter.UpdateError"
            case other = "MissingParameter"
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

        /// 缺失参数导致创建失败。
        public static var createError: MissingParameter {
            MissingParameter(.createError)
        }

        /// 缺少参数。
        public static var missParameter: MissingParameter {
            MissingParameter(.missParameter)
        }

        /// 缺失参数导致更新失败。
        public static var updateError: MissingParameter {
            MissingParameter(.updateError)
        }

        /// 缺少参数错误。
        public static var other: MissingParameter {
            MissingParameter(.other)
        }

        public func asTseError() -> TCTseError {
            let code: TCTseError.Code
            switch self.error {
            case .createError:
                code = .missingParameter_CreateError
            case .missParameter:
                code = .missingParameter_MissParameter
            case .updateError:
                code = .missingParameter_UpdateError
            case .other:
                code = .missingParameter
            }
            return TCTseError(code, context: self.context)
        }
    }
}
