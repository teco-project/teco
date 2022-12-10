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

extension TCIotvideoindustryError {
    public struct ResourceUnavailable: TCErrorType {
        enum Code: String {
            case gbProtocolExecException = "ResourceUnavailable.GBProtocolExecException"
            case streamInfoException = "ResourceUnavailable.StreamInfoException"
            case other = "ResourceUnavailable"
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
        
        /// 国标信令异常。
        public static var gbProtocolExecException: ResourceUnavailable {
            ResourceUnavailable(.gbProtocolExecException)
        }
        
        /// 流信息异常。
        public static var streamInfoException: ResourceUnavailable {
            ResourceUnavailable(.streamInfoException)
        }
        
        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }
    }
}

extension TCIotvideoindustryError.ResourceUnavailable: Equatable {
    public static func == (lhs: TCIotvideoindustryError.ResourceUnavailable, rhs: TCIotvideoindustryError.ResourceUnavailable) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIotvideoindustryError.ResourceUnavailable: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIotvideoindustryError.ResourceUnavailable {
    /// - Returns: ``TCIotvideoindustryError`` that holds the same error and context.
    public func toIotvideoindustryError() -> TCIotvideoindustryError {
        guard let code = TCIotvideoindustryError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCIotvideoindustryError(code, context: self.context)
    }
}

extension TCIotvideoindustryError.ResourceUnavailable {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
