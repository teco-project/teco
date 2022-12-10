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

extension TCEmrError {
    public struct ResourcesSoldOut: TCErrorType {
        enum Code: String {
            case cbsSoldOut = "ResourcesSoldOut.CbsSoldOut"
            case cvmSoldOut = "ResourcesSoldOut.CvmSoldOut"
            case other = "ResourcesSoldOut"
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
        
        /// CBS资源售罄。
        public static var cbsSoldOut: ResourcesSoldOut {
            ResourcesSoldOut(.cbsSoldOut)
        }
        
        /// 云服务器已售罄。
        public static var cvmSoldOut: ResourcesSoldOut {
            ResourcesSoldOut(.cvmSoldOut)
        }
        
        /// 资源售罄。
        public static var other: ResourcesSoldOut {
            ResourcesSoldOut(.other)
        }
    }
}

extension TCEmrError.ResourcesSoldOut: Equatable {
    public static func == (lhs: TCEmrError.ResourcesSoldOut, rhs: TCEmrError.ResourcesSoldOut) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEmrError.ResourcesSoldOut: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEmrError.ResourcesSoldOut {
    public func toEmrError() -> TCEmrError {
        guard let code = TCEmrError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCEmrError(code, context: self.context)
    }
}