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

extension TCDtsError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case controllerNotFoundError = "InvalidParameter.ControllerNotFoundError"
            case instanceNotFound = "InvalidParameter.InstanceNotFound"
            case invalidParameterError = "InvalidParameter.InvalidParameterError"
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
        
        /// 异常错误导致当前接口未注册。
        public static var controllerNotFoundError: InvalidParameter {
            InvalidParameter(.controllerNotFoundError)
        }
        
        /// 实例不存在。
        public static var instanceNotFound: InvalidParameter {
            InvalidParameter(.instanceNotFound)
        }
        
        public static var invalidParameterError: InvalidParameter {
            InvalidParameter(.invalidParameterError)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCDtsError.InvalidParameter: Equatable {
    public static func == (lhs: TCDtsError.InvalidParameter, rhs: TCDtsError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDtsError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCDtsError.InvalidParameter {
    public func toDtsError() -> TCDtsError {
        guard let code = TCDtsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCDtsError(code, context: self.context)
    }
}