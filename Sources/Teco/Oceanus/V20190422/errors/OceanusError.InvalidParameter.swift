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

extension TCOceanusError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case appIdResourceNotMatch = "InvalidParameter.AppIdResourceNotMatch"
            case illegalMaxParallelism = "InvalidParameter.IllegalMaxParallelism"
            case invalidAppId = "InvalidParameter.InvalidAppId"
            case invalidClusterId = "InvalidParameter.InvalidClusterId"
            case invalidName = "InvalidParameter.InvalidName"
            case invalidRegion = "InvalidParameter.InvalidRegion"
            case invalidResourceIds = "InvalidParameter.InvalidResourceIds"
            case jobConfigLogCollectParamError = "InvalidParameter.JobConfigLogCollectParamError"
            case maxParallelismTooLarge = "InvalidParameter.MaxParallelismTooLarge"
            case maxParallelismTooSmall = "InvalidParameter.MaxParallelismTooSmall"
            case uinResourceNotMatch = "InvalidParameter.UinResourceNotMatch"
            case unsupportedFlinkConf = "InvalidParameter.UnsupportedFlinkConf"
            case other = "InvalidParameter"
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
        
        /// AppId资源不匹配。
        public static var appIdResourceNotMatch: InvalidParameter {
            InvalidParameter(.appIdResourceNotMatch)
        }
        
        /// 非法的 MaxParallelism 参数。
        public static var illegalMaxParallelism: InvalidParameter {
            InvalidParameter(.illegalMaxParallelism)
        }
        
        /// appid错误。
        public static var invalidAppId: InvalidParameter {
            InvalidParameter(.invalidAppId)
        }
        
        /// 无效集群id。
        public static var invalidClusterId: InvalidParameter {
            InvalidParameter(.invalidClusterId)
        }
        
        /// 名字不符合规范。
        public static var invalidName: InvalidParameter {
            InvalidParameter(.invalidName)
        }
        
        /// 无效Region。
        public static var invalidRegion: InvalidParameter {
            InvalidParameter(.invalidRegion)
        }
        
        /// ResourceIds非法。
        public static var invalidResourceIds: InvalidParameter {
            InvalidParameter(.invalidResourceIds)
        }
        
        public static var jobConfigLogCollectParamError: InvalidParameter {
            InvalidParameter(.jobConfigLogCollectParamError)
        }
        
        /// MaxParallelism 过大。
        public static var maxParallelismTooLarge: InvalidParameter {
            InvalidParameter(.maxParallelismTooLarge)
        }
        
        /// MaxParallelism 不允许小于算子默认并行度。
        public static var maxParallelismTooSmall: InvalidParameter {
            InvalidParameter(.maxParallelismTooSmall)
        }
        
        /// Uin资源不匹配。
        public static var uinResourceNotMatch: InvalidParameter {
            InvalidParameter(.uinResourceNotMatch)
        }
        
        /// Flink参数非法。
        public static var unsupportedFlinkConf: InvalidParameter {
            InvalidParameter(.unsupportedFlinkConf)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCOceanusError.InvalidParameter: Equatable {
    public static func == (lhs: TCOceanusError.InvalidParameter, rhs: TCOceanusError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCOceanusError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCOceanusError.InvalidParameter {
    public func toOceanusError() -> TCOceanusError {
        guard let code = TCOceanusError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCOceanusError(code, context: self.context)
    }
}