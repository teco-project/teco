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

extension TCMonitorError {
    public struct InvalidParameter: TCMonitorErrorType {
        enum Code: String {
            case dupTask = "InvalidParameter.DupTask"
            case invalidParameter = "InvalidParameter.InvalidParameter"
            case invalidParameterParam = "InvalidParameter.InvalidParameterParam"
            case missAKSK = "InvalidParameter.MissAKSK"
            case paramError = "InvalidParameter.ParamError"
            case secretIdOrSecretKeyError = "InvalidParameter.SecretIdOrSecretKeyError"
            case unsupportedProduct = "InvalidParameter.UnsupportedProduct"
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
        
        /// 重复提交任务。
        public static var dupTask: InvalidParameter {
            InvalidParameter(.dupTask)
        }
        
        /// 参数错误。
        public static var invalidParameter: InvalidParameter {
            InvalidParameter(.invalidParameter)
        }
        
        /// 参数错误。
        public static var invalidParameterParam: InvalidParameter {
            InvalidParameter(.invalidParameterParam)
        }
        
        /// 缺少平台配置。
        public static var missAKSK: InvalidParameter {
            InvalidParameter(.missAKSK)
        }
        
        /// 参数错误。
        public static var paramError: InvalidParameter {
            InvalidParameter(.paramError)
        }
        
        /// 平台配置错误。
        public static var secretIdOrSecretKeyError: InvalidParameter {
            InvalidParameter(.secretIdOrSecretKeyError)
        }
        
        /// 这个产品还不支持扫描。
        public static var unsupportedProduct: InvalidParameter {
            InvalidParameter(.unsupportedProduct)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
        
        public func asMonitorError() -> TCMonitorError {
            let code: TCMonitorError.Code
            switch self.error {
            case .dupTask: 
                code = .invalidParameter_DupTask
            case .invalidParameter: 
                code = .invalidParameter_InvalidParameter
            case .invalidParameterParam: 
                code = .invalidParameter_InvalidParameterParam
            case .missAKSK: 
                code = .invalidParameter_MissAKSK
            case .paramError: 
                code = .invalidParameter_ParamError
            case .secretIdOrSecretKeyError: 
                code = .invalidParameter_SecretIdOrSecretKeyError
            case .unsupportedProduct: 
                code = .invalidParameter_UnsupportedProduct
            case .other: 
                code = .invalidParameter
            }
            return TCMonitorError(code, context: self.context)
        }
    }
}
