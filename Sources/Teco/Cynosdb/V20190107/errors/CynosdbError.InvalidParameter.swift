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

extension TCCynosdbError {
    public struct InvalidParameter: TCCynosdbErrorType {
        enum Code: String {
            case controllerNotFoundError = "InvalidParameter.ControllerNotFoundError"
            case invalidParameterError = "InvalidParameter.InvalidParameterError"
            case isolateNotAllowed = "InvalidParameter.IsolateNotAllowed"
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
        
        /// 未找到该接口。
        ///
        /// 请确认业务是否提供该接口
        public static var controllerNotFoundError: InvalidParameter {
            InvalidParameter(.controllerNotFoundError)
        }
        
        /// 未知参数，请检查参数是否有效。
        public static var invalidParameterError: InvalidParameter {
            InvalidParameter(.invalidParameterError)
        }
        
        /// 当前实例不可隔离。
        public static var isolateNotAllowed: InvalidParameter {
            InvalidParameter(.isolateNotAllowed)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
        
        public func asCynosdbError() -> TCCynosdbError {
            let code: TCCynosdbError.Code
            switch self.error {
            case .controllerNotFoundError: 
                code = .invalidParameter_ControllerNotFoundError
            case .invalidParameterError: 
                code = .invalidParameter_InvalidParameterError
            case .isolateNotAllowed: 
                code = .invalidParameter_IsolateNotAllowed
            case .other: 
                code = .invalidParameter
            }
            return TCCynosdbError(code, context: self.context)
        }
    }
}
