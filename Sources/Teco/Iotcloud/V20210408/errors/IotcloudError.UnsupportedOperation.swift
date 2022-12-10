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

extension TCIotcloudError {
    public struct UnsupportedOperation: TCErrorType {
        enum Code: String {
            case clientCertAlreadyGot = "UnsupportedOperation.ClientCertAlreadyGot"
            case deviceOtaTaskInProgress = "UnsupportedOperation.DeviceOtaTaskInProgress"
            case gatewayProductHasBindedProduct = "UnsupportedOperation.GatewayProductHasBindedProduct"
            case productHasBindGateway = "UnsupportedOperation.ProductHasBindGateway"
            case productHasBindedGatewayProduct = "UnsupportedOperation.ProductHasBindedGatewayProduct"
            case suiteTokenNoCreate = "UnsupportedOperation.SuiteTokenNoCreate"
            case wrongProductAuthType = "UnsupportedOperation.WrongProductAuthType"
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
        
        /// 设备私钥已被获取。
        public static var clientCertAlreadyGot: UnsupportedOperation {
            UnsupportedOperation(.clientCertAlreadyGot)
        }
        
        /// 设备ota升级中。
        public static var deviceOtaTaskInProgress: UnsupportedOperation {
            UnsupportedOperation(.deviceOtaTaskInProgress)
        }
        
        /// 网关产品下存在绑定的子产品，无法删除。
        public static var gatewayProductHasBindedProduct: UnsupportedOperation {
            UnsupportedOperation(.gatewayProductHasBindedProduct)
        }
        
        /// 存在网关设备绑定当前产品，无法删除。
        public static var productHasBindGateway: UnsupportedOperation {
            UnsupportedOperation(.productHasBindGateway)
        }
        
        /// 产品存在绑定的网关产品，无法删除。
        public static var productHasBindedGatewayProduct: UnsupportedOperation {
            UnsupportedOperation(.productHasBindedGatewayProduct)
        }
        
        /// 产品为Suite token类型，无法创建新设备。
        public static var suiteTokenNoCreate: UnsupportedOperation {
            UnsupportedOperation(.suiteTokenNoCreate)
        }
        
        /// 不支持的认证类型。
        public static var wrongProductAuthType: UnsupportedOperation {
            UnsupportedOperation(.wrongProductAuthType)
        }
    }
}

extension TCIotcloudError.UnsupportedOperation: Equatable {
    public static func == (lhs: TCIotcloudError.UnsupportedOperation, rhs: TCIotcloudError.UnsupportedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIotcloudError.UnsupportedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIotcloudError.UnsupportedOperation {
    /// - Returns: ``TCIotcloudError`` that holds the same error and context.
    public func toIotcloudError() -> TCIotcloudError {
        guard let code = TCIotcloudError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCIotcloudError(code, context: self.context)
    }
}

extension TCIotcloudError.UnsupportedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
