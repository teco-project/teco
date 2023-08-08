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

import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Rum {
    /// 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
    ///
    /// · 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
    /// · 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
    public struct Filter: TCInputModel {
        /// 一个或者多个过滤值。
        public let values: [String]?

        /// 过滤键的名称。
        public let name: String?

        public init(values: [String]? = nil, name: String? = nil) {
            self.values = values
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case values = "Values"
            case name = "Name"
        }
    }

    /// 日志导出记录
    public struct LogExport: TCOutputModel {
        /// 日志导出路径
        public let cosPath: String

        /// 日志导出数量
        public let count: Int64

        /// 日志导出任务创建时间
        public let createTime: String

        /// 日志导出任务ID
        public let exportID: String

        /// 日志导出文件名
        public let fileName: String

        /// 日志文件大小
        public let fileSize: Int64

        /// 日志导出格式
        public let format: String

        /// 日志导出时间排序
        public let order: String

        /// 日志导出查询语句
        public let query: String

        /// 日志导出起始时间
        public let startTime: String

        /// 日志导出结束时间
        public let endTime: String

        /// 日志下载状态。Queuing:导出正在排队中，Processing:导出正在进行中，Complete:导出完成，Failed:导出失败，Expired:日志导出已过期（三天有效期）。
        public let status: String

        enum CodingKeys: String, CodingKey {
            case cosPath = "CosPath"
            case count = "Count"
            case createTime = "CreateTime"
            case exportID = "ExportID"
            case fileName = "FileName"
            case fileSize = "FileSize"
            case format = "Format"
            case order = "Order"
            case query = "Query"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case status = "Status"
        }
    }

    /// 项目接口限制类型
    public struct ProjectLimit: TCInputModel, TCOutputModel {
        /// 接口
        public let projectInterface: String

        /// 上报率
        public let reportRate: Int64

        /// 上报类型 1：上报率  2：上报量限制
        public let reportType: Int64

        /// 主键ID
        public let id: Int64?

        /// 项目ID
        public let projectID: Int64?

        public init(projectInterface: String, reportRate: Int64, reportType: Int64, id: Int64? = nil, projectID: Int64? = nil) {
            self.projectInterface = projectInterface
            self.reportRate = reportRate
            self.reportType = reportType
            self.id = id
            self.projectID = projectID
        }

        enum CodingKeys: String, CodingKey {
            case projectInterface = "ProjectInterface"
            case reportRate = "ReportRate"
            case reportType = "ReportType"
            case id = "ID"
            case projectID = "ProjectID"
        }
    }

    /// 发布文件列表(SOURCEMAP)
    public struct ReleaseFile: TCOutputModel {
        /// 文件版本
        public let version: String

        /// 文件唯一 key
        public let fileKey: String

        /// 文件名
        public let fileName: String

        /// 文件哈希值
        public let fileHash: String

        /// 文件 id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: Int64?

        enum CodingKeys: String, CodingKey {
            case version = "Version"
            case fileKey = "FileKey"
            case fileName = "FileName"
            case fileHash = "FileHash"
            case id = "ID"
        }
    }

    /// Rum片区信息
    public struct RumAreaInfo: TCOutputModel {
        /// 片区Id
        public let areaId: Int64

        /// 片区状态(1=有效，2=无效)
        public let areaStatus: Int64

        /// 片区名称
        public let areaName: String

        /// 片区Key
        public let areaKey: String

        /// 地域码表 id
        public let areaRegionID: String

        /// 地域码表 code 如 ap-xxx（xxx 为地域词）
        public let areaRegionCode: String

        /// 地域缩写
        public let areaAbbr: String

        enum CodingKeys: String, CodingKey {
            case areaId = "AreaId"
            case areaStatus = "AreaStatus"
            case areaName = "AreaName"
            case areaKey = "AreaKey"
            case areaRegionID = "AreaRegionID"
            case areaRegionCode = "AreaRegionCode"
            case areaAbbr = "AreaAbbr"
        }
    }

    /// Rum实例信息
    public struct RumInstanceInfo: TCOutputModel {
        /// 实例状态(1=创建中，2=运行中，3=异常，4=重启中，5=停止中，6=已停止，7=已删除)
        public let instanceStatus: Int64

        /// 片区Id
        public let areaId: Int64

        /// 标签列表
        public let tags: [Tag]

        /// 实例Id
        public let instanceId: String

        /// 集群Id
        public let clusterId: Int64

        /// 实例描述
        public let instanceDesc: String

        /// 计费状态(1=使用中，2=已过期，3=已销毁，4=分配中，5=分配失败)
        public let chargeStatus: Int64

        /// 计费类型(1=免费版，2=预付费，3=后付费)
        public let chargeType: Int64

        /// 更新时间
        public let updatedAt: String

        /// 数据保留时间(天)
        public let dataRetentionDays: Int64

        /// 实例名称
        public let instanceName: String

        /// 创建时间
        public let createdAt: String

        /// 实例类型 1:原web相关类型 2:app端类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceType: Int64?

        enum CodingKeys: String, CodingKey {
            case instanceStatus = "InstanceStatus"
            case areaId = "AreaId"
            case tags = "Tags"
            case instanceId = "InstanceId"
            case clusterId = "ClusterId"
            case instanceDesc = "InstanceDesc"
            case chargeStatus = "ChargeStatus"
            case chargeType = "ChargeType"
            case updatedAt = "UpdatedAt"
            case dataRetentionDays = "DataRetentionDays"
            case instanceName = "InstanceName"
            case createdAt = "CreatedAt"
            case instanceType = "InstanceType"
        }
    }

    /// Rum 项目信息
    public struct RumProject: TCOutputModel {
        /// 项目名
        public let name: String

        /// 创建者 id
        public let creator: String

        /// 实例 id
        public let instanceID: String

        /// 项目类型
        public let type: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 项目仓库地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let repo: String?

        /// 项目网址地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let url: String?

        /// 项目采样频率
        public let rate: String

        /// 项目唯一key（长度 12 位）
        public let key: String

        /// 是否开启url聚类
        public let enableURLGroup: Int64

        /// 实例名
        public let instanceName: String

        /// 项目 ID
        public let id: Int64

        /// 实例 key
        public let instanceKey: String

        /// 项目描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let desc: String?

        /// 是否星标  1:是 0:否
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isStar: Int64?

        /// 项目状态(1 创建中，2 运行中，3 异常，4 重启中，5 停止中，6 已停止， 7 销毁中，8 已销毁)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectStatus: Int64?

        /// 日志接入点，用户忽略。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accessPoint: String?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case creator = "Creator"
            case instanceID = "InstanceID"
            case type = "Type"
            case createTime = "CreateTime"
            case repo = "Repo"
            case url = "URL"
            case rate = "Rate"
            case key = "Key"
            case enableURLGroup = "EnableURLGroup"
            case instanceName = "InstanceName"
            case id = "ID"
            case instanceKey = "InstanceKey"
            case desc = "Desc"
            case isStar = "IsStar"
            case projectStatus = "ProjectStatus"
            case accessPoint = "AccessPoint"
        }
    }

    /// rum 日志对象
    public struct RumPvInfo: TCOutputModel {
        /// 项目ID
        public let projectId: Int64

        /// pv访问量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pv: String?

        /// 时间
        public let createTime: String

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pv = "Pv"
            case createTime = "CreateTime"
        }
    }

    /// RumUv 访问量
    public struct RumUvInfo: TCOutputModel {
        /// 项目ID
        public let projectId: Int64

        /// uv访问量
        public let uv: String

        /// 创建时间
        public let createTime: String

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case uv = "Uv"
            case createTime = "CreateTime"
        }
    }

    /// project Score分数实体
    public struct ScoreInfo: TCOutputModel {
        /// duration
        public let staticDuration: String

        /// pv
        public let pagePv: String

        /// 失败
        public let apiFail: String

        /// 请求
        public let apiNum: String

        /// fail
        public let staticFail: String

        /// 项目id
        public let projectID: Int64

        /// uv
        public let pageUv: String

        /// 请求次数
        public let apiDuration: String

        /// 分数
        public let score: String

        /// error
        public let pageError: String

        /// num
        public let staticNum: String

        /// num
        public let recordNum: Int64

        /// Duration
        public let pageDuration: String

        /// 时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        enum CodingKeys: String, CodingKey {
            case staticDuration = "StaticDuration"
            case pagePv = "PagePv"
            case apiFail = "ApiFail"
            case apiNum = "ApiNum"
            case staticFail = "StaticFail"
            case projectID = "ProjectID"
            case pageUv = "PageUv"
            case apiDuration = "ApiDuration"
            case score = "Score"
            case pageError = "PageError"
            case staticNum = "StaticNum"
            case recordNum = "RecordNum"
            case pageDuration = "PageDuration"
            case createTime = "CreateTime"
        }
    }

    /// 标签
    public struct Tag: TCInputModel, TCOutputModel {
        /// 标签key
        public let key: String

        /// 标签value
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

    /// 白名单
    public struct Whitelist: TCOutputModel {
        /// 备注
        public let remark: String

        /// 实例ID
        public let instanceID: String

        /// 截止时间
        public let ttl: String

        /// 白名单自增ID
        public let id: String

        /// 业务唯一标识
        public let whitelistUin: String

        /// 创建者ID
        public let createUser: String

        /// aid标识
        public let aid: String

        /// 创建时间
        public let createTime: String

        enum CodingKeys: String, CodingKey {
            case remark = "Remark"
            case instanceID = "InstanceID"
            case ttl = "Ttl"
            case id = "ID"
            case whitelistUin = "WhitelistUin"
            case createUser = "CreateUser"
            case aid = "Aid"
            case createTime = "CreateTime"
        }
    }
}
