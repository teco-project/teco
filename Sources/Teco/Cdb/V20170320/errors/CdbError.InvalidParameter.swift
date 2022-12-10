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

extension TCCdbError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case controllerNotFoundError = "InvalidParameter.ControllerNotFoundError"
            case deployGroupNotEmpty = "InvalidParameter.DeployGroupNotEmpty"
            case exceptionParam = "InvalidParameter.ExceptionParam"
            case instanceNameNotFound = "InvalidParameter.InstanceNameNotFound"
            case instanceNotFound = "InvalidParameter.InstanceNotFound"
            case invalidAsyncRequestId = "InvalidParameter.InvalidAsyncRequestId"
            case invalidName = "InvalidParameter.InvalidName"
            case invalidParameterError = "InvalidParameter.InvalidParameterError"
            case jsonUnmarshalError = "InvalidParameter.JsonUnmarshalError"
            case overDeployGroupQuota = "InvalidParameter.OverDeployGroupQuota"
            case resourceExists = "InvalidParameter.ResourceExists"
            case resourceNotExists = "InvalidParameter.ResourceNotExists"
            case resourceNotFound = "InvalidParameter.ResourceNotFound"
            case other = "InvalidParameter"
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
        
        /// 未找到该接口。
        public static var controllerNotFoundError: InvalidParameter {
            InvalidParameter(.controllerNotFoundError)
        }
        
        /// 置放群组下存在资源。
        ///
        /// 请从置放群组里移除资源。
        public static var deployGroupNotEmpty: InvalidParameter {
            InvalidParameter(.deployGroupNotEmpty)
        }
        
        /// 异常参数。
        public static var exceptionParam: InvalidParameter {
            InvalidParameter(.exceptionParam)
        }
        
        /// 未找到该实例。
        public static var instanceNameNotFound: InvalidParameter {
            InvalidParameter(.instanceNameNotFound)
        }
        
        /// 实例不存在。
        public static var instanceNotFound: InvalidParameter {
            InvalidParameter(.instanceNotFound)
        }
        
        /// 异步任务不存在。
        public static var invalidAsyncRequestId: InvalidParameter {
            InvalidParameter(.invalidAsyncRequestId)
        }
        
        /// 非法的名称。
        public static var invalidName: InvalidParameter {
            InvalidParameter(.invalidName)
        }
        
        /// 无效的参数值。
        public static var invalidParameterError: InvalidParameter {
            InvalidParameter(.invalidParameterError)
        }
        
        /// Json反序列化错误。
        public static var jsonUnmarshalError: InvalidParameter {
            InvalidParameter(.jsonUnmarshalError)
        }
        
        /// 超出置放群组资源数量配额。
        public static var overDeployGroupQuota: InvalidParameter {
            InvalidParameter(.overDeployGroupQuota)
        }
        
        /// 资源已存在。
        public static var resourceExists: InvalidParameter {
            InvalidParameter(.resourceExists)
        }
        
        /// 资源不存在。
        public static var resourceNotExists: InvalidParameter {
            InvalidParameter(.resourceNotExists)
        }
        
        /// 未找到相关资源。
        public static var resourceNotFound: InvalidParameter {
            InvalidParameter(.resourceNotFound)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCCdbError.InvalidParameter: Equatable {
    public static func == (lhs: TCCdbError.InvalidParameter, rhs: TCCdbError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCdbError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCdbError.InvalidParameter {
    /// - Returns: ``TCCdbError`` that holds the same error and context.
    public func toCdbError() -> TCCdbError {
        guard let code = TCCdbError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCdbError(code, context: self.context)
    }
}

extension TCCdbError.InvalidParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
