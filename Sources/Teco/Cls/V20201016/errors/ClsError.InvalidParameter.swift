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

extension TCClsError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case alarmConflict = "InvalidParameter.AlarmConflict"
            case alarmNoticeConflict = "InvalidParameter.AlarmNoticeConflict"
            case configConflict = "InvalidParameter.ConfigConflict"
            case content = "InvalidParameter.Content"
            case dbDuplication = "InvalidParameter.DbDuplication"
            case exportConflict = "InvalidParameter.ExportConflict"
            case inValidIndexRuleForSearchLow = "InvalidParameter.InValidIndexRuleForSearchLow"
            case indexConflict = "InvalidParameter.IndexConflict"
            case logsetConflict = "InvalidParameter.LogsetConflict"
            case machineGroupConflict = "InvalidParameter.MachineGroupConflict"
            case shipperConflict = "InvalidParameter.ShipperConflict"
            case topicConflict = "InvalidParameter.TopicConflict"
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
        
        /// 告警策略已经存在。
        public static var alarmConflict: InvalidParameter {
            InvalidParameter(.alarmConflict)
        }
        
        /// 告警策略通知模板已经存在。
        public static var alarmNoticeConflict: InvalidParameter {
            InvalidParameter(.alarmNoticeConflict)
        }
        
        /// 相同的采集配置规则已经存在。
        public static var configConflict: InvalidParameter {
            InvalidParameter(.configConflict)
        }
        
        /// 无效的Content。
        public static var content: InvalidParameter {
            InvalidParameter(.content)
        }
        
        /// 数据库唯一键冲突。
        public static var dbDuplication: InvalidParameter {
            InvalidParameter(.dbDuplication)
        }
        
        public static var exportConflict: InvalidParameter {
            InvalidParameter(.exportConflict)
        }
        
        /// 低频不支持配置kv和tag索引。
        public static var inValidIndexRuleForSearchLow: InvalidParameter {
            InvalidParameter(.inValidIndexRuleForSearchLow)
        }
        
        /// 指定日志主题已经存在索引规则。
        public static var indexConflict: InvalidParameter {
            InvalidParameter(.indexConflict)
        }
        
        /// 相同的日志集已存在。
        public static var logsetConflict: InvalidParameter {
            InvalidParameter(.logsetConflict)
        }
        
        /// 同名机器组已经存在。
        public static var machineGroupConflict: InvalidParameter {
            InvalidParameter(.machineGroupConflict)
        }
        
        /// 投递规则命名冲突。
        public static var shipperConflict: InvalidParameter {
            InvalidParameter(.shipperConflict)
        }
        
        /// 指定日志集下已经有同名的日志主题。
        public static var topicConflict: InvalidParameter {
            InvalidParameter(.topicConflict)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCClsError.InvalidParameter: Equatable {
    public static func == (lhs: TCClsError.InvalidParameter, rhs: TCClsError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCClsError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCClsError.InvalidParameter {
    public func toClsError() -> TCClsError {
        guard let code = TCClsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCClsError(code, context: self.context)
    }
}