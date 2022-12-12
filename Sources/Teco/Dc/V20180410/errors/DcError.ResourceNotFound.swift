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

extension TCDcError {
    public struct ResourceNotFound: TCDcErrorType {
        enum Code: String {
            case directConnectTunnelIdIsNotExist = "ResourceNotFound.DirectConnectTunnelIdIsNotExist"
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
        
        /// 专用通道不存在。
        public static var directConnectTunnelIdIsNotExist: ResourceNotFound {
            ResourceNotFound(.directConnectTunnelIdIsNotExist)
        }
        
        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }
        
        public func asDcError() -> TCDcError {
            let code: TCDcError.Code
            switch self.error {
            case .directConnectTunnelIdIsNotExist: 
                code = .resourceNotFound_DirectConnectTunnelIdIsNotExist
            case .other: 
                code = .resourceNotFound
            }
            return TCDcError(code, context: self.context)
        }
    }
}
