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

extension TCCfsError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case autoPolicyNotFound = "InvalidParameter.AutoPolicyNotFound"
            case invalidAlivedDays = "InvalidParameter.InvalidAlivedDays"
            case invalidParamDayofWeek = "InvalidParameter.InvalidParamDayofWeek"
            case invalidParamHour = "InvalidParameter.InvalidParamHour"
            case invalidSnapPolicyStatus = "InvalidParameter.InvalidSnapPolicyStatus"
            case invalidSnapshotName = "InvalidParameter.InvalidSnapshotName"
            case invalidSnapshotPolicyName = "InvalidParameter.InvalidSnapshotPolicyName"
            case missingPolicyParam = "InvalidParameter.MissingPolicyParam"
            case snapshotNameLimitExceeded = "InvalidParameter.SnapshotNameLimitExceeded"
            case snapshotPolicyNameLimitExceeded = "InvalidParameter.SnapshotPolicyNameLimitExceeded"
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
        
        /// 快照策略未找到。
        public static var autoPolicyNotFound: InvalidParameter {
            InvalidParameter(.autoPolicyNotFound)
        }
        
        /// 无效的快照保留时间。
        public static var invalidAlivedDays: InvalidParameter {
            InvalidParameter(.invalidAlivedDays)
        }
        
        /// 定期星期参数无效。
        public static var invalidParamDayofWeek: InvalidParameter {
            InvalidParameter(.invalidParamDayofWeek)
        }
        
        /// 定期小时 参数值错误。
        public static var invalidParamHour: InvalidParameter {
            InvalidParameter(.invalidParamHour)
        }
        
        /// 无效的快照策略状态。
        public static var invalidSnapPolicyStatus: InvalidParameter {
            InvalidParameter(.invalidSnapPolicyStatus)
        }
        
        /// 无效的文件系统快照参数名称 。
        public static var invalidSnapshotName: InvalidParameter {
            InvalidParameter(.invalidSnapshotName)
        }
        
        /// 无效的文件系统快照策略名称。
        public static var invalidSnapshotPolicyName: InvalidParameter {
            InvalidParameter(.invalidSnapshotPolicyName)
        }
        
        /// 缺少策略相关参数。
        public static var missingPolicyParam: InvalidParameter {
            InvalidParameter(.missingPolicyParam)
        }
        
        /// 文件系统快照名称超出上限。
        public static var snapshotNameLimitExceeded: InvalidParameter {
            InvalidParameter(.snapshotNameLimitExceeded)
        }
        
        /// 文件系统快照策略名称超过限制。
        public static var snapshotPolicyNameLimitExceeded: InvalidParameter {
            InvalidParameter(.snapshotPolicyNameLimitExceeded)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCCfsError.InvalidParameter: Equatable {
    public static func == (lhs: TCCfsError.InvalidParameter, rhs: TCCfsError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCfsError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCfsError.InvalidParameter {
    /// - Returns: ``TCCfsError`` that holds the same error and context.
    public func toCfsError() -> TCCfsError {
        guard let code = TCCfsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCfsError(code, context: self.context)
    }
}

extension TCCfsError.InvalidParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
