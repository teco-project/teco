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

extension TCSmhError {
    public struct LimitExceeded: TCSmhErrorType {
        enum Code: String {
            case userLimit = "LimitExceeded.UserLimit"
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

        /// 已达到用户数量限制，请先升级产品规格。
        public static var userLimit: LimitExceeded {
            LimitExceeded(.userLimit)
        }

        public func asSmhError() -> TCSmhError {
            let code: TCSmhError.Code
            switch self.error {
            case .userLimit:
                code = .limitExceeded_UserLimit
            }
            return TCSmhError(code, context: self.context)
        }
    }
}
