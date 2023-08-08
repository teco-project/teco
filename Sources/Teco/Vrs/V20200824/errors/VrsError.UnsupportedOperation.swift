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

extension TCVrsError {
    public struct UnsupportedOperation: TCVrsErrorType {
        enum Code: String {
            case vrsQuotaExhausted = "UnsupportedOperation.VRSQuotaExhausted"
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

        /// 无声音复刻任务配额
        public static var vrsQuotaExhausted: UnsupportedOperation {
            UnsupportedOperation(.vrsQuotaExhausted)
        }

        public func asVrsError() -> TCVrsError {
            let code: TCVrsError.Code
            switch self.error {
            case .vrsQuotaExhausted:
                code = .unsupportedOperation_VRSQuotaExhausted
            }
            return TCVrsError(code, context: self.context)
        }
    }
}