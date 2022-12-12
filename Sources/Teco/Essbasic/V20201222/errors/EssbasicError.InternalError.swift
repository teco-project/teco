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

extension TCEssbasicError {
    public struct InternalError: TCEssbasicErrorType {
        enum Code: String {
            case api = "InternalError.Api"
            case cache = "InternalError.Cache"
            case callback = "InternalError.Callback"
            case db = "InternalError.Db"
            case decryption = "InternalError.Decryption"
            case encryption = "InternalError.Encryption"
            case generateId = "InternalError.GenerateId"
            case mq = "InternalError.Mq"
            case pdf = "InternalError.Pdf"
            case serialize = "InternalError.Serialize"
            case storage = "InternalError.Storage"
            case thirdParty = "InternalError.ThirdParty"
            case unSerialize = "InternalError.UnSerialize"
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
        
        /// 其他API错误。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var api: InternalError {
            InternalError(.api)
        }
        
        /// 缓存错误。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var cache: InternalError {
            InternalError(.cache)
        }
        
        /// 回调错误。
        ///
        /// 优先检查参数、回调地址的正确性。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var callback: InternalError {
            InternalError(.callback)
        }
        
        /// 数据库错误。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var db: InternalError {
            InternalError(.db)
        }
        
        /// 解密错误。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var decryption: InternalError {
            InternalError(.decryption)
        }
        
        /// 加密错误。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var encryption: InternalError {
            InternalError(.encryption)
        }
        
        /// 生成唯一ID错误。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var generateId: InternalError {
            InternalError(.generateId)
        }
        
        /// MQ错误。
        ///
        /// 请参考实际的错误描述进行处理，请仔细阅读API文档，优先检查参数及重试，如重试多次仍未解决，请联系开发人员。
        public static var mq: InternalError {
            InternalError(.mq)
        }
        
        /// Pdf错误。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var pdf: InternalError {
            InternalError(.pdf)
        }
        
        /// 序列化错误。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var serialize: InternalError {
            InternalError(.serialize)
        }
        
        /// 存储错误。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var storage: InternalError {
            InternalError(.storage)
        }
        
        /// 第三方错误。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var thirdParty: InternalError {
            InternalError(.thirdParty)
        }
        
        /// 反序列化错误。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var unSerialize: InternalError {
            InternalError(.unSerialize)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
        
        public func asEssbasicError() -> TCEssbasicError {
            let code: TCEssbasicError.Code
            switch self.error {
            case .api: 
                code = .internalError_Api
            case .cache: 
                code = .internalError_Cache
            case .callback: 
                code = .internalError_Callback
            case .db: 
                code = .internalError_Db
            case .decryption: 
                code = .internalError_Decryption
            case .encryption: 
                code = .internalError_Encryption
            case .generateId: 
                code = .internalError_GenerateId
            case .mq: 
                code = .internalError_Mq
            case .pdf: 
                code = .internalError_Pdf
            case .serialize: 
                code = .internalError_Serialize
            case .storage: 
                code = .internalError_Storage
            case .thirdParty: 
                code = .internalError_ThirdParty
            case .unSerialize: 
                code = .internalError_UnSerialize
            case .other: 
                code = .internalError
            }
            return TCEssbasicError(code, context: self.context)
        }
    }
}
