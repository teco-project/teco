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

extension TCAfcError {
    public struct InvalidParameter: TCAfcErrorType {
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
        
        /// Initializer used by ``TCClient`` to match an error of this type.
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
        
        public func asAfcError() -> TCAfcError {
            let code: TCAfcError.Code
            switch self.error {
            case .paramError: 
                code = .invalidParameter_ParamError
            case .urlError: 
                code = .invalidParameter_UrlError
            case .versionError: 
                code = .invalidParameter_VersionError
            case .other: 
                code = .invalidParameter
            }
            return TCAfcError(code, context: self.context)
        }
    }
}
