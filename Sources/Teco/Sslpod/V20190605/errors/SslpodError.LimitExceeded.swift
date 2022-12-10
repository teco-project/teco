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

extension TCSslpodError {
    public struct LimitExceeded: TCErrorType {
        enum Code: String {
            case addExceeded = "LimitExceeded.AddExceeded"
            case monitorExceeded = "LimitExceeded.MonitorExceeded"
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
        
        /// 套餐管理额度已满。
        public static var addExceeded: LimitExceeded {
            LimitExceeded(.addExceeded)
        }
        
        /// 套餐监控额度已满。
        public static var monitorExceeded: LimitExceeded {
            LimitExceeded(.monitorExceeded)
        }
    }
}

extension TCSslpodError.LimitExceeded: Equatable {
    public static func == (lhs: TCSslpodError.LimitExceeded, rhs: TCSslpodError.LimitExceeded) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSslpodError.LimitExceeded: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSslpodError.LimitExceeded {
    /// - Returns: ``TCSslpodError`` that holds the same error and context.
    public func toSslpodError() -> TCSslpodError {
        guard let code = TCSslpodError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCSslpodError(code, context: self.context)
    }
}

extension TCSslpodError.LimitExceeded {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
