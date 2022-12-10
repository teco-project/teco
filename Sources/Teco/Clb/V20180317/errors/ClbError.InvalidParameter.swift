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

extension TCClbError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case formatError = "InvalidParameter.FormatError"
            case invalidFilter = "InvalidParameter.InvalidFilter"
            case lbIdNotFound = "InvalidParameter.LBIdNotFound"
            case listenerIdNotFound = "InvalidParameter.ListenerIdNotFound"
            case locationNotFound = "InvalidParameter.LocationNotFound"
            case portCheckFailed = "InvalidParameter.PortCheckFailed"
            case protocolCheckFailed = "InvalidParameter.ProtocolCheckFailed"
            case regionNotFound = "InvalidParameter.RegionNotFound"
            case rewriteAlreadyExist = "InvalidParameter.RewriteAlreadyExist"
            case someRewriteNotFound = "InvalidParameter.SomeRewriteNotFound"
            case other = "InvalidParameter"
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
        
        /// 参数格式错误。
        public static var formatError: InvalidParameter {
            InvalidParameter(.formatError)
        }
        
        /// 查询参数错误。
        ///
        /// 按文档接口说明传参。
        public static var invalidFilter: InvalidParameter {
            InvalidParameter(.invalidFilter)
        }
        
        /// 负载均衡实例ID错误。
        public static var lbIdNotFound: InvalidParameter {
            InvalidParameter(.lbIdNotFound)
        }
        
        /// 监听器ID错误。
        public static var listenerIdNotFound: InvalidParameter {
            InvalidParameter(.listenerIdNotFound)
        }
        
        /// 查找不到符合条件的转发规则。
        public static var locationNotFound: InvalidParameter {
            InvalidParameter(.locationNotFound)
        }
        
        /// 监听器端口检查失败，比如端口冲突。
        public static var portCheckFailed: InvalidParameter {
            InvalidParameter(.portCheckFailed)
        }
        
        /// 监听器协议检查失败，比如相关协议不支持对应操作。
        public static var protocolCheckFailed: InvalidParameter {
            InvalidParameter(.protocolCheckFailed)
        }
        
        /// 地域无效。
        public static var regionNotFound: InvalidParameter {
            InvalidParameter(.regionNotFound)
        }
        
        /// 转发规则已绑定重定向关系。
        public static var rewriteAlreadyExist: InvalidParameter {
            InvalidParameter(.rewriteAlreadyExist)
        }
        
        /// 一些重定向规则不存在。
        public static var someRewriteNotFound: InvalidParameter {
            InvalidParameter(.someRewriteNotFound)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCClbError.InvalidParameter: Equatable {
    public static func == (lhs: TCClbError.InvalidParameter, rhs: TCClbError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCClbError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCClbError.InvalidParameter {
    /// - Returns: ``TCClbError`` that holds the same error and context.
    public func toClbError() -> TCClbError {
        guard let code = TCClbError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCClbError(code, context: self.context)
    }
}

extension TCClbError.InvalidParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
