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

extension Cat {
    /// 单条详细拨测数据
    public struct DetailedSingleDataDefine: TCOutputModel {
        /// 拨测时间戳
        public let probeTime: UInt64

        /// 储存所有string类型字段
        public let labels: [Label]

        /// 储存所有float类型字段
        public let fields: [Field]

        enum CodingKeys: String, CodingKey {
            case probeTime = "ProbeTime"
            case labels = "Labels"
            case fields = "Fields"
        }
    }

    /// 储存float类型字段
    public struct Field: TCOutputModel {
        /// 自定义字段编号
        public let id: UInt64

        /// 自定义字段名称/说明
        public let name: String

        /// 字段值
        public let value: Float

        enum CodingKeys: String, CodingKey {
            case id = "ID"
            case name = "Name"
            case value = "Value"
        }
    }

    /// 健值对
    public struct KeyValuePair: TCInputModel {
        /// 健
        public let key: String

        /// 值
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    /// 保存string类型字段
    public struct Label: TCOutputModel {
        /// 自定义字段编号
        public let id: UInt64

        /// 自定义字段名称/说明
        public let name: String

        /// 字段值
        public let value: String

        enum CodingKeys: String, CodingKey {
            case id = "ID"
            case name = "Name"
            case value = "Value"
        }
    }

    /// 探测节点
    public struct NodeDefine: TCOutputModel {
        /// 节点名称
        public let name: String

        /// 节点代码
        public let code: String

        /// 节点类型
        /// <li> 1 = IDC </li>
        /// <li> 2 = LastMile </li>
        /// <li> 3 = Mobile </li>
        public let type: Int64

        /// 网络服务商
        public let netService: String

        /// 区域
        public let district: String

        /// 城市
        public let city: String

        /// IP 类型
        /// <li> 1 = IPv4 </li>
        /// <li> 2 = IPv6 </li>
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipType: Int64?

        /// 区域
        /// <li> 1 = 中国大陆 </li>
        /// <li> 2 = 港澳台 </li>
        /// <li> 3 = 国外 </li>
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let location: Int64?

        /// 节点类型  如果为base 则为可用性拨测点，为空则为高级拨测点
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeType: String?

        /// 节点状态：1-运行,2-下线
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeDefineStatus: UInt64?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case code = "Code"
            case type = "Type"
            case netService = "NetService"
            case district = "District"
            case city = "City"
            case ipType = "IPType"
            case location = "Location"
            case codeType = "CodeType"
            case nodeDefineStatus = "NodeDefineStatus"
        }
    }

    /// 探测节点
    public struct NodeDefineExt: TCOutputModel {
        /// 节点名称
        public let name: String

        /// 节点代码
        public let code: String

        /// 节点类型
        /// <li> 1 = IDC </li>
        /// <li> 2 = LastMile </li>
        /// <li> 3 = Mobile </li>
        public let type: Int64

        /// 网络服务商
        public let netService: String

        /// 区域
        public let district: String

        /// 城市
        public let city: String

        /// IP 类型
        /// <li> 1 = IPv4 </li>
        /// <li> 2 = IPv6 </li>
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipType: Int64?

        /// 区域
        /// <li> 1 = 中国大陆 </li>
        /// <li> 2 = 港澳台 </li>
        /// <li> 3 = 境外 </li>
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let location: Int64?

        /// 节点类型  如果为base 则为可用性拨测点，为空则为高级拨测点
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeType: String?

        /// 节点支持的任务类型。1: 页面性能 2: 文件上传 3: 文件下载 4: 端口性能 5: 网络质量 6: 音视频体验
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskTypes: [Int64]?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case code = "Code"
            case type = "Type"
            case netService = "NetService"
            case district = "District"
            case city = "City"
            case ipType = "IPType"
            case location = "Location"
            case codeType = "CodeType"
            case taskTypes = "TaskTypes"
        }
    }

    /// 拨测任务
    public struct ProbeTask: TCOutputModel {
        /// 任务名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 任务 ID
        public let taskId: String

        /// 任务类型
        public let taskType: Int64

        /// 拨测节点列表
        public let nodes: [String]

        /// 拨测间隔
        public let interval: Int64

        /// 拨测参数
        public let parameters: String

        /// 任务状态
        public let status: Int64

        /// 目标地址
        public let targetAddress: String

        /// 付费模式
        /// <li>1 = 试用版本</li>
        /// <li> 2 = 付费版本 </li>
        public let payMode: Int64

        /// 订单状态
        /// <li>1 = 正常</li>
        /// <li> 2 = 欠费 </li>
        public let orderState: Int64

        /// 任务分类
        /// <li>1 = PC</li>
        /// <li> 2 = Mobile </li>
        public let taskCategory: Int64

        /// 创建时间
        public let createdAt: String

        /// 定时任务cron表达式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cron: String?

        /// 定时任务启动状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cronState: Int64?

        /// 任务当前绑定的标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagInfoList: [KeyValuePair]?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case taskId = "TaskId"
            case taskType = "TaskType"
            case nodes = "Nodes"
            case interval = "Interval"
            case parameters = "Parameters"
            case status = "Status"
            case targetAddress = "TargetAddress"
            case payMode = "PayMode"
            case orderState = "OrderState"
            case taskCategory = "TaskCategory"
            case createdAt = "CreatedAt"
            case cron = "Cron"
            case cronState = "CronState"
            case tagInfoList = "TagInfoList"
        }
    }

    /// 拨测任务基础配置
    public struct ProbeTaskBasicConfiguration: TCInputModel {
        /// 拨测任务名称
        public let name: String

        /// 拨测目标地址
        public let targetAddress: String

        public init(name: String, targetAddress: String) {
            self.name = name
            self.targetAddress = targetAddress
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case targetAddress = "TargetAddress"
        }
    }

    /// 资源的标签，通过标签对资源进行划分用于支持细粒度的鉴权、分账等场景
    public struct Tag: TCInputModel {
        /// key
        public let tagKey: String

        /// value
        public let tagValue: String

        public init(tagKey: String, tagValue: String) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }

    /// 任务执行结果
    public struct TaskResult: TCOutputModel {
        /// 任务 ID
        public let taskId: String

        /// 是否成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let success: Bool?

        /// 错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMessage: String?

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case success = "Success"
            case errorMessage = "ErrorMessage"
        }
    }
}
