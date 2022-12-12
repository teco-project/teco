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

extension TCBmvpcError {
    public struct ResourceNotFound: TCBmvpcErrorType {
        enum Code: String {
            case customerGatewayNotExist = "ResourceNotFound.CustomerGatewayNotExist"
            case notAvaible = "ResourceNotFound.NotAvaible"
            case vpcNotExist = "ResourceNotFound.VpcNotExist"
            case vpcPeerNotExist = "ResourceNotFound.VpcPeerNotExist"
            case vpnConnNotExist = "ResourceNotFound.VpnConnNotExist"
            case vpnGwNotExist = "ResourceNotFound.VpnGwNotExist"
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
        
        /// 对端网关不存在。
        public static var customerGatewayNotExist: ResourceNotFound {
            ResourceNotFound(.customerGatewayNotExist)
        }
        
        /// 联通状态的通道才可以重置。
        public static var notAvaible: ResourceNotFound {
            ResourceNotFound(.notAvaible)
        }
        
        /// VPC不存在。
        public static var vpcNotExist: ResourceNotFound {
            ResourceNotFound(.vpcNotExist)
        }
        
        /// 对等连接不存在。
        public static var vpcPeerNotExist: ResourceNotFound {
            ResourceNotFound(.vpcPeerNotExist)
        }
        
        /// VPN通道不存在。
        public static var vpnConnNotExist: ResourceNotFound {
            ResourceNotFound(.vpnConnNotExist)
        }
        
        /// VPN网关不存在。
        public static var vpnGwNotExist: ResourceNotFound {
            ResourceNotFound(.vpnGwNotExist)
        }
        
        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }
        
        public func asBmvpcError() -> TCBmvpcError {
            let code: TCBmvpcError.Code
            switch self.error {
            case .customerGatewayNotExist: 
                code = .resourceNotFound_CustomerGatewayNotExist
            case .notAvaible: 
                code = .resourceNotFound_NotAvaible
            case .vpcNotExist: 
                code = .resourceNotFound_VpcNotExist
            case .vpcPeerNotExist: 
                code = .resourceNotFound_VpcPeerNotExist
            case .vpnConnNotExist: 
                code = .resourceNotFound_VpnConnNotExist
            case .vpnGwNotExist: 
                code = .resourceNotFound_VpnGwNotExist
            case .other: 
                code = .resourceNotFound
            }
            return TCBmvpcError(code, context: self.context)
        }
    }
}
