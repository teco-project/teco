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
    public struct FailedOperation: TCErrorType {
        enum Code: String {
            case dataSourceConnectionFailed = "FailedOperation.DataSourceConnectionFailed"
            case duplicatedJobName = "FailedOperation.DuplicatedJobName"
            case getResourceTagsByResourceIds = "FailedOperation.GetResourceTagsByResourceIds"
            case grammarCheckFailure = "FailedOperation.GrammarCheckFailure"
            case parseSql = "FailedOperation.ParseSql"
            case userNotAuthenticated = "FailedOperation.UserNotAuthenticated"
            case other = "FailedOperation"
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
        
        /// 数据库连接失败，请检查参数是否填写正确。
        public static var dataSourceConnectionFailed: FailedOperation {
            FailedOperation(.dataSourceConnectionFailed)
        }
        
        /// 重复的作业名。
        public static var duplicatedJobName: FailedOperation {
            FailedOperation(.duplicatedJobName)
        }
        
        /// 查询资源关联标签失败。
        public static var getResourceTagsByResourceIds: FailedOperation {
            FailedOperation(.getResourceTagsByResourceIds)
        }
        
        /// 语法检查失败。
        public static var grammarCheckFailure: FailedOperation {
            FailedOperation(.grammarCheckFailure)
        }
        
        /// SQL解析失败。
        public static var parseSql: FailedOperation {
            FailedOperation(.parseSql)
        }
        
        /// 用户未实名验证。
        public static var userNotAuthenticated: FailedOperation {
            FailedOperation(.userNotAuthenticated)
        }
        
        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }
    }
}

extension TCOceanusError.FailedOperation: Equatable {
    public static func == (lhs: TCOceanusError.FailedOperation, rhs: TCOceanusError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCOceanusError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCOceanusError.FailedOperation {
    public func toOceanusError() -> TCOceanusError {
        guard let code = TCOceanusError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCOceanusError(code, context: self.context)
    }
}