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

extension TCTcrError {
    public struct LimitExceeded: TCTcrErrorType {
        enum Code: String {
            case errNamespaceMaxLimit = "LimitExceeded.ErrNamespaceMaxLimit"
            case errRepoMaxLimit = "LimitExceeded.ErrRepoMaxLimit"
            case errTriggerMaxLimit = "LimitExceeded.ErrTriggerMaxLimit"
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

        /// 用户命名空间达到配额。
        public static var errNamespaceMaxLimit: LimitExceeded {
            LimitExceeded(.errNamespaceMaxLimit)
        }

        /// 用户仓库已经达到最大配额。
        public static var errRepoMaxLimit: LimitExceeded {
            LimitExceeded(.errRepoMaxLimit)
        }

        /// 触发器达到配额。
        public static var errTriggerMaxLimit: LimitExceeded {
            LimitExceeded(.errTriggerMaxLimit)
        }

        public func asTcrError() -> TCTcrError {
            let code: TCTcrError.Code
            switch self.error {
            case .errNamespaceMaxLimit:
                code = .limitExceeded_ErrNamespaceMaxLimit
            case .errRepoMaxLimit:
                code = .limitExceeded_ErrRepoMaxLimit
            case .errTriggerMaxLimit:
                code = .limitExceeded_ErrTriggerMaxLimit
            }
            return TCTcrError(code, context: self.context)
        }
    }
}
