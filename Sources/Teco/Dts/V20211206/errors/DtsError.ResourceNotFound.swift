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

extension TCDtsError {
    public struct ResourceNotFound: TCDtsErrorType {
        enum Code: String {
            case bizResourceNotFoundError = "ResourceNotFound.BizResourceNotFoundError"
            case jobNotExist = "ResourceNotFound.JobNotExist"
            case resourceNotFound = "ResourceNotFound.ResourceNotFound"
            case resourceNotFoundError = "ResourceNotFound.ResourceNotFoundError"
            case other = "ResourceNotFound"
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
        
        /// 未找到资源。
        ///
        /// 未找到用户的资源。请确认账号与资源的关系是否正确。
        public static var bizResourceNotFoundError: ResourceNotFound {
            ResourceNotFound(.bizResourceNotFoundError)
        }
        
        /// 迁移任务不存在。
        public static var jobNotExist: ResourceNotFound {
            ResourceNotFound(.jobNotExist)
        }
        
        /// 实例未找到。
        public static var resourceNotFound: ResourceNotFound {
            ResourceNotFound(.resourceNotFound)
        }
        
        public static var resourceNotFoundError: ResourceNotFound {
            ResourceNotFound(.resourceNotFoundError)
        }
        
        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }
        
        public func asDtsError() -> TCDtsError {
            let code: TCDtsError.Code
            switch self.error {
            case .bizResourceNotFoundError: 
                code = .resourceNotFound_BizResourceNotFoundError
            case .jobNotExist: 
                code = .resourceNotFound_JobNotExist
            case .resourceNotFound: 
                code = .resourceNotFound_ResourceNotFound
            case .resourceNotFoundError: 
                code = .resourceNotFound_ResourceNotFoundError
            case .other: 
                code = .resourceNotFound
            }
            return TCDtsError(code, context: self.context)
        }
    }
}
