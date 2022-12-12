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

extension TCTcaplusdbError {
    public struct ResourceInsufficient: TCTcaplusdbErrorType {
        enum Code: String {
            case balanceError = "ResourceInsufficient.BalanceError"
            case noAvailableApp = "ResourceInsufficient.NoAvailableApp"
            case noAvailableCluster = "ResourceInsufficient.NoAvailableCluster"
            case noEnoughVipInVPC = "ResourceInsufficient.NoEnoughVipInVPC"
            case other = "ResourceInsufficient"
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
        
        /// 余额不足。
        public static var balanceError: ResourceInsufficient {
            ResourceInsufficient(.balanceError)
        }
        
        /// 没有可用的应用资源。
        public static var noAvailableApp: ResourceInsufficient {
            ResourceInsufficient(.noAvailableApp)
        }
        
        /// 没有可用的集群资源。
        public static var noAvailableCluster: ResourceInsufficient {
            ResourceInsufficient(.noAvailableCluster)
        }
        
        /// 私有网络中没有可用的vip资源。
        public static var noEnoughVipInVPC: ResourceInsufficient {
            ResourceInsufficient(.noEnoughVipInVPC)
        }
        
        /// 资源不足。
        public static var other: ResourceInsufficient {
            ResourceInsufficient(.other)
        }
        
        public func asTcaplusdbError() -> TCTcaplusdbError {
            let code: TCTcaplusdbError.Code
            switch self.error {
            case .balanceError: 
                code = .resourceInsufficient_BalanceError
            case .noAvailableApp: 
                code = .resourceInsufficient_NoAvailableApp
            case .noAvailableCluster: 
                code = .resourceInsufficient_NoAvailableCluster
            case .noEnoughVipInVPC: 
                code = .resourceInsufficient_NoEnoughVipInVPC
            case .other: 
                code = .resourceInsufficient
            }
            return TCTcaplusdbError(code, context: self.context)
        }
    }
}
