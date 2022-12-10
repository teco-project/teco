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

extension TCTcrError {
    public struct UnsupportedOperation: TCErrorType {
        enum Code: String {
            case createPrivateZone = "UnsupportedOperation.CreatePrivateZone"
            case createPrivateZoneRecord = "UnsupportedOperation.CreatePrivateZoneRecord"
            case deletePrivateZoneRecord = "UnsupportedOperation.DeletePrivateZoneRecord"
            case describePrivateZoneList = "UnsupportedOperation.DescribePrivateZoneList"
            case describePrivateZoneRecordList = "UnsupportedOperation.DescribePrivateZoneRecordList"
            case errNoUserInitialized = "UnsupportedOperation.ErrNoUserInitialized"
            case modifyPrivateZoneRecord = "UnsupportedOperation.ModifyPrivateZoneRecord"
            case modifyPrivateZoneVpc = "UnsupportedOperation.ModifyPrivateZoneVpc"
            case other = "UnsupportedOperation"
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
        
        public static var createPrivateZone: UnsupportedOperation {
            UnsupportedOperation(.createPrivateZone)
        }
        
        public static var createPrivateZoneRecord: UnsupportedOperation {
            UnsupportedOperation(.createPrivateZoneRecord)
        }
        
        public static var deletePrivateZoneRecord: UnsupportedOperation {
            UnsupportedOperation(.deletePrivateZoneRecord)
        }
        
        public static var describePrivateZoneList: UnsupportedOperation {
            UnsupportedOperation(.describePrivateZoneList)
        }
        
        public static var describePrivateZoneRecordList: UnsupportedOperation {
            UnsupportedOperation(.describePrivateZoneRecordList)
        }
        
        public static var errNoUserInitialized: UnsupportedOperation {
            UnsupportedOperation(.errNoUserInitialized)
        }
        
        public static var modifyPrivateZoneRecord: UnsupportedOperation {
            UnsupportedOperation(.modifyPrivateZoneRecord)
        }
        
        public static var modifyPrivateZoneVpc: UnsupportedOperation {
            UnsupportedOperation(.modifyPrivateZoneVpc)
        }
        
        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }
    }
}

extension TCTcrError.UnsupportedOperation: Equatable {
    public static func == (lhs: TCTcrError.UnsupportedOperation, rhs: TCTcrError.UnsupportedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTcrError.UnsupportedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTcrError.UnsupportedOperation {
    /// - Returns: ``TCTcrError`` that holds the same error and context.
    public func toTcrError() -> TCTcrError {
        guard let code = TCTcrError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTcrError(code, context: self.context)
    }
}

extension TCTcrError.UnsupportedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
