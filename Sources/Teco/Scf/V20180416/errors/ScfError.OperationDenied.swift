//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCScfError {
    public struct OperationDenied: TCScfErrorType {
        enum Code: String {
            case accountIsolate = "OperationDenied.AccountIsolate"
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

        /// 查询账号是否因欠费或其他原因被隔离。
        public static var accountIsolate: OperationDenied {
            OperationDenied(.accountIsolate)
        }

        public func asScfError() -> TCScfError {
            let code: TCScfError.Code
            switch self.error {
            case .accountIsolate: 
                code = .operationDenied_AccountIsolate
            }
            return TCScfError(code, context: self.context)
        }
    }
}
