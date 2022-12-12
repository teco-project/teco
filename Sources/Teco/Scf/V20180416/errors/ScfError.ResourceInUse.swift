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

extension TCScfError {
    public struct ResourceInUse: TCScfErrorType {
        enum Code: String {
            case alias = "ResourceInUse.Alias"
            case cdn = "ResourceInUse.Cdn"
            case cmq = "ResourceInUse.Cmq"
            case cos = "ResourceInUse.Cos"
            case function = "ResourceInUse.Function"
            case functionName = "ResourceInUse.FunctionName"
            case layerVersion = "ResourceInUse.LayerVersion"
            case namespace = "ResourceInUse.Namespace"
            case trigger = "ResourceInUse.Trigger"
            case triggerName = "ResourceInUse.TriggerName"
            case other = "ResourceInUse"
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
        
        /// Alias已被占用。
        public static var alias: ResourceInUse {
            ResourceInUse(.alias)
        }
        
        /// Cdn已被占用。
        public static var cdn: ResourceInUse {
            ResourceInUse(.cdn)
        }
        
        /// Cmq已被占用。
        public static var cmq: ResourceInUse {
            ResourceInUse(.cmq)
        }
        
        /// Cos已被占用。
        public static var cos: ResourceInUse {
            ResourceInUse(.cos)
        }
        
        /// 函数已存在。
        public static var function: ResourceInUse {
            ResourceInUse(.function)
        }
        
        /// FunctionName已存在。
        public static var functionName: ResourceInUse {
            ResourceInUse(.functionName)
        }
        
        /// Layer版本正在使用中。
        public static var layerVersion: ResourceInUse {
            ResourceInUse(.layerVersion)
        }
        
        /// Namespace已存在。
        public static var namespace: ResourceInUse {
            ResourceInUse(.namespace)
        }
        
        /// TriggerName已存在。
        public static var trigger: ResourceInUse {
            ResourceInUse(.trigger)
        }
        
        /// TriggerName已存在。
        public static var triggerName: ResourceInUse {
            ResourceInUse(.triggerName)
        }
        
        /// 资源被占用。
        public static var other: ResourceInUse {
            ResourceInUse(.other)
        }
        
        public func asScfError() -> TCScfError {
            let code: TCScfError.Code
            switch self.error {
            case .alias: 
                code = .resourceInUse_Alias
            case .cdn: 
                code = .resourceInUse_Cdn
            case .cmq: 
                code = .resourceInUse_Cmq
            case .cos: 
                code = .resourceInUse_Cos
            case .function: 
                code = .resourceInUse_Function
            case .functionName: 
                code = .resourceInUse_FunctionName
            case .layerVersion: 
                code = .resourceInUse_LayerVersion
            case .namespace: 
                code = .resourceInUse_Namespace
            case .trigger: 
                code = .resourceInUse_Trigger
            case .triggerName: 
                code = .resourceInUse_TriggerName
            case .other: 
                code = .resourceInUse
            }
            return TCScfError(code, context: self.context)
        }
    }
}
