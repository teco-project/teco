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

extension TCEbError {
    public struct InvalidParameter: TCEbErrorType {
        enum Code: String {
            case enableAPIGateway = "InvalidParameter.EnableAPIGateway"
            case payload = "InvalidParameter.Payload"
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
        
        public static var enableAPIGateway: InvalidParameter {
            InvalidParameter(.enableAPIGateway)
        }
        
        /// Payload与规范不符，请修正后再试。
        public static var payload: InvalidParameter {
            InvalidParameter(.payload)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
        
        public func asEbError() -> TCEbError {
            let code: TCEbError.Code
            switch self.error {
            case .enableAPIGateway: 
                code = .invalidParameter_EnableAPIGateway
            case .payload: 
                code = .invalidParameter_Payload
            case .other: 
                code = .invalidParameter
            }
            return TCEbError(code, context: self.context)
        }
    }
}
