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

extension TCAdvisorError {
    public struct InternalError: TCAdvisorErrorType {
        enum Code: String {
            case dependsDb = "InternalError.DependsDb"
            case system = "InternalError.System"
            case other = "InternalError"
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
        
        /// 依赖的db出错。
        public static var dependsDb: InternalError {
            InternalError(.dependsDb)
        }
        
        /// 系统错误。
        public static var system: InternalError {
            InternalError(.system)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
        
        public func asAdvisorError() -> TCAdvisorError {
            let code: TCAdvisorError.Code
            switch self.error {
            case .dependsDb: 
                code = .internalError_DependsDb
            case .system: 
                code = .internalError_System
            case .other: 
                code = .internalError
            }
            return TCAdvisorError(code, context: self.context)
        }
    }
}
