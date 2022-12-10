//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCTeoError {
    public struct LimitExceeded: TCErrorType {
        enum Code: String {
            case batchQuota = "LimitExceeded.BatchQuota"
            case dailyQuota = "LimitExceeded.DailyQuota"
            case other = "LimitExceeded"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 本次提交的资源数超过上限。
        public static var batchQuota: LimitExceeded {
            LimitExceeded(.batchQuota)
        }
        
        /// 当天提交的资源数超过上限。
        public static var dailyQuota: LimitExceeded {
            LimitExceeded(.dailyQuota)
        }
        
        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }
    }
}

extension TCTeoError.LimitExceeded: Equatable {
    public static func == (lhs: TCTeoError.LimitExceeded, rhs: TCTeoError.LimitExceeded) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTeoError.LimitExceeded: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTeoError.LimitExceeded {
    public func toTeoError() -> TCTeoError {
        guard let code = TCTeoError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTeoError(code, context: self.context)
    }
}