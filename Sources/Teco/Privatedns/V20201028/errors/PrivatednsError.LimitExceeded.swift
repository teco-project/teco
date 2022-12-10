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

extension TCPrivatednsError {
    public struct LimitExceeded: TCErrorType {
        enum Code: String {
            case tldOutOfLimit = "LimitExceeded.TldOutOfLimit"
            case tldOutOfRange = "LimitExceeded.TldOutOfRange"
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
        
        /// 超过自定义TLD额度。
        ///
        /// 超过自定义TLD额度
        public static var tldOutOfLimit: LimitExceeded {
            LimitExceeded(.tldOutOfLimit)
        }
        
        /// 使用自定义TLD的私有域超过总额度。
        ///
        /// 删除不需要的使用了自定义TLD的私有域
        public static var tldOutOfRange: LimitExceeded {
            LimitExceeded(.tldOutOfRange)
        }
        
        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }
    }
}

extension TCPrivatednsError.LimitExceeded: Equatable {
    public static func == (lhs: TCPrivatednsError.LimitExceeded, rhs: TCPrivatednsError.LimitExceeded) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCPrivatednsError.LimitExceeded: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCPrivatednsError.LimitExceeded {
    /// - Returns: ``TCPrivatednsError`` that holds the same error and context.
    public func toPrivatednsError() -> TCPrivatednsError {
        guard let code = TCPrivatednsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCPrivatednsError(code, context: self.context)
    }
}

extension TCPrivatednsError.LimitExceeded {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
