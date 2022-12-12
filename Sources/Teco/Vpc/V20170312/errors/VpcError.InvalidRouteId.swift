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

extension TCVpcError {
    public struct InvalidRouteId: TCVpcErrorType {
        enum Code: String {
            case notFound = "InvalidRouteId.NotFound"
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
        
        /// 无效的路由策略ID（RouteId）。
        public static var notFound: InvalidRouteId {
            InvalidRouteId(.notFound)
        }
        
        public func asVpcError() -> TCVpcError {
            let code: TCVpcError.Code
            switch self.error {
            case .notFound: 
                code = .invalidRouteId_NotFound
            }
            return TCVpcError(code, context: self.context)
        }
    }
}
