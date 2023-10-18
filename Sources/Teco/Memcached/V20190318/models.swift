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

extension Memcached {
    /// 实例详细信息列表
    public struct InstanceListInfo: TCInputModel, TCOutputModel {
        /// 实例修改时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$modTimeStamp`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var modTimeStamp: Date?

        /// 实例隔离时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$isolateTimeStamp`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var isolateTimeStamp: Date?

        /// 实例是否设置自动续费标识，1：设置自动续费；0：未设置自动续费
        public let autoRenewFlag: Int64?

        /// 仓库ID
        public let setId: Int64?

        /// 实例当前状态，0：发货中；1：运行中；2：创建失败；4：销毁中；5：隔离中；6：下线中
        public let status: Int64?

        /// 实例内置ID
        public let cmemId: Int64?

        /// 实例关联的标签信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [TagInfo]?

        /// 实例ID
        public let instanceId: String?

        /// 地域id 1--广州 4--上海 5-- 香港 6--多伦多 7--上海金融 8--北京 9-- 新加坡 11--深圳金融 15--美西（硅谷）16--成都 17--德国 18--韩国 19--重庆 21--印度 22--美东（弗吉尼亚）23--泰国   25--日本
        public let regionId: Int64?

        /// 实例描述信息
        public let instanceDesc: String?

        /// 过期策略
        public let expire: Int64?

        /// vpc网络下子网id 如：46315
        public let subnetId: Int64?

        /// 项目ID
        public let projectId: Int64?

        /// 实例创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$addTimeStamp`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var addTimeStamp: Date?

        /// 区域ID
        public let zoneId: Int64?

        /// 计费模式：0-按量计费，1-包年包月
        public let payMode: Int64?

        /// vpc网络id 如：75101
        public let vpcId: Int64?

        /// 实例名称
        public let instanceName: String?

        /// 实例截止时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$deadlineTimeStamp`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deadlineTimeStamp: Date?

        /// vpc网络id 如：vpc-fk33jsf43kgv
        public let uniqVpcId: String?

        /// 实例vip
        public let vip: String?

        /// vpc网络下子网id 如：subnet-fd3j6l35mm0
        public let uniqSubnetId: String?

        /// 用户AppID
        public let appId: Int64?

        /// 实例端口号
        public let vport: Int64?

        public init(modTimeStamp: Date? = nil, isolateTimeStamp: Date? = nil, autoRenewFlag: Int64? = nil, setId: Int64? = nil, status: Int64? = nil, cmemId: Int64? = nil, tags: [TagInfo]? = nil, instanceId: String? = nil, regionId: Int64? = nil, instanceDesc: String? = nil, expire: Int64? = nil, subnetId: Int64? = nil, projectId: Int64? = nil, addTimeStamp: Date? = nil, zoneId: Int64? = nil, payMode: Int64? = nil, vpcId: Int64? = nil, instanceName: String? = nil, deadlineTimeStamp: Date? = nil, uniqVpcId: String? = nil, vip: String? = nil, uniqSubnetId: String? = nil, appId: Int64? = nil, vport: Int64? = nil) {
            self._modTimeStamp = .init(wrappedValue: modTimeStamp)
            self._isolateTimeStamp = .init(wrappedValue: isolateTimeStamp)
            self.autoRenewFlag = autoRenewFlag
            self.setId = setId
            self.status = status
            self.cmemId = cmemId
            self.tags = tags
            self.instanceId = instanceId
            self.regionId = regionId
            self.instanceDesc = instanceDesc
            self.expire = expire
            self.subnetId = subnetId
            self.projectId = projectId
            self._addTimeStamp = .init(wrappedValue: addTimeStamp)
            self.zoneId = zoneId
            self.payMode = payMode
            self.vpcId = vpcId
            self.instanceName = instanceName
            self._deadlineTimeStamp = .init(wrappedValue: deadlineTimeStamp)
            self.uniqVpcId = uniqVpcId
            self.vip = vip
            self.uniqSubnetId = uniqSubnetId
            self.appId = appId
            self.vport = vport
        }

        enum CodingKeys: String, CodingKey {
            case modTimeStamp = "ModTimeStamp"
            case isolateTimeStamp = "IsolateTimeStamp"
            case autoRenewFlag = "AutoRenewFlag"
            case setId = "SetId"
            case status = "Status"
            case cmemId = "CmemId"
            case tags = "Tags"
            case instanceId = "InstanceId"
            case regionId = "RegionId"
            case instanceDesc = "InstanceDesc"
            case expire = "Expire"
            case subnetId = "SubnetId"
            case projectId = "ProjectId"
            case addTimeStamp = "AddTimeStamp"
            case zoneId = "ZoneId"
            case payMode = "PayMode"
            case vpcId = "VpcId"
            case instanceName = "InstanceName"
            case deadlineTimeStamp = "DeadlineTimeStamp"
            case uniqVpcId = "UniqVpcId"
            case vip = "Vip"
            case uniqSubnetId = "UniqSubnetId"
            case appId = "AppId"
            case vport = "Vport"
        }
    }

    /// 标签信息
    public struct TagInfo: TCInputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: String?

        public init(tagKey: String, tagValue: String? = nil) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }
}
