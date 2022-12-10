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

extension TCTtsError {
    public struct InternalError: TCErrorType {
        enum Code: String {
            case errorGetRoute = "InternalError.ErrorGetRoute"
            case exceedMaxLimit = "InternalError.ExceedMaxLimit"
            case failAccessDatabase = "InternalError.FailAccessDatabase"
            case failAccessRedis = "InternalError.FailAccessRedis"
            case internalError = "InternalError.InternalError"
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
        
        /// 路由错误。
        public static var errorGetRoute: InternalError {
            InternalError(.errorGetRoute)
        }
        
        /// 负载限流。
        public static var exceedMaxLimit: InternalError {
            InternalError(.exceedMaxLimit)
        }
        
        /// 数据库存取失败。
        public static var failAccessDatabase: InternalError {
            InternalError(.failAccessDatabase)
        }
        
        /// Redis存储失败。
        public static var failAccessRedis: InternalError {
            InternalError(.failAccessRedis)
        }
        
        /// 内部错误。
        public static var internalError: InternalError {
            InternalError(.internalError)
        }
    }
}

extension TCTtsError.InternalError: Equatable {
    public static func == (lhs: TCTtsError.InternalError, rhs: TCTtsError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTtsError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTtsError.InternalError {
    public func toTtsError() -> TCTtsError {
        guard let code = TCTtsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTtsError(code, context: self.context)
    }
}