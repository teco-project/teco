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

extension TCOcrError {
    public struct ResourceNotFound: TCOcrErrorType {
        enum Code: String {
            case noAreaCode = "ResourceNotFound.NoAreaCode"
            case noInvoice = "ResourceNotFound.NoInvoice"
            case notSupportCurrentInvoiceQuery = "ResourceNotFound.NotSupportCurrentInvoiceQuery"
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
        
        /// 地区编码不存在。
        public static var noAreaCode: ResourceNotFound {
            ResourceNotFound(.noAreaCode)
        }
        
        /// 发票不存在。
        public static var noInvoice: ResourceNotFound {
            ResourceNotFound(.noInvoice)
        }
        
        /// 不支持当天发票查询。
        public static var notSupportCurrentInvoiceQuery: ResourceNotFound {
            ResourceNotFound(.notSupportCurrentInvoiceQuery)
        }
        
        public func asOcrError() -> TCOcrError {
            let code: TCOcrError.Code
            switch self.error {
            case .noAreaCode: 
                code = .resourceNotFound_NoAreaCode
            case .noInvoice: 
                code = .resourceNotFound_NoInvoice
            case .notSupportCurrentInvoiceQuery: 
                code = .resourceNotFound_NotSupportCurrentInvoiceQuery
            }
            return TCOcrError(code, context: self.context)
        }
    }
}
