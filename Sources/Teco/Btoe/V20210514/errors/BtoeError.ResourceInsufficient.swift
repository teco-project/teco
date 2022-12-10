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

extension TCBtoeError {
    public struct ResourceInsufficient: TCErrorType {
        enum Code: String {
            case lowBalance = "ResourceInsufficient.LowBalance"
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
        
        /// 余额不足。
        public static var lowBalance: ResourceInsufficient {
            ResourceInsufficient(.lowBalance)
        }
    }
}

extension TCBtoeError.ResourceInsufficient: Equatable {
    public static func == (lhs: TCBtoeError.ResourceInsufficient, rhs: TCBtoeError.ResourceInsufficient) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBtoeError.ResourceInsufficient: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCBtoeError.ResourceInsufficient {
    /// - Returns: ``TCBtoeError`` that holds the same error and context.
    public func toBtoeError() -> TCBtoeError {
        guard let code = TCBtoeError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCBtoeError(code, context: self.context)
    }
}

extension TCBtoeError.ResourceInsufficient {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
