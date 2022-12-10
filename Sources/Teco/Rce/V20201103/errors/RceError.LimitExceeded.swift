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

extension TCRceError {
    public struct LimitExceeded: TCErrorType {
        enum Code: String {
            case freqCnt = "LimitExceeded.FreqCnt"
            case ipFreqCnt = "LimitExceeded.IpFreqCnt"
            case keyFreqCnt = "LimitExceeded.KeyFreqCnt"
            case replayAttack = "LimitExceeded.ReplayAttack"
            case other = "LimitExceeded"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
        
        /// 超过配额。
        public static var freqCnt: LimitExceeded {
            LimitExceeded(.freqCnt)
        }
        
        /// 超过配额（用户IP）。
        public static var ipFreqCnt: LimitExceeded {
            LimitExceeded(.ipFreqCnt)
        }
        
        /// 关键词频控限制。
        public static var keyFreqCnt: LimitExceeded {
            LimitExceeded(.keyFreqCnt)
        }
        
        /// 重放攻击。
        public static var replayAttack: LimitExceeded {
            LimitExceeded(.replayAttack)
        }
        
        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }
    }
}

extension TCRceError.LimitExceeded: Equatable {
    public static func == (lhs: TCRceError.LimitExceeded, rhs: TCRceError.LimitExceeded) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCRceError.LimitExceeded: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCRceError.LimitExceeded {
    /// - Returns: ``TCRceError`` that holds the same error and context.
    public func toRceError() -> TCRceError {
        guard let code = TCRceError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCRceError(code, context: self.context)
    }
}

extension TCRceError.LimitExceeded {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
