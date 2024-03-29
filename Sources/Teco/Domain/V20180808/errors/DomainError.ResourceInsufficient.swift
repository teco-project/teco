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

extension TCDomainError {
    public struct ResourceInsufficient: TCDomainErrorType {
        enum Code: String {
            case overwork = "ResourceInsufficient.Overwork"
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

        /// 当前正在执行中的任务过多，请稍后再提交新的任务。
        public static var overwork: ResourceInsufficient {
            ResourceInsufficient(.overwork)
        }

        public func asDomainError() -> TCDomainError {
            let code: TCDomainError.Code
            switch self.error {
            case .overwork:
                code = .resourceInsufficient_Overwork
            }
            return TCDomainError(code, context: self.context)
        }
    }
}
