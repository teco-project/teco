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

extension TCTiiaError {
    public struct LimitExceeded: TCTiiaErrorType {
        enum Code: String {
            case tooLargeFileError = "LimitExceeded.TooLargeFileError"
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

        /// 文件太大。
        public static var tooLargeFileError: LimitExceeded {
            LimitExceeded(.tooLargeFileError)
        }

        public func asTiiaError() -> TCTiiaError {
            let code: TCTiiaError.Code
            switch self.error {
            case .tooLargeFileError:
                code = .limitExceeded_TooLargeFileError
            }
            return TCTiiaError(code, context: self.context)
        }
    }
}
