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

extension TCClsError {
    public struct OperationDenied: TCErrorType {
        enum Code: String {
            case accountDestroy = "OperationDenied.AccountDestroy"
            case accountIsolate = "OperationDenied.AccountIsolate"
            case accountNotExists = "OperationDenied.AccountNotExists"
            case aclFailed = "OperationDenied.ACLFailed"
            case alarmNotSupportForSearchLow = "OperationDenied.AlarmNotSupportForSearchLow"
            case analysisSwitchClose = "OperationDenied.AnalysisSwitchClose"
            case newSyntaxNotSupported = "OperationDenied.NewSyntaxNotSupported"
            case noticeHasAlarm = "OperationDenied.NoticeHasAlarm"
            case operationNotSupportInSearchLow = "OperationDenied.OperationNotSupportInSearchLow"
            case topicHasDataFormTask = "OperationDenied.TopicHasDataFormTask"
            case topicHasDeliverFunction = "OperationDenied.TopicHasDeliverFunction"
            case topicHasScheduleSqlTask = "OperationDenied.TopicHasScheduleSqlTask"
            case other = "OperationDenied"
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
        
        /// 账户已销毁。
        public static var accountDestroy: OperationDenied {
            OperationDenied(.accountDestroy)
        }
        
        /// 账户欠费。
        public static var accountIsolate: OperationDenied {
            OperationDenied(.accountIsolate)
        }
        
        /// 账户不存在。
        ///
        /// 需要开通cls服务
        public static var accountNotExists: OperationDenied {
            OperationDenied(.accountNotExists)
        }
        
        /// ACL校验失败。
        public static var aclFailed: OperationDenied {
            OperationDenied(.aclFailed)
        }
        
        /// 低频不支持告警。
        public static var alarmNotSupportForSearchLow: OperationDenied {
            OperationDenied(.alarmNotSupportForSearchLow)
        }
        
        /// 字段没有开启分析功能。
        ///
        /// 开启即可
        public static var analysisSwitchClose: OperationDenied {
            OperationDenied(.analysisSwitchClose)
        }
        
        /// 该资源暂不支持新语法，联系helper处理。
        public static var newSyntaxNotSupported: OperationDenied {
            OperationDenied(.newSyntaxNotSupported)
        }
        
        /// 通知模板已绑定告警，无法删除。
        public static var noticeHasAlarm: OperationDenied {
            OperationDenied(.noticeHasAlarm)
        }
        
        /// 操作低频检索不支持。
        public static var operationNotSupportInSearchLow: OperationDenied {
            OperationDenied(.operationNotSupportInSearchLow)
        }
        
        /// topic绑定了数据加工。
        public static var topicHasDataFormTask: OperationDenied {
            OperationDenied(.topicHasDataFormTask)
        }
        
        /// topic绑定了函数投递。
        ///
        /// 需要删除函数投递之后， 才能删除topic
        public static var topicHasDeliverFunction: OperationDenied {
            OperationDenied(.topicHasDeliverFunction)
        }
        
        public static var topicHasScheduleSqlTask: OperationDenied {
            OperationDenied(.topicHasScheduleSqlTask)
        }
        
        /// 操作被拒绝。
        public static var other: OperationDenied {
            OperationDenied(.other)
        }
    }
}

extension TCClsError.OperationDenied: Equatable {
    public static func == (lhs: TCClsError.OperationDenied, rhs: TCClsError.OperationDenied) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCClsError.OperationDenied: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCClsError.OperationDenied {
    /// - Returns: ``TCClsError`` that holds the same error and context.
    public func toClsError() -> TCClsError {
        guard let code = TCClsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCClsError(code, context: self.context)
    }
}

extension TCClsError.OperationDenied {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
