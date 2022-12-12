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

extension TCMonitorError {
    public struct InvalidParameterValue: TCMonitorErrorType {
        enum Code: String {
            case dashboardNameExists = "InvalidParameterValue.DashboardNameExists"
            case versionMismatch = "InvalidParameterValue.VersionMismatch"
            case other = "InvalidParameterValue"
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
        
        /// dashboard 名重复。
        public static var dashboardNameExists: InvalidParameterValue {
            InvalidParameterValue(.dashboardNameExists)
        }
        
        /// 版本不匹配。
        public static var versionMismatch: InvalidParameterValue {
            InvalidParameterValue(.versionMismatch)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
        
        public func asMonitorError() -> TCMonitorError {
            let code: TCMonitorError.Code
            switch self.error {
            case .dashboardNameExists: 
                code = .invalidParameterValue_DashboardNameExists
            case .versionMismatch: 
                code = .invalidParameterValue_VersionMismatch
            case .other: 
                code = .invalidParameterValue
            }
            return TCMonitorError(code, context: self.context)
        }
    }
}
