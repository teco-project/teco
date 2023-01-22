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

extension TCCvmError {
    public struct InvalidPublicKey: TCCvmErrorType {
        enum Code: String {
            case duplicate = "InvalidPublicKey.Duplicate"
            case malformed = "InvalidPublicKey.Malformed"
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

        /// 无效密钥公钥。指定公钥已经存在。
        public static var duplicate: InvalidPublicKey {
            InvalidPublicKey(.duplicate)
        }

        /// 无效密钥公钥。指定公钥格式错误，不符合`OpenSSH RSA`格式要求。
        public static var malformed: InvalidPublicKey {
            InvalidPublicKey(.malformed)
        }

        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .duplicate:
                code = .invalidPublicKey_Duplicate
            case .malformed:
                code = .invalidPublicKey_Malformed
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
