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

extension TCCpdpError {
    public struct ResourceInUse: TCErrorType {
        enum Code: String {
            case midas = "ResourceInUse.Midas"
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
        
        /// 聚鑫流程进行中，不能重入。
        public static var midas: ResourceInUse {
            ResourceInUse(.midas)
        }
    }
}

extension TCCpdpError.ResourceInUse: Equatable {
    public static func == (lhs: TCCpdpError.ResourceInUse, rhs: TCCpdpError.ResourceInUse) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCpdpError.ResourceInUse: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCpdpError.ResourceInUse {
    public func toCpdpError() -> TCCpdpError {
        guard let code = TCCpdpError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCpdpError(code, context: self.context)
    }
}