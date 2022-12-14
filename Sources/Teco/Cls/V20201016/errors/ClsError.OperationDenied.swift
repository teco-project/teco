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
    public struct OperationDenied: TCClsErrorType {
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
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// ??????????????????
        public static var accountDestroy: OperationDenied {
            OperationDenied(.accountDestroy)
        }

        /// ???????????????
        public static var accountIsolate: OperationDenied {
            OperationDenied(.accountIsolate)
        }

        /// ??????????????????
        ///
        /// ????????????cls??????
        public static var accountNotExists: OperationDenied {
            OperationDenied(.accountNotExists)
        }

        /// ACL???????????????
        public static var aclFailed: OperationDenied {
            OperationDenied(.aclFailed)
        }

        /// ????????????????????????
        public static var alarmNotSupportForSearchLow: OperationDenied {
            OperationDenied(.alarmNotSupportForSearchLow)
        }

        /// ?????????????????????????????????
        ///
        /// ????????????
        public static var analysisSwitchClose: OperationDenied {
            OperationDenied(.analysisSwitchClose)
        }

        /// ???????????????????????????????????????helper?????????
        public static var newSyntaxNotSupported: OperationDenied {
            OperationDenied(.newSyntaxNotSupported)
        }

        /// ?????????????????????????????????????????????
        public static var noticeHasAlarm: OperationDenied {
            OperationDenied(.noticeHasAlarm)
        }

        /// ??????????????????????????????
        public static var operationNotSupportInSearchLow: OperationDenied {
            OperationDenied(.operationNotSupportInSearchLow)
        }

        /// topic????????????????????????
        public static var topicHasDataFormTask: OperationDenied {
            OperationDenied(.topicHasDataFormTask)
        }

        /// topic????????????????????????
        ///
        /// ????????????????????????????????? ????????????topic
        public static var topicHasDeliverFunction: OperationDenied {
            OperationDenied(.topicHasDeliverFunction)
        }

        public static var topicHasScheduleSqlTask: OperationDenied {
            OperationDenied(.topicHasScheduleSqlTask)
        }

        /// ??????????????????
        public static var other: OperationDenied {
            OperationDenied(.other)
        }

        public func asClsError() -> TCClsError {
            let code: TCClsError.Code
            switch self.error {
            case .accountDestroy: 
                code = .operationDenied_AccountDestroy
            case .accountIsolate: 
                code = .operationDenied_AccountIsolate
            case .accountNotExists: 
                code = .operationDenied_AccountNotExists
            case .aclFailed: 
                code = .operationDenied_ACLFailed
            case .alarmNotSupportForSearchLow: 
                code = .operationDenied_AlarmNotSupportForSearchLow
            case .analysisSwitchClose: 
                code = .operationDenied_AnalysisSwitchClose
            case .newSyntaxNotSupported: 
                code = .operationDenied_NewSyntaxNotSupported
            case .noticeHasAlarm: 
                code = .operationDenied_NoticeHasAlarm
            case .operationNotSupportInSearchLow: 
                code = .operationDenied_OperationNotSupportInSearchLow
            case .topicHasDataFormTask: 
                code = .operationDenied_TopicHasDataFormTask
            case .topicHasDeliverFunction: 
                code = .operationDenied_TopicHasDeliverFunction
            case .topicHasScheduleSqlTask: 
                code = .operationDenied_TopicHasScheduleSqlTask
            case .other: 
                code = .operationDenied
            }
            return TCClsError(code, context: self.context)
        }
    }
}
