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

extension TCEssError {
    public struct InternalError: TCEssErrorType {
        enum Code: String {
            case cache = "InternalError.Cache"
            case db = "InternalError.Db"
            case dbConnection = "InternalError.DbConnection"
            case dbInsert = "InternalError.DbInsert"
            case dbRead = "InternalError.DbRead"
            case decryption = "InternalError.Decryption"
            case dependsApi = "InternalError.DependsApi"
            case dependsDb = "InternalError.DependsDb"
            case encryption = "InternalError.Encryption"
            case jsonMarshal = "InternalError.JsonMarshal"
            case pdf = "InternalError.Pdf"
            case serialize = "InternalError.Serialize"
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
        
        /// 缓存错误。
        public static var cache: InternalError {
            InternalError(.cache)
        }
        
        /// 数据库异常。
        public static var db: InternalError {
            InternalError(.db)
        }
        
        public static var dbConnection: InternalError {
            InternalError(.dbConnection)
        }
        
        /// 数据库新增记录出错。
        public static var dbInsert: InternalError {
            InternalError(.dbInsert)
        }
        
        /// 内部错误,数据库查询失败,请稍后重试。
        public static var dbRead: InternalError {
            InternalError(.dbRead)
        }
        
        /// 解密失败。
        public static var decryption: InternalError {
            InternalError(.decryption)
        }
        
        /// 依赖的第三方API返回错误。
        public static var dependsApi: InternalError {
            InternalError(.dependsApi)
        }
        
        /// 数据库执行错误。
        public static var dependsDb: InternalError {
            InternalError(.dependsDb)
        }
        
        /// 加密失败。
        public static var encryption: InternalError {
            InternalError(.encryption)
        }
        
        public static var jsonMarshal: InternalError {
            InternalError(.jsonMarshal)
        }
        
        /// Pdf错误。
        public static var pdf: InternalError {
            InternalError(.pdf)
        }
        
        public static var serialize: InternalError {
            InternalError(.serialize)
        }
        
        /// 系统错误。
        public static var system: InternalError {
            InternalError(.system)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
        
        public func asEssError() -> TCEssError {
            let code: TCEssError.Code
            switch self.error {
            case .cache: 
                code = .internalError_Cache
            case .db: 
                code = .internalError_Db
            case .dbConnection: 
                code = .internalError_DbConnection
            case .dbInsert: 
                code = .internalError_DbInsert
            case .dbRead: 
                code = .internalError_DbRead
            case .decryption: 
                code = .internalError_Decryption
            case .dependsApi: 
                code = .internalError_DependsApi
            case .dependsDb: 
                code = .internalError_DependsDb
            case .encryption: 
                code = .internalError_Encryption
            case .jsonMarshal: 
                code = .internalError_JsonMarshal
            case .pdf: 
                code = .internalError_Pdf
            case .serialize: 
                code = .internalError_Serialize
            case .system: 
                code = .internalError_System
            case .other: 
                code = .internalError
            }
            return TCEssError(code, context: self.context)
        }
    }
}
