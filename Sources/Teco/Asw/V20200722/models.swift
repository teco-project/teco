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

extension Asw {
    /// 执行的事件历史
    public struct ExecutionEvent: TCOutputModel {
        /// 执行资源名
        public let executionResourceName: String

        /// 自增序号
        public let eventId: Int64

        /// 事件类型
        public let eventCategory: String

        /// 步骤节点名称
        public let stepName: String

        /// 该步骤引用的资源名
        public let resourceName: String

        /// 该事件发生时间，毫秒
        public let timestamp: String

        /// 事件内容
        public let content: String

        /// 异常信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let exception: String?

        enum CodingKeys: String, CodingKey {
            case executionResourceName = "ExecutionResourceName"
            case eventId = "EventId"
            case eventCategory = "EventCategory"
            case stepName = "StepName"
            case resourceName = "ResourceName"
            case timestamp = "Timestamp"
            case content = "Content"
            case exception = "Exception"
        }
    }

    /// 模版过滤类型
    public struct Filter: TCInputModel {
        /// 过滤器名字
        public let name: String?

        /// 过滤器值的数组
        public let values: [String]?

        public init(name: String? = nil, values: [String]? = nil) {
            self.name = name
            self.values = values
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }

    /// 状态机
    public struct StateMachine: TCOutputModel {
        /// 状态机资源
        public let flowServiceResource: String

        /// 状态机类型。EXPRESS，STANDARD
        public let type: String

        /// 状态机名称
        public let flowServiceName: String

        /// 状态机中文名
        public let flowServiceChineseName: String

        /// 创建时间。timestamp
        public let createDate: String

        /// 修改时间。timestamp
        public let modifyDate: String

        /// 状态机状态
        public let status: String

        /// 创建者的subAccountUin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creator: String?

        /// 修改者的subAccountUin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modifier: String?

        /// 状态机id
        public let flowServiceId: String

        /// 模板id
        public let templateId: String

        /// 备注
        public let description: String

        enum CodingKeys: String, CodingKey {
            case flowServiceResource = "FlowServiceResource"
            case type = "Type"
            case flowServiceName = "FlowServiceName"
            case flowServiceChineseName = "FlowServiceChineseName"
            case createDate = "CreateDate"
            case modifyDate = "ModifyDate"
            case status = "Status"
            case creator = "Creator"
            case modifier = "Modifier"
            case flowServiceId = "FlowServiceId"
            case templateId = "TemplateId"
            case description = "Description"
        }
    }
}
