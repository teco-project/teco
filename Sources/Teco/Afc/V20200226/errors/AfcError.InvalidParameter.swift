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

extension TCAfcError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case paramError = "InvalidParameter.ParamError"
            case urlError = "InvalidParameter.UrlError"
            case versionError = "InvalidParameter.VersionError"
            case other = "InvalidParameter"
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
        
        /// 参数错误。
        public static var paramError: InvalidParameter {
            InvalidParameter(.paramError)
        }
        
        /// URL错误。
        public static var urlError: InvalidParameter {
            InvalidParameter(.urlError)
        }
        
        /// 版本错误。
        public static var versionError: InvalidParameter {
            InvalidParameter(.versionError)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCAfcError.InvalidParameter: Equatable {
    public static func == (lhs: TCAfcError.InvalidParameter, rhs: TCAfcError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAfcError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAfcError.InvalidParameter {
    public func toAfcError() -> TCAfcError {
        guard let code = TCAfcError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCAfcError(code, context: self.context)
    }
}