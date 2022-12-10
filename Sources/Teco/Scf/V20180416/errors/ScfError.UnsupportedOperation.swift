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

extension TCScfError {
    public struct UnsupportedOperation: TCErrorType {
        enum Code: String {
            case aliasBind = "UnsupportedOperation.AliasBind"
            case asyncRunEnable = "UnsupportedOperation.AsyncRunEnable"
            case cdn = "UnsupportedOperation.Cdn"
            case cos = "UnsupportedOperation.Cos"
            case eipFixed = "UnsupportedOperation.EipFixed"
            case notSupportRegion = "UnsupportedOperation.NotSupportRegion"
            case region = "UnsupportedOperation.Region"
            case trigger = "UnsupportedOperation.Trigger"
            case updateFunctionEventInvokeConfig = "UnsupportedOperation.UpdateFunctionEventInvokeConfig"
            case vpcConfig = "UnsupportedOperation.VpcConfig"
            case other = "UnsupportedOperation"
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
        
        /// 资源还有别名绑定，不支持当前操作，请解绑别名后重试。
        public static var aliasBind: UnsupportedOperation {
            UnsupportedOperation(.aliasBind)
        }
        
        /// 指定的配置AsyncRunEnable暂不支持，请修正后再试。
        public static var asyncRunEnable: UnsupportedOperation {
            UnsupportedOperation(.asyncRunEnable)
        }
        
        /// Cdn不支持。
        public static var cdn: UnsupportedOperation {
            UnsupportedOperation(.cdn)
        }
        
        /// Cos操作不支持。
        public static var cos: UnsupportedOperation {
            UnsupportedOperation(.cos)
        }
        
        /// 指定的配置EipFixed暂不支持。
        public static var eipFixed: UnsupportedOperation {
            UnsupportedOperation(.eipFixed)
        }
        
        public static var notSupportRegion: UnsupportedOperation {
            UnsupportedOperation(.notSupportRegion)
        }
        
        /// 不支持此地域。
        public static var region: UnsupportedOperation {
            UnsupportedOperation(.region)
        }
        
        /// Trigger操作不支持。
        public static var trigger: UnsupportedOperation {
            UnsupportedOperation(.trigger)
        }
        
        /// 指定的配置暂不支持，请修正后再试。
        public static var updateFunctionEventInvokeConfig: UnsupportedOperation {
            UnsupportedOperation(.updateFunctionEventInvokeConfig)
        }
        
        /// 指定的配置VpcConfig暂不支持。
        public static var vpcConfig: UnsupportedOperation {
            UnsupportedOperation(.vpcConfig)
        }
        
        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }
    }
}

extension TCScfError.UnsupportedOperation: Equatable {
    public static func == (lhs: TCScfError.UnsupportedOperation, rhs: TCScfError.UnsupportedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCScfError.UnsupportedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCScfError.UnsupportedOperation {
    public func toScfError() -> TCScfError {
        guard let code = TCScfError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCScfError(code, context: self.context)
    }
}