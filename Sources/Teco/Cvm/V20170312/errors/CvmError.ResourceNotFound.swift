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

extension TCCvmError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case hpcCluster = "ResourceNotFound.HpcCluster"
            case invalidPlacementSet = "ResourceNotFound.InvalidPlacementSet"
            case invalidZoneInstanceType = "ResourceNotFound.InvalidZoneInstanceType"
            case noDefaultCbs = "ResourceNotFound.NoDefaultCbs"
            case noDefaultCbsWithReason = "ResourceNotFound.NoDefaultCbsWithReason"
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
        
        /// 高性能计算集群不存在。
        public static var hpcCluster: ResourceNotFound {
            ResourceNotFound(.hpcCluster)
        }
        
        /// 指定的置放群组不存在。
        public static var invalidPlacementSet: ResourceNotFound {
            ResourceNotFound(.invalidPlacementSet)
        }
        
        public static var invalidZoneInstanceType: ResourceNotFound {
            ResourceNotFound(.invalidZoneInstanceType)
        }
        
        /// 无可用的缺省类型的CBS资源。
        public static var noDefaultCbs: ResourceNotFound {
            ResourceNotFound(.noDefaultCbs)
        }
        
        /// 无可用的缺省类型的CBS资源。
        public static var noDefaultCbsWithReason: ResourceNotFound {
            ResourceNotFound(.noDefaultCbsWithReason)
        }
    }
}

extension TCCvmError.ResourceNotFound: Equatable {
    public static func == (lhs: TCCvmError.ResourceNotFound, rhs: TCCvmError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCvmError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCvmError.ResourceNotFound {
    public func toCvmError() -> TCCvmError {
        guard let code = TCCvmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCvmError(code, context: self.context)
    }
}