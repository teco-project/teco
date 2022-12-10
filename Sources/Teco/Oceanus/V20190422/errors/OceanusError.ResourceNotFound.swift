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

extension TCOceanusError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case clusterId = "ResourceNotFound.ClusterId"
            case cosBucket = "ResourceNotFound.COSBucket"
            case job = "ResourceNotFound.Job"
            case jobConfig = "ResourceNotFound.JobConfig"
            case jobId = "ResourceNotFound.JobId"
            case resource = "ResourceNotFound.Resource"
            case resourceConfig = "ResourceNotFound.ResourceConfig"
            case resourceNotExist = "ResourceNotFound.ResourceNotExist"
            case other = "ResourceNotFound"
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
        
        /// 集群不存在。
        public static var clusterId: ResourceNotFound {
            ResourceNotFound(.clusterId)
        }
        
        /// COS Bucket 未找到或无权限访问。
        public static var cosBucket: ResourceNotFound {
            ResourceNotFound(.cosBucket)
        }
        
        /// 作业不存在。
        public static var job: ResourceNotFound {
            ResourceNotFound(.job)
        }
        
        /// 作业配置版本不存在。
        public static var jobConfig: ResourceNotFound {
            ResourceNotFound(.jobConfig)
        }
        
        /// 找不到作业。
        public static var jobId: ResourceNotFound {
            ResourceNotFound(.jobId)
        }
        
        /// 程序包不存在。
        public static var resource: ResourceNotFound {
            ResourceNotFound(.resource)
        }
        
        /// 程序包版本不存在。
        public static var resourceConfig: ResourceNotFound {
            ResourceNotFound(.resourceConfig)
        }
        
        /// 资源不存在。
        public static var resourceNotExist: ResourceNotFound {
            ResourceNotFound(.resourceNotExist)
        }
        
        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }
    }
}

extension TCOceanusError.ResourceNotFound: Equatable {
    public static func == (lhs: TCOceanusError.ResourceNotFound, rhs: TCOceanusError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCOceanusError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCOceanusError.ResourceNotFound {
    /// - Returns: ``TCOceanusError`` that holds the same error and context.
    public func toOceanusError() -> TCOceanusError {
        guard let code = TCOceanusError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCOceanusError(code, context: self.context)
    }
}

extension TCOceanusError.ResourceNotFound {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
