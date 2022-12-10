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

extension TCLighthouseError {
    public struct ResourcesSoldOut: TCErrorType {
        enum Code: String {
            case purchaseSourceHasNoBundleConfigs = "ResourcesSoldOut.PurchaseSourceHasNoBundleConfigs"
            case zonesHasNoBundleConfigs = "ResourcesSoldOut.ZonesHasNoBundleConfigs"
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
        
        /// 套餐无可用配置。
        public static var purchaseSourceHasNoBundleConfigs: ResourcesSoldOut {
            ResourcesSoldOut(.purchaseSourceHasNoBundleConfigs)
        }
        
        /// 套餐无可用配置。
        public static var zonesHasNoBundleConfigs: ResourcesSoldOut {
            ResourcesSoldOut(.zonesHasNoBundleConfigs)
        }
    }
}

extension TCLighthouseError.ResourcesSoldOut: Equatable {
    public static func == (lhs: TCLighthouseError.ResourcesSoldOut, rhs: TCLighthouseError.ResourcesSoldOut) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCLighthouseError.ResourcesSoldOut: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCLighthouseError.ResourcesSoldOut {
    public func toLighthouseError() -> TCLighthouseError {
        guard let code = TCLighthouseError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCLighthouseError(code, context: self.context)
    }
}