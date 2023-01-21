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

extension Bpaas {
    /// bpaas申请入参
    public struct ApplyParam: TCInputModel, TCOutputModel {
        /// 审批流中表单唯一标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let key: String?

        /// 表单value
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: [String]?

        /// 表单参数描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        public init(key: String, value: [String], name: String? = nil) {
            self.key = key
            self.value = value
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
            case name = "Name"
        }
    }

    /// 审批意见
    public struct ApproveOpinion: TCInputModel, TCOutputModel {
        /// 方式 1:输入文字反馈  2:预设选项
        public let type: UInt64

        /// 审批意见
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: [String]?

        public init(type: UInt64, content: [String]? = nil) {
            self.type = type
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case content = "Content"
        }
    }

    /// 审批人
    public struct ApproveUser: TCInputModel, TCOutputModel {
        /// 用户uin
        public let uin: UInt64

        /// 用户类型 (1:用户  2:用户组)
        public let type: UInt64

        /// 用户描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let desc: String?

        /// 用户昵称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nick: String?

        /// 动态获取Scf
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scf: Scf?

        public init(uin: UInt64, type: UInt64, desc: String? = nil, nick: String? = nil, scf: Scf? = nil) {
            self.uin = uin
            self.type = type
            self.desc = desc
            self.nick = nick
            self.scf = scf
        }

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case type = "Type"
            case desc = "Desc"
            case nick = "Nick"
            case scf = "Scf"
        }
    }

    /// 云函数SCF
    public struct Scf: TCInputModel, TCOutputModel {
        /// Scf函数地域id
        public let scfRegion: String

        /// Scf函数地域
        public let scfRegionName: String

        /// Scf函数名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scfName: String?

        /// Scf函数入参
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let params: [ScfParam]?

        public init(scfRegion: String, scfRegionName: String, scfName: String? = nil, params: [ScfParam]? = nil) {
            self.scfRegion = scfRegion
            self.scfRegionName = scfRegionName
            self.scfName = scfName
            self.params = params
        }

        enum CodingKeys: String, CodingKey {
            case scfRegion = "ScfRegion"
            case scfRegionName = "ScfRegionName"
            case scfName = "ScfName"
            case params = "Params"
        }
    }

    /// Scf函数入参
    public struct ScfParam: TCInputModel, TCOutputModel {
        /// 参数Key
        public let key: String

        /// 参数类型 1用户输入 2预设参数 3表单参数
        public let type: UInt64

        /// 参数值
        public let values: [String]

        /// 参数描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        public init(key: String, type: UInt64, values: [String], name: String? = nil) {
            self.key = key
            self.type = type
            self.values = values
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case type = "Type"
            case values = "Values"
            case name = "Name"
        }
    }

    /// 状态节点
    public struct StatusNode: TCOutputModel {
        /// 节点id
        public let nodeId: String

        /// 节点名称
        public let nodeName: String

        /// 节点类型 1:审批节点 2:执行节点 3:条件节点
        public let nodeType: UInt64

        /// 下一个节点
        public let nextNode: String

        /// 审批意见模型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let opinion: ApproveOpinion?

        /// scf函数名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scfName: String?

        /// 状态（0：待审批，1：审批通过，2：拒绝，3：scf执行失败，4：scf执行成功）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subStatus: UInt64?

        /// 审批节点审批人
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let approvedUin: [UInt64]?

        /// 审批时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 审批意见信息 审批节点:审批人意见  执行节点:scf函数执行日志
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 有权限审批该节点的uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let users: ApproveUser?

        /// 是否有权限审批该节点
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isApprove: Bool?

        /// 审批id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let approveId: String?

        /// 审批方式 0或签 1会签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let approveMethod: UInt64?

        /// 审批节点审批类型，1人工审批 2自动通过 3自动决绝 4外部审批scf
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let approveType: UInt64?

        /// 外部审批类型 scf:0或null ; CKafka:1
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callMethod: UInt64?

        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
            case nodeName = "NodeName"
            case nodeType = "NodeType"
            case nextNode = "NextNode"
            case opinion = "Opinion"
            case scfName = "ScfName"
            case subStatus = "SubStatus"
            case approvedUin = "ApprovedUin"
            case createTime = "CreateTime"
            case msg = "Msg"
            case users = "Users"
            case isApprove = "IsApprove"
            case approveId = "ApproveId"
            case approveMethod = "ApproveMethod"
            case approveType = "ApproveType"
            case callMethod = "CallMethod"
        }
    }
}
