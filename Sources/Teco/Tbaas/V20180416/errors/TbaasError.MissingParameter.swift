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

extension TCTbaasError {
    public struct MissingParameter: TCErrorType {
        enum Code: String {
            case emptyParam = "MissingParameter.EmptyParam"
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
        
        /// Bcos缺少参数。
        public static var emptyParam: MissingParameter {
            MissingParameter(.emptyParam)
        }
    }
}

extension TCTbaasError.MissingParameter: Equatable {
    public static func == (lhs: TCTbaasError.MissingParameter, rhs: TCTbaasError.MissingParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTbaasError.MissingParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTbaasError.MissingParameter {
    /// - Returns: ``TCTbaasError`` that holds the same error and context.
    public func toTbaasError() -> TCTbaasError {
        guard let code = TCTbaasError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTbaasError(code, context: self.context)
    }
}

extension TCTbaasError.MissingParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
