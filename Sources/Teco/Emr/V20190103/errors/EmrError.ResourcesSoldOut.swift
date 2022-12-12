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

extension TCEmrError {
    public struct ResourcesSoldOut: TCEmrErrorType {
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
        
        /// CBS资源售罄。
        ///
        /// 占位符
        public static var cbsSoldOut: ResourcesSoldOut {
            ResourcesSoldOut(.cbsSoldOut)
        }
        
        /// 云服务器已售罄。
        ///
        /// 占位符
        public static var cvmSoldOut: ResourcesSoldOut {
            ResourcesSoldOut(.cvmSoldOut)
        }
        
        /// 资源售罄。
        public static var other: ResourcesSoldOut {
            ResourcesSoldOut(.other)
        }
        
        public func asEmrError() -> TCEmrError {
            let code: TCEmrError.Code
            switch self.error {
            case .cbsSoldOut: 
                code = .resourcesSoldOut_CbsSoldOut
            case .cvmSoldOut: 
                code = .resourcesSoldOut_CvmSoldOut
            case .other: 
                code = .resourcesSoldOut
            }
            return TCEmrError(code, context: self.context)
        }
    }
}
