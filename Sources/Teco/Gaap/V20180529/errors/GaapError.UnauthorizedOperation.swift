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

extension TCGaapError {
    public struct UnauthorizedOperation: TCErrorType {
        enum Code: String {
            case crossBorderInIsolating = "UnauthorizedOperation.CrossBorderInIsolating"
            case other = "UnauthorizedOperation"
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
        
        /// 跨境通道的联通带宽处于隔离中。
        public static var crossBorderInIsolating: UnauthorizedOperation {
            UnauthorizedOperation(.crossBorderInIsolating)
        }
        
        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }
    }
}

extension TCGaapError.UnauthorizedOperation: Equatable {
    public static func == (lhs: TCGaapError.UnauthorizedOperation, rhs: TCGaapError.UnauthorizedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCGaapError.UnauthorizedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCGaapError.UnauthorizedOperation {
    /// - Returns: ``TCGaapError`` that holds the same error and context.
    public func toGaapError() -> TCGaapError {
        guard let code = TCGaapError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCGaapError(code, context: self.context)
    }
}

extension TCGaapError.UnauthorizedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
