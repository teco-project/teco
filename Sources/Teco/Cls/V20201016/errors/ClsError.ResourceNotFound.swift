//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension TCClsError {
    public struct ResourceNotFound: TCClsErrorType {
        enum Code: String {
            case agentVersionNotExist = "ResourceNotFound.AgentVersionNotExist"
            case alarmNotExist = "ResourceNotFound.AlarmNotExist"
            case alarmNoticeNotExist = "ResourceNotFound.AlarmNoticeNotExist"
            case configNotExist = "ResourceNotFound.ConfigNotExist"
            case exportNotExist = "ResourceNotFound.ExportNotExist"
            case indexNotExist = "ResourceNotFound.IndexNotExist"
            case logsetNotExist = "ResourceNotFound.LogsetNotExist"
            case machineGroupNotExist = "ResourceNotFound.MachineGroupNotExist"
            case partitionNotExist = "ResourceNotFound.PartitionNotExist"
            case shipperNotExist = "ResourceNotFound.ShipperNotExist"
            case shipperTaskNotExist = "ResourceNotFound.ShipperTaskNotExist"
            case topicNotExist = "ResourceNotFound.TopicNotExist"
            case other = "ResourceNotFound"
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

        /// agent version不存在。
        public static var agentVersionNotExist: ResourceNotFound {
            ResourceNotFound(.agentVersionNotExist)
        }

        /// 告警策略不存在。
        public static var alarmNotExist: ResourceNotFound {
            ResourceNotFound(.alarmNotExist)
        }

        /// 告警策略通知模板不存在。
        public static var alarmNoticeNotExist: ResourceNotFound {
            ResourceNotFound(.alarmNoticeNotExist)
        }

        /// 指定的采集规则配置不存在。
        public static var configNotExist: ResourceNotFound {
            ResourceNotFound(.configNotExist)
        }

        /// 日志导出不存在。
        public static var exportNotExist: ResourceNotFound {
            ResourceNotFound(.exportNotExist)
        }

        /// 索引不存在。
        public static var indexNotExist: ResourceNotFound {
            ResourceNotFound(.indexNotExist)
        }

        /// 指定的日志集不存在。
        public static var logsetNotExist: ResourceNotFound {
            ResourceNotFound(.logsetNotExist)
        }

        /// 机器组不存在。
        public static var machineGroupNotExist: ResourceNotFound {
            ResourceNotFound(.machineGroupNotExist)
        }

        /// 分区不存在。
        public static var partitionNotExist: ResourceNotFound {
            ResourceNotFound(.partitionNotExist)
        }

        /// 投递规则不存在。
        ///
        /// 检查投递规则是否存在。
        public static var shipperNotExist: ResourceNotFound {
            ResourceNotFound(.shipperNotExist)
        }

        /// 投递任务不存在。
        public static var shipperTaskNotExist: ResourceNotFound {
            ResourceNotFound(.shipperTaskNotExist)
        }

        /// 日志主题不存在。
        ///
        /// 请输入正确的日志主题ID。若无法解决，请联系智能客服或提交工单。
        public static var topicNotExist: ResourceNotFound {
            ResourceNotFound(.topicNotExist)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asClsError() -> TCClsError {
            let code: TCClsError.Code
            switch self.error {
            case .agentVersionNotExist:
                code = .resourceNotFound_AgentVersionNotExist
            case .alarmNotExist:
                code = .resourceNotFound_AlarmNotExist
            case .alarmNoticeNotExist:
                code = .resourceNotFound_AlarmNoticeNotExist
            case .configNotExist:
                code = .resourceNotFound_ConfigNotExist
            case .exportNotExist:
                code = .resourceNotFound_ExportNotExist
            case .indexNotExist:
                code = .resourceNotFound_IndexNotExist
            case .logsetNotExist:
                code = .resourceNotFound_LogsetNotExist
            case .machineGroupNotExist:
                code = .resourceNotFound_MachineGroupNotExist
            case .partitionNotExist:
                code = .resourceNotFound_PartitionNotExist
            case .shipperNotExist:
                code = .resourceNotFound_ShipperNotExist
            case .shipperTaskNotExist:
                code = .resourceNotFound_ShipperTaskNotExist
            case .topicNotExist:
                code = .resourceNotFound_TopicNotExist
            case .other:
                code = .resourceNotFound
            }
            return TCClsError(code, context: self.context)
        }
    }
}
