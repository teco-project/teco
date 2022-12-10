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

extension TCWedataError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case duplicateName = "InvalidParameter.DuplicateName"
            case invalidFilterParameter = "InvalidParameter.InvalidFilterParameter"
            case ruleNotExist = "InvalidParameter.RuleNotExist"
            case serviceIsBusy = "InvalidParameter.ServiceIsBusy"
            case workspaceNotExist = "InvalidParameter.WorkspaceNotExist"
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
        
        /// 名称重复。
        public static var duplicateName: InvalidParameter {
            InvalidParameter(.duplicateName)
        }
        
        /// 查询过滤条件参数错误。
        public static var invalidFilterParameter: InvalidParameter {
            InvalidParameter(.invalidFilterParameter)
        }
        
        /// 规则不存在。
        public static var ruleNotExist: InvalidParameter {
            InvalidParameter(.ruleNotExist)
        }
        
        /// 服务繁忙，请稍后重试。
        public static var serviceIsBusy: InvalidParameter {
            InvalidParameter(.serviceIsBusy)
        }
        
        /// 工作空间不存在。
        public static var workspaceNotExist: InvalidParameter {
            InvalidParameter(.workspaceNotExist)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCWedataError.InvalidParameter: Equatable {
    public static func == (lhs: TCWedataError.InvalidParameter, rhs: TCWedataError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCWedataError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCWedataError.InvalidParameter {
    public func toWedataError() -> TCWedataError {
        guard let code = TCWedataError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCWedataError(code, context: self.context)
    }
}