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

extension TCIotError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case iotApplicationInvalidPassword = "InvalidParameter.IotApplicationInvalidPassword"
            case iotApplicationInvalidUserPassword = "InvalidParameter.IotApplicationInvalidUserPassword"
            case iotExpiredAccessToken = "InvalidParameter.IotExpiredAccessToken"
            case iotExpiredSignature = "InvalidParameter.IotExpiredSignature"
            case iotInvalidAccessToken = "InvalidParameter.IotInvalidAccessToken"
            case iotInvalidSignature = "InvalidParameter.IotInvalidSignature"
            case iotParamError = "InvalidParameter.IotParamError"
            case iotProductEmptyDataTemplate = "InvalidParameter.IotProductEmptyDataTemplate"
            case iotProductInvalidAuthType = "InvalidParameter.IotProductInvalidAuthType"
            case iotProductInvalidDataProtocol = "InvalidParameter.IotProductInvalidDataProtocol"
            case iotProductInvalidDataTemplate = "InvalidParameter.IotProductInvalidDataTemplate"
            case iotProductInvalidDataTemplateRange = "InvalidParameter.IotProductInvalidDataTemplateRange"
            case iotProductInvalidGatewayProductId = "InvalidParameter.IotProductInvalidGatewayProductId"
            case iotProductInvalidSubDeviceProductId = "InvalidParameter.IotProductInvalidSubDeviceProductId"
            case iotStatInvalidDate = "InvalidParameter.IotStatInvalidDate"
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
        
        /// 非法密码。
        public static var iotApplicationInvalidPassword: InvalidParameter {
            InvalidParameter(.iotApplicationInvalidPassword)
        }
        
        /// 用户名或密码错误。
        public static var iotApplicationInvalidUserPassword: InvalidParameter {
            InvalidParameter(.iotApplicationInvalidUserPassword)
        }
        
        /// 过期访问Token。
        public static var iotExpiredAccessToken: InvalidParameter {
            InvalidParameter(.iotExpiredAccessToken)
        }
        
        /// 过期签名。
        public static var iotExpiredSignature: InvalidParameter {
            InvalidParameter(.iotExpiredSignature)
        }
        
        /// 非法访问Token。
        public static var iotInvalidAccessToken: InvalidParameter {
            InvalidParameter(.iotInvalidAccessToken)
        }
        
        /// 非法签名。
        public static var iotInvalidSignature: InvalidParameter {
            InvalidParameter(.iotInvalidSignature)
        }
        
        /// 非法参数。
        public static var iotParamError: InvalidParameter {
            InvalidParameter(.iotParamError)
        }
        
        /// 空数据模版。
        public static var iotProductEmptyDataTemplate: InvalidParameter {
            InvalidParameter(.iotProductEmptyDataTemplate)
        }
        
        /// 非法产品鉴权类型。
        public static var iotProductInvalidAuthType: InvalidParameter {
            InvalidParameter(.iotProductInvalidAuthType)
        }
        
        /// 产品数据协议错误。
        public static var iotProductInvalidDataProtocol: InvalidParameter {
            InvalidParameter(.iotProductInvalidDataProtocol)
        }
        
        /// 非法数据模版。
        public static var iotProductInvalidDataTemplate: InvalidParameter {
            InvalidParameter(.iotProductInvalidDataTemplate)
        }
        
        /// 非法数据模版取值范围。
        public static var iotProductInvalidDataTemplateRange: InvalidParameter {
            InvalidParameter(.iotProductInvalidDataTemplateRange)
        }
        
        /// 网关设备产品Id错误。
        public static var iotProductInvalidGatewayProductId: InvalidParameter {
            InvalidParameter(.iotProductInvalidGatewayProductId)
        }
        
        /// 子设备产品Id错误。
        public static var iotProductInvalidSubDeviceProductId: InvalidParameter {
            InvalidParameter(.iotProductInvalidSubDeviceProductId)
        }
        
        /// 查询日期错误。
        public static var iotStatInvalidDate: InvalidParameter {
            InvalidParameter(.iotStatInvalidDate)
        }
    }
}

extension TCIotError.InvalidParameter: Equatable {
    public static func == (lhs: TCIotError.InvalidParameter, rhs: TCIotError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIotError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIotError.InvalidParameter {
    /// - Returns: ``TCIotError`` that holds the same error and context.
    public func toIotError() -> TCIotError {
        guard let code = TCIotError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCIotError(code, context: self.context)
    }
}

extension TCIotError.InvalidParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
