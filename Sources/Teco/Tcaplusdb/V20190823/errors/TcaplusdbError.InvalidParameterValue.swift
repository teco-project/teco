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

extension TCTcaplusdbError {
    public struct InvalidParameterValue: TCErrorType {
        enum Code: String {
            case invalidAppName = "InvalidParameterValue.InvalidAppName"
            case invalidClusterName = "InvalidParameterValue.InvalidClusterName"
            case invalidTableGroupName = "InvalidParameterValue.InvalidTableGroupName"
            case invalidTimeValue = "InvalidParameterValue.InvalidTimeValue"
            case unsupportIdlType = "InvalidParameterValue.UnsupportIdlType"
            case other = "InvalidParameterValue"
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
        
        /// 应用名不合法。
        public static var invalidAppName: InvalidParameterValue {
            InvalidParameterValue(.invalidAppName)
        }
        
        /// 集群名称不合法。
        public static var invalidClusterName: InvalidParameterValue {
            InvalidParameterValue(.invalidClusterName)
        }
        
        /// 非法的表格组名称。
        public static var invalidTableGroupName: InvalidParameterValue {
            InvalidParameterValue(.invalidTableGroupName)
        }
        
        /// 非法的时间格式。
        public static var invalidTimeValue: InvalidParameterValue {
            InvalidParameterValue(.invalidTimeValue)
        }
        
        /// 不支持的应用数据描述类型。
        public static var unsupportIdlType: InvalidParameterValue {
            InvalidParameterValue(.unsupportIdlType)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
    }
}

extension TCTcaplusdbError.InvalidParameterValue: Equatable {
    public static func == (lhs: TCTcaplusdbError.InvalidParameterValue, rhs: TCTcaplusdbError.InvalidParameterValue) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTcaplusdbError.InvalidParameterValue: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTcaplusdbError.InvalidParameterValue {
    public func toTcaplusdbError() -> TCTcaplusdbError {
        guard let code = TCTcaplusdbError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTcaplusdbError(code, context: self.context)
    }
}