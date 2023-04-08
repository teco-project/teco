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

extension Cloudhsm {
    /// 告警策略
    public struct AlarmPolicy: TCOutputModel {
        /// 用户账号
        public let uin: String?

        /// 告警事件
        public let event: String?

        /// 告警阈值
        public let limit: Int64?

        /// 告警策略是否生效，0：停用，1：启用
        public let status: Int64?

        /// 在这个时间后才允许发送告警
        public let beginTime: String?

        /// 在这个时间前才允许发送告警
        public let endTime: String?

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case event = "Event"
            case limit = "Limit"
            case status = "Status"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
        }
    }

    /// 设备厂商信息
    public struct DeviceInfo: TCOutputModel {
        /// 厂商名称
        public let manufacturer: String

        /// 此厂商旗下的设备信息列表
        public let hsmTypes: [HsmInfo]

        enum CodingKeys: String, CodingKey {
            case manufacturer = "Manufacturer"
            case hsmTypes = "HsmTypes"
        }
    }

    /// 支持的加密机类型信息
    public struct HsmInfo: TCOutputModel {
        /// 加密机型号
        public let model: String

        /// 此类型的加密机所支持的VSM类型列表
        public let vsmTypes: [VsmInfo]

        /// 加密机母机类型：virtualization、GHSM、EHSM、SHSM
        public let hsmType: String?

        enum CodingKeys: String, CodingKey {
            case model = "Model"
            case vsmTypes = "VsmTypes"
            case hsmType = "HsmType"
        }
    }

    /// 资源信息
    public struct ResourceInfo: TCOutputModel {
        /// 资源Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceId: String?

        /// 资源名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceName: String?

        /// 资源状态，1-正常，2-隔离，3-销毁
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 资源IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vip: String?

        /// 资源所属Vpc
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcId: String?

        /// 资源所属子网
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetId: String?

        /// 资源所属HSM规格
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let model: String?

        /// 云加密机类型id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vsmType: Int64?

        /// 地域Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let regionId: Int64?

        /// 区域Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zoneId: Int64?

        /// 过期时间（Epoch Unix Timestamp）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expireTime: Int64?

        /// 地域名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let regionName: String?

        /// 区域名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zoneName: String?

        /// 实例的安全组列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sgList: [SgUnit]?

        /// 子网名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetName: String?

        /// 当前实例是否已经过期
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expired: Bool?

        /// 为正数表示实例距离过期时间还剩余多少秒，为负数表示已经过期多少秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remainSeconds: Int64?

        /// Vpc名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcName: String?

        /// 创建者Uin账号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createUin: String?

        /// 自动续费状态标识， 0-手动续费，1-自动续费，2-到期不续
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let renewFlag: Int64?

        /// 标签列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        /// 厂商
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let manufacturer: String?

        /// 告警状态，0：停用，1：启用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alarmStatus: Int64?

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case resourceName = "ResourceName"
            case status = "Status"
            case vip = "Vip"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case model = "Model"
            case vsmType = "VsmType"
            case regionId = "RegionId"
            case zoneId = "ZoneId"
            case expireTime = "ExpireTime"
            case regionName = "RegionName"
            case zoneName = "ZoneName"
            case sgList = "SgList"
            case subnetName = "SubnetName"
            case expired = "Expired"
            case remainSeconds = "RemainSeconds"
            case vpcName = "VpcName"
            case createUin = "CreateUin"
            case renewFlag = "RenewFlag"
            case tags = "Tags"
            case manufacturer = "Manufacturer"
            case alarmStatus = "AlarmStatus"
        }
    }

    /// 安全组基础信息
    public struct SgUnit: TCOutputModel {
        /// 安全组Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sgId: String?

        /// 安全组名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sgName: String?

        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sgRemark: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        enum CodingKeys: String, CodingKey {
            case sgId = "SgId"
            case sgName = "SgName"
            case sgRemark = "SgRemark"
            case createTime = "CreateTime"
        }
    }

    /// Subnet对象
    public struct Subnet: TCOutputModel {
        /// VPC实例ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcId: String?

        /// 子网实例ID，例如：subnet-bthucmmy。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetId: String?

        /// 子网名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetName: String?

        /// 子网的 IPv4 CIDR。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cidrBlock: String?

        /// 创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdTime: String?

        /// 可用IP数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let availableIpAddressCount: Int64?

        /// 子网的 IPv6 CIDR。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipv6CidrBlock: String?

        /// 总IP数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalIpAddressCount: Int64?

        /// 是否为默认Subnet
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isDefault: Bool?

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case subnetName = "SubnetName"
            case cidrBlock = "CidrBlock"
            case createdTime = "CreatedTime"
            case availableIpAddressCount = "AvailableIpAddressCount"
            case ipv6CidrBlock = "Ipv6CidrBlock"
            case totalIpAddressCount = "TotalIpAddressCount"
            case isDefault = "IsDefault"
        }
    }

    /// 标签
    public struct Tag: TCInputModel, TCOutputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
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

    /// 标签过滤参数
    public struct TagFilter: TCInputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: [String]?

        public init(tagKey: String, tagValue: [String]? = nil) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }

    /// 安全组策略
    public struct UsgPolicy: TCOutputModel {
        /// cidr格式地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ip: String?

        /// 安全组id代表的地址集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: String?

        /// 地址组id代表的地址集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let addressModule: String?

        /// 协议
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let proto: String?

        /// 端口
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let port: String?

        /// 服务组id代表的协议和端口集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceModule: String?

        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let desc: String?

        /// 匹配后行为:ACCEPT/DROP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let action: String?

        enum CodingKeys: String, CodingKey {
            case ip = "Ip"
            case id = "Id"
            case addressModule = "AddressModule"
            case proto = "Proto"
            case port = "Port"
            case serviceModule = "ServiceModule"
            case desc = "Desc"
            case action = "Action"
        }
    }

    /// 安全组规则详情
    public struct UsgRuleDetail: TCOutputModel {
        /// 入站规则
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inBound: [UsgPolicy]?

        /// 出站规则
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let outBound: [UsgPolicy]?

        /// 安全组Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sgId: String?

        /// 安全组名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sgName: String?

        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sgRemark: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let version: Int64?

        enum CodingKeys: String, CodingKey {
            case inBound = "InBound"
            case outBound = "OutBound"
            case sgId = "SgId"
            case sgName = "SgName"
            case sgRemark = "SgRemark"
            case createTime = "CreateTime"
            case version = "Version"
        }
    }

    /// VPC对象
    public struct Vpc: TCOutputModel {
        /// Vpc名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcName: String?

        /// VpcId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcId: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdTime: String?

        /// 是否为默认VPC
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isDefault: Bool?

        enum CodingKeys: String, CodingKey {
            case vpcName = "VpcName"
            case vpcId = "VpcId"
            case createdTime = "CreatedTime"
            case isDefault = "IsDefault"
        }
    }

    /// 支持的Vsm类型信息
    public struct VsmInfo: TCOutputModel {
        /// VSM类型名称
        public let typeName: String

        /// VSM类型值
        public let typeID: Int64

        enum CodingKeys: String, CodingKey {
            case typeName = "TypeName"
            case typeID = "TypeID"
        }
    }
}
